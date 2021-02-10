using System.Collections;
using static Sample.API.Runtime.Extensions;

namespace Sample.API.Models
{
    // This file is a workaround to make Any behave like a Hashtable--without this file,
    // the Any class always serializes/deserializes to "{}".
    // There is the tracking issue here: https://github.com/Azure/autorest.powershell/issues/668
    // I got the idea for the workaround from here: https://github.com/Azure/azure-powershell/blob/920321fe76d73fbf4d0e0ffd23761cc894bb00cf/src/ConnectedMachine/custom/MachineExtensionPropertiesSettings.cs
    public partial class Any : Hashtable
    {
        partial void AfterDeserializeDictionary(IDictionary content)
        {
            foreach (var key in content.Keys)
            {
                this[key] = content[key];
            }
        }

        partial void AfterToJson(ref Sample.API.Runtime.Json.JsonObject container)
        {
            foreach (var key in this.Keys)
            {
                container.Add(
                    key.ToString(),
                    Runtime.JsonSerializable.ToJsonValue(this[key]));
            }
        }

        partial void AfterFromJson(Sample.API.Runtime.Json.JsonObject json)
        {
            foreach (var key in json.Keys)
            {
                this[key] = json[key].ToValue();
            }
        }
    }
}