using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Boating.Skill.Lore.RNBoatingSkillLore
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNBoatingSkillLoreModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNBoatingSkillLoreModule"/>.
        /// </summary>
        internal RNBoatingSkillLoreModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNBoatingSkillLore";
            }
        }
    }
}
