-- ============================================================================
-- Define armour values and key information here

--
-- ============================================================================


-- completely skip vehicles with these in their name
local vehiclesPass =
{
    "Burnt",
    "Smashed",
}

local scaleZ = 1
local rotateZ = nil

local modelSets =
{
    ["CarNormal"] =
    {
        ["Armour_Bullbar"] =
        {
            {"Wood_Bullbar",  "CarNormal_Bone_Bullbar", {0.0, -0.082, 1.299}, rotateZ, scaleZ},
            {"Bone_Bullbar",  "CarNormal_Bone_Bullbar", {0.0, -0.082, 1.299}, rotateZ, scaleZ},
            {"Scrap_Bullbar", "CarNormal_Bone_Bullbar", {0.0, -0.082, 1.299}, rotateZ, scaleZ},
            {"Light_Bullbar", "CarNormal_Bone_Bullbar", {0.0, -0.082, 1.299}, rotateZ, scaleZ},
            {"Heavy_Bullbar", "CarNormal_Bone_Bullbar", {0.0, -0.082, 1.299}, rotateZ, scaleZ},
        },

        ["Armour_Hood"] =
        {
            {"Wood_HoodArmour",  "CarNormal_Bone_HoodArmour", {0.0, 0.066, 0.819}, rotateZ, scaleZ},
            {"Bone_HoodArmour",  "CarNormal_Bone_HoodArmour", {0.0, 0.066, 0.819}, rotateZ, scaleZ},
            {"Scrap_HoodArmour", "CarNormal_Bone_HoodArmour", {0.0, 0.066, 0.819}, rotateZ, scaleZ},
            {"Light_HoodArmour", "CarNormal_Bone_HoodArmour", {0.0, 0.066, 0.819}, rotateZ, scaleZ},
            {"Heavy_HoodArmour", "CarNormal_Bone_HoodArmour", {0.0, 0.066, 0.819}, rotateZ, scaleZ},
        },

        ["Armour_Windshield"] =
        {
            {"Wood_WindshieldArmour",  "CarNormal_Bone_WindshieldArmour", {0.0, 0.192, 0.341}, rotateZ, scaleZ},
            {"Bone_WindshieldArmour",  "CarNormal_Bone_WindshieldArmour", {0.0, 0.192, 0.341}, rotateZ, scaleZ},
            {"Scrap_WindshieldArmour", "CarNormal_Bone_WindshieldArmour", {0.0, 0.192, 0.341}, rotateZ, scaleZ},
            {"Light_WindshieldArmour", "CarNormal_Bone_WindshieldArmour", {0.0, 0.192, 0.341}, rotateZ, scaleZ},
            {"Heavy_WindshieldArmour", "CarNormal_Bone_WindshieldArmour", {0.0, 0.192, 0.341}, rotateZ, scaleZ},
        },

        ["Armour_Trunk"] =
        {
            {"Wood_TrunkArmour",  "CarNormal_Bone_TrunkArmour", {0.0, -0.059, -1.148}, rotateZ, scaleZ},
            {"Bone_TrunkArmour",  "CarNormal_Bone_TrunkArmour", {0.0, -0.059, -1.148}, rotateZ, scaleZ},
            {"Scrap_TrunkArmour", "CarNormal_Bone_TrunkArmour", {0.0, -0.059, -1.148}, rotateZ, scaleZ},
            {"Light_TrunkArmour", "CarNormal_Bone_TrunkArmour", {0.0, -0.059, -1.148}, rotateZ, scaleZ},
            {"Heavy_TrunkArmour", "CarNormal_Bone_TrunkArmour", {0.0, -0.059, -1.148}, rotateZ, scaleZ},
        },

        ["Armour_WindshieldRear"] =
        {
            {"Wood_WindshieldRearArmour",  "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.214, -0.632}, rotateZ, scaleZ},
            {"Bone_WindshieldRearArmour",  "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.214, -0.632}, rotateZ, scaleZ},
            {"Scrap_WindshieldRearArmour", "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.214, -0.632}, rotateZ, scaleZ},
            {"Light_WindshieldRearArmour", "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.214, -0.632}, rotateZ, scaleZ},
            {"Heavy_WindshieldRearArmour", "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.214, -0.632}, rotateZ, scaleZ},
        },

        ["Armour_DoorFrontLeft"] =
        {
            {"Wood_DoorFrontLeftArmour",  "CarNormal_Bone_DoorFrontLeftArmour", {0.445, -0.066, 0.132}, rotateZ, scaleZ},
            {"Bone_DoorFrontLeftArmour",  "CarNormal_Bone_DoorFrontLeftArmour", {0.445, -0.066, 0.132}, rotateZ, scaleZ},
            {"Scrap_DoorFrontLeftArmour", "CarNormal_Bone_DoorFrontLeftArmour", {0.445, -0.066, 0.132}, rotateZ, scaleZ},
            {"Light_DoorFrontLeftArmour", "CarNormal_Bone_DoorFrontLeftArmour", {0.445, -0.066, 0.132}, rotateZ, scaleZ},
            {"Heavy_DoorFrontLeftArmour", "CarNormal_Bone_DoorFrontLeftArmour", {0.445, -0.066, 0.132}, rotateZ, scaleZ},
        },

        ["Armour_DoorFrontRight"] =
        {
            {"Wood_DoorFrontRightArmour",  "CarNormal_Bone_DoorFrontRightArmour", {-0.445, -0.066, 0.132}, rotateZ, scaleZ},
            {"Bone_DoorFrontRightArmour",  "CarNormal_Bone_DoorFrontRightArmour", {-0.445, -0.066, 0.132}, rotateZ, scaleZ},
            {"Scrap_DoorFrontRightArmour", "CarNormal_Bone_DoorFrontRightArmour", {-0.445, -0.066, 0.132}, rotateZ, scaleZ},
            {"Light_DoorFrontRightArmour", "CarNormal_Bone_DoorFrontRightArmour", {-0.445, -0.066, 0.132}, rotateZ, scaleZ},
            {"Heavy_DoorFrontRightArmour", "CarNormal_Bone_DoorFrontRightArmour", {-0.445, -0.066, 0.132}, rotateZ, scaleZ},
        },

        ["Armour_WindowFrontLeft"] =
        {
            {"Wood_WindowFrontLeftArmour",  "CarNormal_Bone_WindowFrontLeftArmour", {0.357, 0.181, 0.115}, rotateZ, scaleZ},
            {"Bone_WindowFrontLeftArmour",  "CarNormal_Bone_WindowFrontLeftArmour", {0.357, 0.181, 0.115}, rotateZ, scaleZ},
            {"Scrap_WindowFrontLeftArmour", "CarNormal_Bone_WindowFrontLeftArmour", {0.357, 0.181, 0.115}, rotateZ, scaleZ},
            {"Light_WindowFrontLeftArmour", "CarNormal_Bone_WindowFrontLeftArmour", {0.357, 0.181, 0.115}, rotateZ, scaleZ},
            {"Heavy_WindowFrontLeftArmour", "CarNormal_Bone_WindowFrontLeftArmour", {0.357, 0.181, 0.115}, rotateZ, scaleZ},
        },

        ["Armour_WindowFrontRight"] =
        {
            {"Wood_WindowFrontRightArmour",  "CarNormal_Bone_WindowFrontRightArmour", {-0.357, 0.181, 0.115}, rotateZ, scaleZ},
            {"Bone_WindowFrontRightArmour",  "CarNormal_Bone_WindowFrontRightArmour", {-0.357, 0.181, 0.115}, rotateZ, scaleZ},
            {"Scrap_WindowFrontRightArmour", "CarNormal_Bone_WindowFrontRightArmour", {-0.357, 0.181, 0.115}, rotateZ, scaleZ},
            {"Light_WindowFrontRightArmour", "CarNormal_Bone_WindowFrontRightArmour", {-0.357, 0.181, 0.115}, rotateZ, scaleZ},
            {"Heavy_WindowFrontRightArmour", "CarNormal_Bone_WindowFrontRightArmour", {-0.357, 0.181, 0.115}, rotateZ, scaleZ},
        },

        ["Armour_DoorRearLeft"] =
        {
            {"Wood_DoorRearLeftArmour",  "CarNormal_Bone_DoorRearLeftArmour", {0.445, -0.066, -0.286}, rotateZ, scaleZ},
            {"Bone_DoorRearLeftArmour",  "CarNormal_Bone_DoorRearLeftArmour", {0.445, -0.066, -0.286}, rotateZ, scaleZ},
            {"Scrap_DoorRearLeftArmour", "CarNormal_Bone_DoorRearLeftArmour", {0.445, -0.066, -0.286}, rotateZ, scaleZ},
            {"Light_DoorRearLeftArmour", "CarNormal_Bone_DoorRearLeftArmour", {0.445, -0.066, -0.286}, rotateZ, scaleZ},
            {"Heavy_DoorRearLeftArmour", "CarNormal_Bone_DoorRearLeftArmour", {0.445, -0.066, -0.286}, rotateZ, scaleZ},
        },

        ["Armour_DoorRearRight"] =
        {
            {"Wood_DoorRearRightArmour",  "CarNormal_Bone_DoorRearRightArmour", {-0.445, -0.066, -0.286}, rotateZ, scaleZ},
            {"Bone_DoorRearRightArmour",  "CarNormal_Bone_DoorRearRightArmour", {-0.445, -0.066, -0.286}, rotateZ, scaleZ},
            {"Scrap_DoorRearRightArmour", "CarNormal_Bone_DoorRearRightArmour", {-0.445, -0.066, -0.286}, rotateZ, scaleZ},
            {"Light_DoorRearRightArmour", "CarNormal_Bone_DoorRearRightArmour", {-0.445, -0.066, -0.286}, rotateZ, scaleZ},
            {"Heavy_DoorRearRightArmour", "CarNormal_Bone_DoorRearRightArmour", {-0.445, -0.066, -0.286}, rotateZ, scaleZ},
        },

        ["Armour_WindowRearLeft"] =
        {
            {"Wood_WindowRearLeftArmour",  "CarNormal_Bone_WindowRearLeftArmour", {0.357, 0.181, -0.236}, rotateZ, scaleZ},
            {"Bone_WindowRearLeftArmour",  "CarNormal_Bone_WindowRearLeftArmour", {0.357, 0.181, -0.236}, rotateZ, scaleZ},
            {"Scrap_WindowRearLeftArmour", "CarNormal_Bone_WindowRearLeftArmour", {0.357, 0.181, -0.236}, rotateZ, scaleZ},
            {"Light_WindowRearLeftArmour", "CarNormal_Bone_WindowRearLeftArmour", {0.357, 0.181, -0.236}, rotateZ, scaleZ},
            {"Heavy_WindowRearLeftArmour", "CarNormal_Bone_WindowRearLeftArmour", {0.357, 0.181, -0.236}, rotateZ, scaleZ},
        },

        ["Armour_WindowRearRight"] =
        {
            {"Wood_WindowRearRightArmour",  "CarNormal_Bone_WindowRearRightArmour", {-0.357, 0.181, -0.236}, rotateZ, scaleZ},
            {"Bone_WindowRearRightArmour",  "CarNormal_Bone_WindowRearRightArmour", {-0.357, 0.181, -0.236}, rotateZ, scaleZ},
            {"Scrap_WindowRearRightArmour", "CarNormal_Bone_WindowRearRightArmour", {-0.357, 0.181, -0.236}, rotateZ, scaleZ},
            {"Light_WindowRearRightArmour", "CarNormal_Bone_WindowRearRightArmour", {-0.357, 0.181, -0.236}, rotateZ, scaleZ},
            {"Heavy_WindowRearRightArmour", "CarNormal_Bone_WindowRearRightArmour", {-0.357, 0.181, -0.236}, rotateZ, scaleZ},
        },

        ["Storage_RoofRack"] =
        {
            {"Wood_RoofRack",  "CarNormal_Bone_RoofRack", {0.0, 0.34, -0.132}, rotateZ, scaleZ},
            {"Bone_RoofRack",  "CarNormal_Bone_RoofRack", {0.0, 0.34, -0.132}, rotateZ, scaleZ},
            {"Scrap_RoofRack", "CarNormal_Bone_RoofRack", {0.0, 0.34, -0.132}, rotateZ, scaleZ},
            {"Light_RoofRack", "CarNormal_Bone_RoofRack", {0.0, 0.34, -0.132}, rotateZ, scaleZ},
            {"Heavy_RoofRack", "CarNormal_Bone_RoofRack", {0.0, 0.34, -0.132}, rotateZ, scaleZ},
        },
    },
    ["CarStationWagon"] =
    {
        ["Armour_WindshieldRear"] =
        {
            {"Wood_WindshieldRearArmour",  "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.165, -1.264}, {-22.0, 0.0, 0.0}, scaleZ},
            {"Bone_WindshieldRearArmour",  "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.165, -1.264}, {-22.0, 0.0, 0.0}, scaleZ},
            {"Scrap_WindshieldRearArmour", "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.165, -1.264}, {-22.0, 0.0, 0.0}, scaleZ},
            {"Light_WindshieldRearArmour", "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.165, -1.264}, {-22.0, 0.0, 0.0}, scaleZ},
            {"Heavy_WindshieldRearArmour", "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.165, -1.264}, {-22.0, 0.0, 0.0}, scaleZ},
        },
    },
    ["PickUpTruck"] =
    {
        ["Armour_Bullbar"] =
        {
            {"Wood_Bullbar",  "CarNormal_Bone_Bullbar", {0.0, -0.088, 1.132}, rotateZ, scaleZ},
            {"Bone_Bullbar",  "CarNormal_Bone_Bullbar", {0.0, -0.088, 1.132}, rotateZ, scaleZ},
            {"Scrap_Bullbar", "CarNormal_Bone_Bullbar", {0.0, -0.088, 1.132}, rotateZ, scaleZ},
            {"Light_Bullbar", "CarNormal_Bone_Bullbar", {0.0, -0.088, 1.132}, rotateZ, scaleZ},
            {"Heavy_Bullbar", "CarNormal_Bone_Bullbar", {0.0, -0.088, 1.132}, rotateZ, scaleZ},
        },

        ["Armour_Hood"] =
        {
            {"Wood_HoodArmour",  "CarNormal_Bone_HoodArmour", {0.0, 0.077, 0.765}, {4.0, 0.0, 0.0}, 0.9},
            {"Bone_HoodArmour",  "CarNormal_Bone_HoodArmour", {0.0, 0.077, 0.765}, {4.0, 0.0, 0.0}, 0.9},
            {"Scrap_HoodArmour", "CarNormal_Bone_HoodArmour", {0.0, 0.077, 0.765}, {4.0, 0.0, 0.0}, 0.9},
            {"Light_HoodArmour", "CarNormal_Bone_HoodArmour", {0.0, 0.077, 0.765}, {4.0, 0.0, 0.0}, 0.9},
            {"Heavy_HoodArmour", "CarNormal_Bone_HoodArmour", {0.0, 0.077, 0.765}, {4.0, 0.0, 0.0}, 0.9},
        },

        ["Armour_Windshield"] =
        {
            {"Wood_WindshieldArmour",  "CarNormal_Bone_WindshieldArmour", {0.0, 0.214, 0.418}, {12.0, 0.0, 0.0}, 0.9},
            {"Bone_WindshieldArmour",  "CarNormal_Bone_WindshieldArmour", {0.0, 0.214, 0.418}, {12.0, 0.0, 0.0}, 0.9},
            {"Scrap_WindshieldArmour", "CarNormal_Bone_WindshieldArmour", {0.0, 0.214, 0.418}, {12.0, 0.0, 0.0}, 0.9},
            {"Light_WindshieldArmour", "CarNormal_Bone_WindshieldArmour", {0.0, 0.214, 0.418}, {12.0, 0.0, 0.0}, 0.9},
            {"Heavy_WindshieldArmour", "CarNormal_Bone_WindshieldArmour", {0.0, 0.214, 0.418}, {12.0, 0.0, 0.0}, 0.9},
        },

        ["Armour_WindshieldRear"] =
        {
            {"Wood_WindshieldRearArmour",  "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.198, -0.104}, {-31.0, 0.0, 0.0}, 0.9},
            {"Bone_WindshieldRearArmour",  "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.198, -0.104}, {-31.0, 0.0, 0.0}, 0.9},
            {"Scrap_WindshieldRearArmour", "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.198, -0.104}, {-31.0, 0.0, 0.0}, 0.9},
            {"Light_WindshieldRearArmour", "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.198, -0.104}, {-31.0, 0.0, 0.0}, 0.9},
            {"Heavy_WindshieldRearArmour", "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.198, -0.104}, {-31.0, 0.0, 0.0}, 0.9},
        },

        ["Armour_DoorFrontLeft"] =
        {
            {"Wood_DoorFrontLeftArmour",  "CarNormal_Bone_DoorFrontLeftArmour", {0.401, -0.066, 0.132}, rotateZ, scaleZ},
            {"Bone_DoorFrontLeftArmour",  "CarNormal_Bone_DoorFrontLeftArmour", {0.401, -0.066, 0.132}, rotateZ, scaleZ},
            {"Scrap_DoorFrontLeftArmour", "CarNormal_Bone_DoorFrontLeftArmour", {0.401, -0.066, 0.132}, rotateZ, scaleZ},
            {"Light_DoorFrontLeftArmour", "CarNormal_Bone_DoorFrontLeftArmour", {0.401, -0.066, 0.132}, rotateZ, scaleZ},
            {"Heavy_DoorFrontLeftArmour", "CarNormal_Bone_DoorFrontLeftArmour", {0.401, -0.066, 0.132}, rotateZ, scaleZ},
        },

        ["Armour_DoorFrontRight"] =
        {
            {"Wood_DoorFrontRightArmour",  "CarNormal_Bone_DoorFrontRightArmour", {-0.401, -0.066, 0.132}, rotateZ, scaleZ},
            {"Bone_DoorFrontRightArmour",  "CarNormal_Bone_DoorFrontRightArmour", {-0.401, -0.066, 0.132}, rotateZ, scaleZ},
            {"Scrap_DoorFrontRightArmour", "CarNormal_Bone_DoorFrontRightArmour", {-0.401, -0.066, 0.132}, rotateZ, scaleZ},
            {"Light_DoorFrontRightArmour", "CarNormal_Bone_DoorFrontRightArmour", {-0.401, -0.066, 0.132}, rotateZ, scaleZ},
            {"Heavy_DoorFrontRightArmour", "CarNormal_Bone_DoorFrontRightArmour", {-0.401, -0.066, 0.132}, rotateZ, scaleZ},
        },

        ["Armour_WindowFrontLeft"] =
        {
            {"Wood_WindowFrontLeftArmour",  "CarNormal_Bone_WindowFrontLeftArmour", {0.335, 0.181, 0.128}, rotateZ, scaleZ},
            {"Bone_WindowFrontLeftArmour",  "CarNormal_Bone_WindowFrontLeftArmour", {0.335, 0.181, 0.128}, rotateZ, scaleZ},
            {"Scrap_WindowFrontLeftArmour", "CarNormal_Bone_WindowFrontLeftArmour", {0.335, 0.181, 0.128}, rotateZ, scaleZ},
            {"Light_WindowFrontLeftArmour", "CarNormal_Bone_WindowFrontLeftArmour", {0.335, 0.181, 0.128}, rotateZ, scaleZ},
            {"Heavy_WindowFrontLeftArmour", "CarNormal_Bone_WindowFrontLeftArmour", {0.335, 0.181, 0.128}, rotateZ, scaleZ},
        },

        ["Armour_WindowFrontRight"] =
        {
            {"Wood_WindowFrontRightArmour",  "CarNormal_Bone_WindowFrontRightArmour", {-0.335, 0.181, 0.128}, rotateZ, scaleZ},
            {"Bone_WindowFrontRightArmour",  "CarNormal_Bone_WindowFrontRightArmour", {-0.335, 0.181, 0.128}, rotateZ, scaleZ},
            {"Scrap_WindowFrontRightArmour", "CarNormal_Bone_WindowFrontRightArmour", {-0.335, 0.181, 0.128}, rotateZ, scaleZ},
            {"Light_WindowFrontRightArmour", "CarNormal_Bone_WindowFrontRightArmour", {-0.335, 0.181, 0.128}, rotateZ, scaleZ},
            {"Heavy_WindowFrontRightArmour", "CarNormal_Bone_WindowFrontRightArmour", {-0.335, 0.181, 0.128}, rotateZ, scaleZ},
        },
    },
    ["PickUpVan"] =
    {
        ["Armour_WindshieldRear"] =
        {
            {"Wood_WindshieldRearArmour",  "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.198, -1.082}, {-23.0, 0.0, 0.0}, 0.9},
            {"Bone_WindshieldRearArmour",  "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.198, -1.082}, {-23.0, 0.0, 0.0}, 0.9},
            {"Scrap_WindshieldRearArmour", "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.198, -1.082}, {-23.0, 0.0, 0.0}, 0.9},
            {"Light_WindshieldRearArmour", "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.198, -1.082}, {-23.0, 0.0, 0.0}, 0.9},
            {"Heavy_WindshieldRearArmour", "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.198, -1.082}, {-23.0, 0.0, 0.0}, 0.9},
        },
    },
    ["Van"] =
    {
        ["Armour_Bullbar"] =
        {
            {"Wood_Bullbar",  "CarNormal_Bone_Bullbar", {0.0, -0.196, 1.176}, {6.0, 0.0, 0.0}, scaleZ},
            {"Bone_Bullbar",  "CarNormal_Bone_Bullbar", {0.0, -0.196, 1.176}, {6.0, 0.0, 0.0}, scaleZ},
            {"Scrap_Bullbar", "CarNormal_Bone_Bullbar", {0.0, -0.196, 1.176}, {6.0, 0.0, 0.0}, scaleZ},
            {"Light_Bullbar", "CarNormal_Bone_Bullbar", {0.0, -0.196, 1.176}, {6.0, 0.0, 0.0}, scaleZ},
            {"Heavy_Bullbar", "CarNormal_Bone_Bullbar", {0.0, -0.196, 1.176}, {6.0, 0.0, 0.0}, scaleZ},
        },

        ["Armour_Windshield"] =
        {
            {"Wood_WindshieldArmour",  "CarNormal_Bone_WindshieldArmour", {0.0, 0.242, 0.732}, {10.0, 0.0, 0.0}, scaleZ},
            {"Bone_WindshieldArmour",  "CarNormal_Bone_WindshieldArmour", {0.0, 0.242, 0.732}, {10.0, 0.0, 0.0}, scaleZ},
            {"Scrap_WindshieldArmour", "CarNormal_Bone_WindshieldArmour", {0.0, 0.242, 0.732}, {10.0, 0.0, 0.0}, scaleZ},
            {"Light_WindshieldArmour", "CarNormal_Bone_WindshieldArmour", {0.0, 0.242, 0.732}, {10.0, 0.0, 0.0}, scaleZ},
            {"Heavy_WindshieldArmour", "CarNormal_Bone_WindshieldArmour", {0.0, 0.242, 0.732}, {10.0, 0.0, 0.0}, scaleZ},
        },

        ["Armour_WindshieldRear"] =
        {
            {"Wood_WindshieldRearArmour",  "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.214, -1.102}, {-25.0, 0.0, 0.0}, scaleZ},
            {"Bone_WindshieldRearArmour",  "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.214, -1.102}, {-25.0, 0.0, 0.0}, scaleZ},
            {"Scrap_WindshieldRearArmour", "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.214, -1.102}, {-25.0, 0.0, 0.0}, scaleZ},
            {"Light_WindshieldRearArmour", "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.214, -1.102}, {-25.0, 0.0, 0.0}, scaleZ},
            {"Heavy_WindshieldRearArmour", "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.214, -1.102}, {-25.0, 0.0, 0.0}, scaleZ},
        },

        ["Armour_WindowFrontLeft"] =
        {
            {"Wood_WindowFrontLeftArmour",  "CarNormal_Bone_WindowFrontLeftArmour", {0.418, 0.214, 0.478}, {0.0, 0.0, -10.0}, scaleZ},
            {"Bone_WindowFrontLeftArmour",  "CarNormal_Bone_WindowFrontLeftArmour", {0.418, 0.214, 0.478}, {0.0, 0.0, -10.0}, scaleZ},
            {"Scrap_WindowFrontLeftArmour", "CarNormal_Bone_WindowFrontLeftArmour", {0.418, 0.214, 0.478}, {0.0, 0.0, -10.0}, scaleZ},
            {"Light_WindowFrontLeftArmour", "CarNormal_Bone_WindowFrontLeftArmour", {0.418, 0.214, 0.478}, {0.0, 0.0, -10.0}, scaleZ},
            {"Heavy_WindowFrontLeftArmour", "CarNormal_Bone_WindowFrontLeftArmour", {0.418, 0.214, 0.478}, {0.0, 0.0, -10.0}, scaleZ},
        },

        ["Armour_WindowFrontRight"] =
        {
            {"Wood_WindowFrontRightArmour",  "CarNormal_Bone_WindowFrontRightArmour", {-0.418, 0.214, 0.478}, {0.0, 0.0, 10.0}, scaleZ},
            {"Bone_WindowFrontRightArmour",  "CarNormal_Bone_WindowFrontRightArmour", {-0.418, 0.214, 0.478}, {0.0, 0.0, 10.0}, scaleZ},
            {"Scrap_WindowFrontRightArmour", "CarNormal_Bone_WindowFrontRightArmour", {-0.418, 0.214, 0.478}, {0.0, 0.0, 10.0}, scaleZ},
            {"Light_WindowFrontRightArmour", "CarNormal_Bone_WindowFrontRightArmour", {-0.418, 0.214, 0.478}, {0.0, 0.0, 10.0}, scaleZ},
            {"Heavy_WindowFrontRightArmour", "CarNormal_Bone_WindowFrontRightArmour", {-0.418, 0.214, 0.478}, {0.0, 0.0, 10.0}, scaleZ},
        },
    },
    ["StepVan"] =
    {
        ["Armour_Bullbar"] =
        {
            {"Wood_Bullbar",  "CarNormal_Bone_Bullbar", {0.0, -0.242, 1.187}, rotateZ, scaleZ},
            {"Bone_Bullbar",  "CarNormal_Bone_Bullbar", {0.0, -0.242, 1.187}, rotateZ, scaleZ},
            {"Scrap_Bullbar", "CarNormal_Bone_Bullbar", {0.0, -0.242, 1.187}, rotateZ, scaleZ},
            {"Light_Bullbar", "CarNormal_Bone_Bullbar", {0.0, -0.242, 1.187}, rotateZ, scaleZ},
            {"Heavy_Bullbar", "CarNormal_Bone_Bullbar", {0.0, -0.242, 1.187}, rotateZ, scaleZ},
        },
    },
    ["SportsCar"] =
    {
        ["Armour_Bullbar"] =
        {
            {"Wood_Bullbar",  "CarNormal_Bone_Bullbar", {0.0, 0.0, 1.049}, {-5.0, 0.0, 0.0}, 0.8},
            {"Bone_Bullbar",  "CarNormal_Bone_Bullbar", {0.0, 0.0, 1.049}, {-5.0, 0.0, 0.0}, 0.8},
            {"Scrap_Bullbar", "CarNormal_Bone_Bullbar", {0.0, 0.0, 1.049}, {-5.0, 0.0, 0.0}, 0.8},
            {"Light_Bullbar", "CarNormal_Bone_Bullbar", {0.0, 0.0, 1.049}, {-5.0, 0.0, 0.0}, 0.8},
            {"Heavy_Bullbar", "CarNormal_Bone_Bullbar", {0.0, 0.0, 1.049}, {-5.0, 0.0, 0.0}, 0.8},
        },

        ["Armour_Windshield"] =
        {
            {"Wood_WindshieldArmour",  "CarNormal_Bone_WindshieldArmour", {0.0, 0.168, 0.165}, {-9.0, 0.0, 0.0}, 0.8},
            {"Bone_WindshieldArmour",  "CarNormal_Bone_WindshieldArmour", {0.0, 0.168, 0.165}, {-9.0, 0.0, 0.0}, 0.8},
            {"Scrap_WindshieldArmour", "CarNormal_Bone_WindshieldArmour", {0.0, 0.168, 0.165}, {-9.0, 0.0, 0.0}, 0.8},
            {"Light_WindshieldArmour", "CarNormal_Bone_WindshieldArmour", {0.0, 0.168, 0.165}, {-9.0, 0.0, 0.0}, 0.8},
            {"Heavy_WindshieldArmour", "CarNormal_Bone_WindshieldArmour", {0.0, 0.168, 0.165}, {-9.0, 0.0, 0.0}, 0.8},
        },

        ["Storage_RoofRack"] =
        {
            {"Wood_RoofRack",  "CarNormal_Bone_RoofRack", {0.0, 0.27, -0.225}, rotateZ, 0.8},
            {"Bone_RoofRack",  "CarNormal_Bone_RoofRack", {0.0, 0.27, -0.225}, rotateZ, 0.8},
            {"Scrap_RoofRack", "CarNormal_Bone_RoofRack", {0.0, 0.27, -0.225}, rotateZ, 0.8},
            {"Light_RoofRack", "CarNormal_Bone_RoofRack", {0.0, 0.27, -0.225}, rotateZ, 0.8},
            {"Heavy_RoofRack", "CarNormal_Bone_RoofRack", {0.0, 0.27, -0.225}, rotateZ, 0.8},
        },
    },
    ["SmallCar"] =
    {
        ["Armour_Bullbar"] =
        {
            {"Wood_Bullbar",  "CarNormal_Bone_Bullbar", {0.0, -0.02, 0.912}, rotateZ, 0.8},
            {"Bone_Bullbar",  "CarNormal_Bone_Bullbar", {0.0, -0.02, 0.912}, rotateZ, 0.8},
            {"Scrap_Bullbar", "CarNormal_Bone_Bullbar", {0.0, -0.02, 0.912}, rotateZ, 0.8},
            {"Light_Bullbar", "CarNormal_Bone_Bullbar", {0.0, -0.02, 0.912}, rotateZ, 0.8},
            {"Heavy_Bullbar", "CarNormal_Bone_Bullbar", {0.0, -0.02, 0.912}, rotateZ, 0.8},
        },

        ["Armour_Windshield"] =
        {
            {"Wood_WindshieldArmour",  "CarNormal_Bone_WindshieldArmour", {0.0, 0.187, 0.269}, {-10.0, 0.0, 0.0}, 0.9},
            {"Bone_WindshieldArmour",  "CarNormal_Bone_WindshieldArmour", {0.0, 0.187, 0.269}, {-10.0, 0.0, 0.0}, 0.9},
            {"Scrap_WindshieldArmour", "CarNormal_Bone_WindshieldArmour", {0.0, 0.187, 0.269}, {-10.0, 0.0, 0.0}, 0.9},
            {"Light_WindshieldArmour", "CarNormal_Bone_WindshieldArmour", {0.0, 0.187, 0.269}, {-10.0, 0.0, 0.0}, 0.9},
            {"Heavy_WindshieldArmour", "CarNormal_Bone_WindshieldArmour", {0.0, 0.187, 0.269}, {-10.0, 0.0, 0.0}, 0.9},
        },

        ["Armour_WindshieldRear"] =
        {
            {"Wood_WindshieldRearArmour",  "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.176, -0.765}, {10.0, 0.0, 0.0}, 0.8},
            {"Bone_WindshieldRearArmour",  "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.176, -0.765}, {10.0, 0.0, 0.0}, 0.8},
            {"Scrap_WindshieldRearArmour", "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.176, -0.765}, {10.0, 0.0, 0.0}, 0.8},
            {"Light_WindshieldRearArmour", "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.176, -0.765}, {10.0, 0.0, 0.0}, 0.8},
            {"Heavy_WindshieldRearArmour", "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.176, -0.765}, {10.0, 0.0, 0.0}, 0.8},
        },

        ["Armour_DoorFrontLeft"] =
        {
            {"Wood_DoorFrontLeftArmour",  "CarNormal_Bone_DoorFrontLeftArmour", {0.396, -0.055, -0.096}, rotateZ, scaleZ},
            {"Bone_DoorFrontLeftArmour",  "CarNormal_Bone_DoorFrontLeftArmour", {0.396, -0.055, -0.096}, rotateZ, scaleZ},
            {"Scrap_DoorFrontLeftArmour", "CarNormal_Bone_DoorFrontLeftArmour", {0.396, -0.055, -0.096}, rotateZ, scaleZ},
            {"Light_DoorFrontLeftArmour", "CarNormal_Bone_DoorFrontLeftArmour", {0.396, -0.055, -0.096}, rotateZ, scaleZ},
            {"Heavy_DoorFrontLeftArmour", "CarNormal_Bone_DoorFrontLeftArmour", {0.396, -0.055, -0.096}, rotateZ, scaleZ},
        },

        ["Armour_DoorFrontRight"] =
        {
            {"Wood_DoorFrontRightArmour",  "CarNormal_Bone_DoorFrontRightArmour", {-0.396, -0.055, -0.096}, rotateZ, scaleZ},
            {"Bone_DoorFrontRightArmour",  "CarNormal_Bone_DoorFrontRightArmour", {-0.396, -0.055, -0.096}, rotateZ, scaleZ},
            {"Scrap_DoorFrontRightArmour", "CarNormal_Bone_DoorFrontRightArmour", {-0.396, -0.055, -0.096}, rotateZ, scaleZ},
            {"Light_DoorFrontRightArmour", "CarNormal_Bone_DoorFrontRightArmour", {-0.396, -0.055, -0.096}, rotateZ, scaleZ},
            {"Heavy_DoorFrontRightArmour", "CarNormal_Bone_DoorFrontRightArmour", {-0.396, -0.055, -0.096}, rotateZ, scaleZ},
        },

        ["Armour_WindowFrontLeft"] =
        {
            {"Wood_WindowFrontLeftArmour",  "CarNormal_Bone_WindowFrontLeftArmour", {0.319, 0.181, -0.068}, rotateZ, scaleZ},
            {"Bone_WindowFrontLeftArmour",  "CarNormal_Bone_WindowFrontLeftArmour", {0.319, 0.181, -0.068}, rotateZ, scaleZ},
            {"Scrap_WindowFrontLeftArmour", "CarNormal_Bone_WindowFrontLeftArmour", {0.319, 0.181, -0.068}, rotateZ, scaleZ},
            {"Light_WindowFrontLeftArmour", "CarNormal_Bone_WindowFrontLeftArmour", {0.319, 0.181, -0.068}, rotateZ, scaleZ},
            {"Heavy_WindowFrontLeftArmour", "CarNormal_Bone_WindowFrontLeftArmour", {0.319, 0.181, -0.068}, rotateZ, scaleZ},
        },

        ["Armour_WindowFrontRight"] =
        {
            {"Wood_WindowFrontRightArmour",  "CarNormal_Bone_WindowFrontRightArmour", {-0.319, 0.181, -0.068}, rotateZ, scaleZ},
            {"Bone_WindowFrontRightArmour",  "CarNormal_Bone_WindowFrontRightArmour", {-0.319, 0.181, -0.068}, rotateZ, scaleZ},
            {"Scrap_WindowFrontRightArmour", "CarNormal_Bone_WindowFrontRightArmour", {-0.319, 0.181, -0.068}, rotateZ, scaleZ},
            {"Light_WindowFrontRightArmour", "CarNormal_Bone_WindowFrontRightArmour", {-0.319, 0.181, -0.068}, rotateZ, scaleZ},
            {"Heavy_WindowFrontRightArmour", "CarNormal_Bone_WindowFrontRightArmour", {-0.319, 0.181, -0.068}, rotateZ, scaleZ},
        },

        ["Armour_WindowRearLeft"] =
        {
            {"Wood_WindowRearLeftArmour",  "CarNormal_Bone_WindowRearLeftArmour", {0.317, 0.181, -0.467}, rotateZ, scaleZ},
            {"Bone_WindowRearLeftArmour",  "CarNormal_Bone_WindowRearLeftArmour", {0.317, 0.181, -0.467}, rotateZ, scaleZ},
            {"Scrap_WindowRearLeftArmour", "CarNormal_Bone_WindowRearLeftArmour", {0.317, 0.181, -0.467}, rotateZ, scaleZ},
            {"Light_WindowRearLeftArmour", "CarNormal_Bone_WindowRearLeftArmour", {0.317, 0.181, -0.467}, rotateZ, scaleZ},
            {"Heavy_WindowRearLeftArmour", "CarNormal_Bone_WindowRearLeftArmour", {0.317, 0.181, -0.467}, rotateZ, scaleZ},
        },

        ["Armour_WindowRearRight"] =
        {
            {"Wood_WindowRearRightArmour",  "CarNormal_Bone_WindowRearRightArmour", {-0.317, 0.181, -0.467}, rotateZ, scaleZ},
            {"Bone_WindowRearRightArmour",  "CarNormal_Bone_WindowRearRightArmour", {-0.317, 0.181, -0.467}, rotateZ, scaleZ},
            {"Scrap_WindowRearRightArmour", "CarNormal_Bone_WindowRearRightArmour", {-0.317, 0.181, -0.467}, rotateZ, scaleZ},
            {"Light_WindowRearRightArmour", "CarNormal_Bone_WindowRearRightArmour", {-0.317, 0.181, -0.467}, rotateZ, scaleZ},
            {"Heavy_WindowRearRightArmour", "CarNormal_Bone_WindowRearRightArmour", {-0.317, 0.181, -0.467}, rotateZ, scaleZ},
        },

        ["Storage_RoofRack"] =
        {
            {"Wood_RoofRack",  "CarNormal_Bone_RoofRack", {0.0, 0.324, -0.203}, rotateZ, 0.9},
            {"Bone_RoofRack",  "CarNormal_Bone_RoofRack", {0.0, 0.324, -0.203}, rotateZ, 0.9},
            {"Scrap_RoofRack", "CarNormal_Bone_RoofRack", {0.0, 0.324, -0.203}, rotateZ, 0.9},
            {"Light_RoofRack", "CarNormal_Bone_RoofRack", {0.0, 0.324, -0.203}, rotateZ, 0.9},
            {"Heavy_RoofRack", "CarNormal_Bone_RoofRack", {0.0, 0.324, -0.203}, rotateZ, 0.9},
        },
    },
    ["ModernCar"] =
    {
        ["Armour_Bullbar"] =
        {
            {"Wood_Bullbar",  "CarNormal_Bone_Bullbar", {0.0, -0.055, 1.174}, rotateZ, scaleZ},
            {"Bone_Bullbar",  "CarNormal_Bone_Bullbar", {0.0, -0.055, 1.174}, rotateZ, scaleZ},
            {"Scrap_Bullbar", "CarNormal_Bone_Bullbar", {0.0, -0.055, 1.174}, rotateZ, scaleZ},
            {"Light_Bullbar", "CarNormal_Bone_Bullbar", {0.0, -0.055, 1.174}, rotateZ, scaleZ},
            {"Heavy_Bullbar", "CarNormal_Bone_Bullbar", {0.0, -0.055, 1.174}, rotateZ, scaleZ},
        },

        ["Armour_Windshield"] =
        {
            {"Wood_WindshieldArmour",  "CarNormal_Bone_WindshieldArmour", {0.0, 0.176, 0.429}, {-10.0, 0.0, 0.0}, scaleZ},
            {"Bone_WindshieldArmour",  "CarNormal_Bone_WindshieldArmour", {0.0, 0.176, 0.429}, {-10.0, 0.0, 0.0}, scaleZ},
            {"Scrap_WindshieldArmour", "CarNormal_Bone_WindshieldArmour", {0.0, 0.176, 0.429}, {-10.0, 0.0, 0.0}, scaleZ},
            {"Light_WindshieldArmour", "CarNormal_Bone_WindshieldArmour", {0.0, 0.176, 0.429}, {-10.0, 0.0, 0.0}, scaleZ},
            {"Heavy_WindshieldArmour", "CarNormal_Bone_WindshieldArmour", {0.0, 0.176, 0.429}, {-10.0, 0.0, 0.0}, scaleZ},
        },

        ["Armour_WindshieldRear"] =
        {
            {"Wood_WindshieldRearArmour",  "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.223, -0.681}, {18.0, 0.0, 0.0}, 0.9},
            {"Bone_WindshieldRearArmour",  "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.223, -0.681}, {18.0, 0.0, 0.0}, 0.9},
            {"Scrap_WindshieldRearArmour", "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.223, -0.681}, {18.0, 0.0, 0.0}, 0.9},
            {"Light_WindshieldRearArmour", "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.223, -0.681}, {18.0, 0.0, 0.0}, 0.9},
            {"Heavy_WindshieldRearArmour", "CarNormal_Bone_WindshieldRearArmour", {0.0, 0.223, -0.681}, {18.0, 0.0, 0.0}, 0.9},
        },

        ["Armour_DoorFrontLeft"] =
        {
            {"Wood_DoorFrontLeftArmour",  "CarNormal_Bone_DoorFrontLeftArmour", {0.459, -0.066, 0.132}, rotateZ, scaleZ},
            {"Bone_DoorFrontLeftArmour",  "CarNormal_Bone_DoorFrontLeftArmour", {0.459, -0.066, 0.132}, rotateZ, scaleZ},
            {"Scrap_DoorFrontLeftArmour", "CarNormal_Bone_DoorFrontLeftArmour", {0.459, -0.066, 0.132}, rotateZ, scaleZ},
            {"Light_DoorFrontLeftArmour", "CarNormal_Bone_DoorFrontLeftArmour", {0.459, -0.066, 0.132}, rotateZ, scaleZ},
            {"Heavy_DoorFrontLeftArmour", "CarNormal_Bone_DoorFrontLeftArmour", {0.459, -0.066, 0.132}, rotateZ, scaleZ},
        },

        ["Armour_DoorFrontRight"] =
        {
            {"Wood_DoorFrontRightArmour",  "CarNormal_Bone_DoorFrontRightArmour", {-0.459, -0.066, 0.132}, rotateZ, scaleZ},
            {"Bone_DoorFrontRightArmour",  "CarNormal_Bone_DoorFrontRightArmour", {-0.459, -0.066, 0.132}, rotateZ, scaleZ},
            {"Scrap_DoorFrontRightArmour", "CarNormal_Bone_DoorFrontRightArmour", {-0.459, -0.066, 0.132}, rotateZ, scaleZ},
            {"Light_DoorFrontRightArmour", "CarNormal_Bone_DoorFrontRightArmour", {-0.459, -0.066, 0.132}, rotateZ, scaleZ},
            {"Heavy_DoorFrontRightArmour", "CarNormal_Bone_DoorFrontRightArmour", {-0.459, -0.066, 0.132}, rotateZ, scaleZ},
        },

        ["Armour_DoorRearLeft"] =
        {
            {"Wood_DoorRearLeftArmour",  "CarNormal_Bone_DoorRearLeftArmour", {0.467, -0.066, -0.321}, rotateZ, scaleZ},
            {"Bone_DoorRearLeftArmour",  "CarNormal_Bone_DoorRearLeftArmour", {0.467, -0.066, -0.321}, rotateZ, scaleZ},
            {"Scrap_DoorRearLeftArmour", "CarNormal_Bone_DoorRearLeftArmour", {0.467, -0.066, -0.321}, rotateZ, scaleZ},
            {"Light_DoorRearLeftArmour", "CarNormal_Bone_DoorRearLeftArmour", {0.467, -0.066, -0.321}, rotateZ, scaleZ},
            {"Heavy_DoorRearLeftArmour", "CarNormal_Bone_DoorRearLeftArmour", {0.467, -0.066, -0.321}, rotateZ, scaleZ},
        },

        ["Armour_DoorRearRight"] =
        {
            {"Wood_DoorRearRightArmour",  "CarNormal_Bone_DoorRearRightArmour", {-0.467, -0.066, -0.321}, rotateZ, scaleZ},
            {"Bone_DoorRearRightArmour",  "CarNormal_Bone_DoorRearRightArmour", {-0.467, -0.066, -0.321}, rotateZ, scaleZ},
            {"Scrap_DoorRearRightArmour", "CarNormal_Bone_DoorRearRightArmour", {-0.467, -0.066, -0.321}, rotateZ, scaleZ},
            {"Light_DoorRearRightArmour", "CarNormal_Bone_DoorRearRightArmour", {-0.467, -0.066, -0.321}, rotateZ, scaleZ},
            {"Heavy_DoorRearRightArmour", "CarNormal_Bone_DoorRearRightArmour", {-0.467, -0.066, -0.321}, rotateZ, scaleZ},
        },

        ["Storage_RoofRack"] =
        {
            {"Wood_RoofRack",  "CarNormal_Bone_RoofRack", {0.0, 0.334, -0.132}, rotateZ, 0.9},
            {"Bone_RoofRack",  "CarNormal_Bone_RoofRack", {0.0, 0.334, -0.132}, rotateZ, 0.9},
            {"Scrap_RoofRack", "CarNormal_Bone_RoofRack", {0.0, 0.334, -0.132}, rotateZ, 0.9},
            {"Light_RoofRack", "CarNormal_Bone_RoofRack", {0.0, 0.334, -0.132}, rotateZ, 0.9},
            {"Heavy_RoofRack", "CarNormal_Bone_RoofRack", {0.0, 0.334, -0.132}, rotateZ, 0.9},
        },
    },
}

local modelInjectionLookup =
{
    exact =
    {

    },

    family =
    {
        ["CarNormal"] = modelSets.CarNormal,
        ["CarTaxi"] = modelSets.CarNormal,
        ["CarStationWagon"] =
        {
            Armour_Bullbar           = modelSets.CarNormal.Armour_Bullbar,
            Armour_Hood              = modelSets.CarNormal.Armour_Hood,
            Armour_Windshield        = modelSets.CarNormal.Armour_Windshield,

            Armour_Trunk             = nil,
            Armour_WindshieldRear    = modelSets.CarStationWagon.Armour_WindshieldRear,

            Armour_DoorFrontLeft     = modelSets.CarNormal.Armour_DoorFrontLeft,
            Armour_DoorFrontRight    = modelSets.CarNormal.Armour_DoorFrontRight,
            Armour_WindowFrontLeft   = modelSets.CarNormal.Armour_WindowFrontLeft,
            Armour_WindowFrontRight  = modelSets.CarNormal.Armour_WindowFrontRight,
            Armour_DoorRearLeft      = modelSets.CarNormal.Armour_DoorRearLeft,
            Armour_DoorRearRight     = modelSets.CarNormal.Armour_DoorRearRight,
            Armour_WindowRearLeft    = modelSets.CarNormal.Armour_WindowRearLeft,
            Armour_WindowRearRight   = modelSets.CarNormal.Armour_WindowRearRight,
            Storage_RoofRack         = nil,
        },
        ["CarLights"] = modelSets.CarNormal,
        ["PickUpTruck"] =
        {
            Armour_Bullbar           = modelSets.PickUpTruck.Armour_Bullbar,
            Armour_Hood              = modelSets.PickUpTruck.Armour_Hood,
            Armour_Windshield        = modelSets.PickUpTruck.Armour_Windshield,

            Armour_Trunk             = nil,
            Armour_WindshieldRear    = modelSets.PickUpTruck.Armour_WindshieldRear,

            Armour_DoorFrontLeft     = modelSets.PickUpTruck.Armour_DoorFrontLeft,
            Armour_DoorFrontRight    = modelSets.PickUpTruck.Armour_DoorFrontRight,
            Armour_WindowFrontLeft   = modelSets.PickUpTruck.Armour_WindowFrontLeft,
            Armour_WindowFrontRight  = modelSets.PickUpTruck.Armour_WindowFrontRight,
            Armour_DoorRearLeft      = nil,
            Armour_DoorRearRight     = nil,
            Armour_WindowRearLeft    = nil,
            Armour_WindowRearRight   = nil,
            Storage_RoofRack         = nil,
        },
        ["PickUpVan"] =
        {
            Armour_Bullbar           = modelSets.PickUpTruck.Armour_Bullbar,
            Armour_Hood              = modelSets.PickUpTruck.Armour_Hood,
            Armour_Windshield        = modelSets.PickUpTruck.Armour_Windshield,

            Armour_Trunk             = nil,
            Armour_WindshieldRear    = modelSets.PickUpVan.Armour_WindshieldRear,

            Armour_DoorFrontLeft     = modelSets.PickUpTruck.Armour_DoorFrontLeft,
            Armour_DoorFrontRight    = modelSets.PickUpTruck.Armour_DoorFrontRight,
            Armour_WindowFrontLeft   = modelSets.PickUpTruck.Armour_WindowFrontLeft,
            Armour_WindowFrontRight  = modelSets.PickUpTruck.Armour_WindowFrontRight,
            Armour_DoorRearLeft      = nil,
            Armour_DoorRearRight     = nil,
            Armour_WindowRearLeft    = nil,
            Armour_WindowRearRight   = nil,
            Storage_RoofRack         = nil,
        },
        ["Van"] =
        {
            Armour_Bullbar           = modelSets.Van.Armour_Bullbar,
            Armour_Hood              = nil,
            Armour_Windshield        = modelSets.Van.Armour_Windshield,

            Armour_Trunk             = nil,
            Armour_WindshieldRear    = modelSets.Van.Armour_WindshieldRear,

            Armour_DoorFrontLeft     = nil,
            Armour_DoorFrontRight    = nil,
            Armour_WindowFrontLeft   = modelSets.Van.Armour_WindowFrontLeft,
            Armour_WindowFrontRight  = modelSets.Van.Armour_WindowFrontRight,
            Armour_DoorRearLeft      = nil,
            Armour_DoorRearRight     = nil,
            Armour_WindowRearLeft    = nil,
            Armour_WindowRearRight   = nil,
            Storage_RoofRack         = nil,
        },
        ["StepVan"] =
        {
            Armour_Bullbar           = modelSets.StepVan.Armour_Bullbar,
            Armour_Hood              = nil,
            Armour_Windshield        = nil,

            Armour_Trunk             = nil,
            Armour_WindshieldRear    = nil,

            Armour_DoorFrontLeft     = nil,
            Armour_DoorFrontRight    = nil,
            Armour_WindowFrontLeft   = nil,
            Armour_WindowFrontRight  = nil,
            Armour_DoorRearLeft      = nil,
            Armour_DoorRearRight     = nil,
            Armour_WindowRearLeft    = nil,
            Armour_WindowRearRight   = nil,
            Storage_RoofRack         = nil,
        },
        ["SportsCar"] =
        {
            Armour_Bullbar           = modelSets.SportsCar.Armour_Bullbar,
            Armour_Hood              = nil,
            Armour_Windshield        = modelSets.SportsCar.Armour_Windshield,

            Armour_Trunk             = nil,
            Armour_WindshieldRear    = nil,

            Armour_DoorFrontLeft     = nil,
            Armour_DoorFrontRight    = nil,
            Armour_WindowFrontLeft   = nil,
            Armour_WindowFrontRight  = nil,
            Armour_DoorRearLeft      = nil,
            Armour_DoorRearRight     = nil,
            Armour_WindowRearLeft    = nil,
            Armour_WindowRearRight   = nil,
            Storage_RoofRack         = modelSets.SportsCar.Storage_RoofRack,
        },
        ["SmallCar"] =
        {
            Armour_Bullbar           = modelSets.SmallCar.Armour_Bullbar,
            Armour_Hood              = nil,
            Armour_Windshield        = modelSets.SmallCar.Armour_Windshield,

            Armour_Trunk             = nil,
            Armour_WindshieldRear    = modelSets.SmallCar.Armour_WindshieldRear,

            Armour_DoorFrontLeft     = modelSets.SmallCar.Armour_DoorFrontLeft,
            Armour_DoorFrontRight    = modelSets.SmallCar.Armour_DoorFrontRight,
            Armour_WindowFrontLeft   = modelSets.SmallCar.Armour_WindowFrontLeft,
            Armour_WindowFrontRight  = modelSets.SmallCar.Armour_WindowFrontRight,
            Armour_DoorRearLeft      = nil,
            Armour_DoorRearRight     = nil,
            Armour_WindowRearLeft    = modelSets.SmallCar.Armour_WindowRearLeft,
            Armour_WindowRearRight   = modelSets.SmallCar.Armour_WindowRearRight,
            Storage_RoofRack         = modelSets.SmallCar.Storage_RoofRack,
        },
        ["ModernCar"] =
        {
            Armour_Bullbar           = modelSets.ModernCar.Armour_Bullbar,
            Armour_Hood              = modelSets.ModernCar.Armour_Hood,
            Armour_Windshield        = modelSets.ModernCar.Armour_Windshield,

            Armour_Trunk             = nil,
            Armour_WindshieldRear    = modelSets.ModernCar.Armour_WindshieldRear,

            Armour_DoorFrontLeft     = modelSets.ModernCar.Armour_DoorFrontLeft,
            Armour_DoorFrontRight    = modelSets.ModernCar.Armour_DoorFrontRight,
            Armour_WindowFrontLeft   = modelSets.CarNormal.Armour_WindowFrontLeft,
            Armour_WindowFrontRight  = modelSets.CarNormal.Armour_WindowFrontRight,
            Armour_DoorRearLeft      = modelSets.ModernCar.Armour_DoorRearLeft,
            Armour_DoorRearRight     = modelSets.ModernCar.Armour_DoorRearRight,
            Armour_WindowRearLeft    = modelSets.CarNormal.Armour_WindowRearLeft,
            Armour_WindowRearRight   = modelSets.CarNormal.Armour_WindowRearRight,
            Storage_RoofRack         = modelSets.ModernCar.Storage_RoofRack,
        },
        ["ModernCarLights"] =
        {
            Armour_Bullbar           = modelSets.ModernCar.Armour_Bullbar,
            Armour_Hood              = modelSets.ModernCar.Armour_Hood,
            Armour_Windshield        = modelSets.ModernCar.Armour_Windshield,

            Armour_Trunk             = nil,
            Armour_WindshieldRear    = modelSets.ModernCar.Armour_WindshieldRear,

            Armour_DoorFrontLeft     = modelSets.ModernCar.Armour_DoorFrontLeft,
            Armour_DoorFrontRight    = modelSets.ModernCar.Armour_DoorFrontRight,
            Armour_WindowFrontLeft   = modelSets.CarNormal.Armour_WindowFrontLeft,
            Armour_WindowFrontRight  = modelSets.CarNormal.Armour_WindowFrontRight,
            Armour_DoorRearLeft      = modelSets.ModernCar.Armour_DoorRearLeft,
            Armour_DoorRearRight     = modelSets.ModernCar.Armour_DoorRearRight,
            Armour_WindowRearLeft    = modelSets.CarNormal.Armour_WindowRearLeft,
            Armour_WindowRearRight   = modelSets.CarNormal.Armour_WindowRearRight,
            Storage_RoofRack         = modelSets.ModernCar.Storage_RoofRack,
        },
    },
}
-- Sandbox Settings these TODO

local durabilityTiers = {
    Wood = 0.75,
    Bone = 1.0,
    Scrap = 1.2,
    Light = 1.5,
    Heavy = 2.5,
}

local dmgPmulti = 0.5


-- stores info for the armour parts
--
-- format:
--
--  PARTKEYNAME (same as found in template_vehiclearmourparts)
--  Armour_Bullbar =
--    {
--        protectionData = {
--            ["PROTECTED PART"]            = {"Armour_Last [PROT PART NAME] C",        DAMAGE MULTI,
--            ["VANILLA REFERENCE"]         = {"DOESNT MATTER JUST MAKE IT UNIQUE",     GLOBAL VALUE},
--            ["E.G. HeadlightRight"]       = {"Armour_LastHLRC",                       dmgPmulti / 5},
--        },
--        
--        source = "Engine",                            Vanilla refernce to the part you want to hook it to, CAN BE nil
--        pathing = "Armour/part/Armour_Bullbar",       pathing in template to be ADDED AS template = PATHING in runtime
--        visuals = {
--            ["Base.Wood_Bullbar"]  = "Wood_Bullbar",      ITEM to be installed as per TEMPLATE = "MODEL NAME TO BE LOADED"
--            ["Base.Bone_Bullbar"]  = "Bone_Bullbar",      These control the hiding and reveling of the models based on what
--            ["Base.Scrap_Bullbar"] = "Scrap_Bullbar",     item you actually have installed in the slot for this PART
--            ["Base.Light_Bullbar"] = "Light_Bullbar",
--            ["Base.Heavy_Bullbar"] = "Heavy_Bullbar",
--        },
--
--        allowList = {                     This is for edge cases that dont have existing parts to hook to
--            "CarStationWagon",            For example the ROOFRACK
--            "SportsCar",                  It's a partial list of keywords to search through
--            "SmallCar",                   
--            "CarNormal",                  
--            "ModernCar02",
--        },
--        blackList = {                     This is used as an exclude from above list
--            "VanRadio",                   E.G. All VANS but not RADIO
--            "CarLights",                  because of roof ornaments
--        },
--    },

local armourTable =
{
    Armour_Bullbar =
    {
        protectionData = {
            ["EngineDoor"]     = {"Armour_LastHoodC", dmgPmulti},
            ["Engine"]         = {"Armour_LastEngineC", dmgPmulti},
            ["HeadlightLeft"]  = {"Armour_LastHLLC", dmgPmulti / 5},
            ["HeadlightRight"] = {"Armour_LastHLRC", dmgPmulti / 5},
            ["Armour_Hood"]    = {"Armour_LastAHoodC", 1},
        },

        source = "Engine",
        pathing = "Armour/part/Armour_Bullbar",
        visuals = {
            ["Base.Wood_Bullbar"]  = "Wood_Bullbar",
            ["Base.Bone_Bullbar"]  = "Bone_Bullbar",
            ["Base.Scrap_Bullbar"] = "Scrap_Bullbar",
            ["Base.Light_Bullbar"] = "Light_Bullbar",
            ["Base.Heavy_Bullbar"] = "Heavy_Bullbar",
        },
    },

    Armour_Hood =
    {
        protectionData = {
            ["EngineDoor"] = {"Armour_LastHoodC", dmgPmulti},
            ["Engine"]     = {"Armour_LastEngineC", dmgPmulti},
        },

        source = "EngineDoor",
        pathing = "Armour/part/Armour_Hood",
        visuals = {
            ["Base.Wood_HoodArmour"]  = "Wood_HoodArmour",
            ["Base.Bone_HoodArmour"]  = "Bone_HoodArmour",
            ["Base.Scrap_HoodArmour"] = "Scrap_HoodArmour",
            ["Base.Light_HoodArmour"] = "Light_HoodArmour",
            ["Base.Heavy_HoodArmour"] = "Heavy_HoodArmour",
        },
    },

    Armour_Trunk =
    {
        protectionData = {
            ["TrunkDoor"] = {"Armour_LastTrunkDC", dmgPmulti},
            ["Trunk"]     = {"Armour_LastTrunkC", dmgPmulti},
        },

        source = "TruckBed",
        pathing = "Armour/part/Armour_Trunk",
        visuals = {
            ["Base.Wood_TrunkArmour"]  = "Wood_TrunkArmour",
            ["Base.Bone_TrunkArmour"]  = "Bone_TrunkArmour",
            ["Base.Scrap_TrunkArmour"] = "Scrap_TrunkArmour",
            ["Base.Light_TrunkArmour"] = "Light_TrunkArmour",
            ["Base.Heavy_TrunkArmour"] = "Heavy_TrunkArmour",
        },
    },

    Armour_Windshield =
    {
        protectionData = {
            ["Windshield"] = {"Armour_LastWC", dmgPmulti},
        },

        source = "Windshield",
        pathing = "Armour/part/Armour_Windshield",
        visuals = {
            ["Base.Wood_WindshieldArmour"]  = "Wood_WindshieldArmour",
            ["Base.Bone_WindshieldArmour"]  = "Bone_WindshieldArmour",
            ["Base.Scrap_WindshieldArmour"] = "Scrap_WindshieldArmour",
            ["Base.Light_WindshieldArmour"] = "Light_WindshieldArmour",
            ["Base.Heavy_WindshieldArmour"] = "Heavy_WindshieldArmour",
        },
    },

    Armour_WindshieldRear =
    {
        protectionData = {
            ["WindshieldRear"] = {"Armour_LastWRC", dmgPmulti},
        },

        source = "WindshieldRear",
        pathing = "Armour/part/Armour_WindshieldRear",
        visuals = {
            ["Base.Wood_WindshieldArmour"]  = "Wood_WindshieldRearArmour",
            ["Base.Bone_WindshieldArmour"]  = "Bone_WindshieldRearArmour",
            ["Base.Scrap_WindshieldArmour"] = "Scrap_WindshieldRearArmour",
            ["Base.Light_WindshieldArmour"] = "Light_WindshieldRearArmour",
            ["Base.Heavy_WindshieldArmour"] = "Heavy_WindshieldRearArmour",
        },
    },

    Armour_DoorFrontLeft =
    {
        protectionData = {
            ["DoorFrontLeft"] = {"Armour_LastDFLC", dmgPmulti},
        },

        source = "DoorFrontLeft",
        pathing = "Armour/part/Armour_DoorFrontLeft",
        visuals = {
            ["Base.Wood_DoorArmour"]  = "Wood_DoorFrontLeftArmour",
            ["Base.Bone_DoorArmour"]  = "Bone_DoorFrontLeftArmour",
            ["Base.Scrap_DoorArmour"] = "Scrap_DoorFrontLeftArmour",
            ["Base.Light_DoorArmour"] = "Light_DoorFrontLeftArmour",
            ["Base.Heavy_DoorArmour"] = "Heavy_DoorFrontLeftArmour",
        },
    },

    Armour_DoorFrontRight =
    {
        protectionData = {
            ["DoorFrontRight"] = {"Armour_LastDFRC", dmgPmulti},
        },

        source = "DoorFrontRight",
        pathing = "Armour/part/Armour_DoorFrontRight",
        visuals = {
            ["Base.Wood_DoorArmour"]  = "Wood_DoorFrontRightArmour",
            ["Base.Bone_DoorArmour"]  = "Bone_DoorFrontRightArmour",
            ["Base.Scrap_DoorArmour"] = "Scrap_DoorFrontRightArmour",
            ["Base.Light_DoorArmour"] = "Light_DoorFrontRightArmour",
            ["Base.Heavy_DoorArmour"] = "Heavy_DoorFrontRightArmour",
        },
    },

    Armour_DoorRearLeft =
    {
        protectionData = {
            ["DoorRearLeft"] = {"Armour_LastDRLC", dmgPmulti},
        },

        source = "DoorRearLeft",
        pathing = "Armour/part/Armour_DoorRearLeft",
        visuals = {
            ["Base.Wood_DoorArmour"]  = "Wood_DoorRearLeftArmour",
            ["Base.Bone_DoorArmour"]  = "Bone_DoorRearLeftArmour",
            ["Base.Scrap_DoorArmour"] = "Scrap_DoorRearLeftArmour",
            ["Base.Light_DoorArmour"] = "Light_DoorRearLeftArmour",
            ["Base.Heavy_DoorArmour"] = "Heavy_DoorRearLeftArmour",
        },
    },

    Armour_DoorRearRight =
    {
        protectionData = {
            ["DoorRearRight"] = {"Armour_LastDRRC", dmgPmulti},
        },

        source = "DoorRearRight",
        pathing = "Armour/part/Armour_DoorRearRight",
        visuals = {
            ["Base.Wood_DoorArmour"]  = "Wood_DoorRearRightArmour",
            ["Base.Bone_DoorArmour"]  = "Bone_DoorRearRightArmour",
            ["Base.Scrap_DoorArmour"] = "Scrap_DoorRearRightArmour",
            ["Base.Light_DoorArmour"] = "Light_DoorRearRightArmour",
            ["Base.Heavy_DoorArmour"] = "Heavy_DoorRearRightArmour",
        },
    },

    Armour_DoorMiddleLeft =
    {
        protectionData = {
            ["DoorMiddleLeft"] = {"Armour_LastDMLC", dmgPmulti},
        },

        source = "DoorMiddleLeft",
        pathing = "Armour/part/Armour_DoorMiddleLeft",
        visuals = {
            ["Base.Wood_DoorArmour"]  = "Wood_DoorMiddleLeftArmour",
            ["Base.Bone_DoorArmour"]  = "Bone_DoorMiddleLeftArmour",
            ["Base.Scrap_DoorArmour"] = "Scrap_DoorMiddleLeftArmour",
            ["Base.Light_DoorArmour"] = "Light_DoorMiddleLeftArmour",
            ["Base.Heavy_DoorArmour"] = "Heavy_DoorMiddleLeftArmour",
        },
    },

    Armour_DoorMiddleRight =
    {
        protectionData = {
            ["DoorMiddleRight"] = {"Armour_LastDMRC", dmgPmulti},
        },

        source = "DoorMiddleRight",
        pathing = "Armour/part/Armour_DoorMiddleRight",
        visuals = {
            ["Base.Wood_DoorArmour"]  = "Wood_DoorMiddleRightArmour",
            ["Base.Bone_DoorArmour"]  = "Bone_DoorMiddleRightArmour",
            ["Base.Scrap_DoorArmour"] = "Scrap_DoorMiddleRightArmour",
            ["Base.Light_DoorArmour"] = "Light_DoorMiddleRightArmour",
            ["Base.Heavy_DoorArmour"] = "Heavy_DoorMiddleRightArmour",
        },
    },

    Armour_WindowFrontLeft =
    {
        protectionData = {
            ["WindowFrontLeft"] = {"Armour_LastWFLC", dmgPmulti},
        },

        source = "WindowFrontLeft",
        pathing = "Armour/part/Armour_WindowFrontLeft",
        visuals = {
            ["Base.Wood_WindowArmour"]  = "Wood_WindowFrontLeftArmour",
            ["Base.Bone_WindowArmour"]  = "Bone_WindowFrontLeftArmour",
            ["Base.Scrap_WindowArmour"] = "Scrap_WindowFrontLeftArmour",
            ["Base.Light_WindowArmour"] = "Light_WindowFrontLeftArmour",
            ["Base.Heavy_WindowArmour"] = "Heavy_WindowFrontLeftArmour",
        },
    },

    Armour_WindowFrontRight =
    {
        protectionData = {
            ["WindowFrontRight"] = {"Armour_LastWFRC", dmgPmulti},
        },

        source = "WindowFrontRight",
        pathing = "Armour/part/Armour_WindowFrontRight",
        visuals = {
            ["Base.Wood_WindowArmour"]  = "Wood_WindowFrontRightArmour",
            ["Base.Bone_WindowArmour"]  = "Bone_WindowFrontRightArmour",
            ["Base.Scrap_WindowArmour"] = "Scrap_WindowFrontRightArmour",
            ["Base.Light_WindowArmour"] = "Light_WindowFrontRightArmour",
            ["Base.Heavy_WindowArmour"] = "Heavy_WindowFrontRightArmour",
        },
    },

    Armour_WindowRearLeft =
    {
        protectionData = {
            ["WindowRearLeft"] = {"Armour_LastWRLC", dmgPmulti},
        },

        source = "WindowRearLeft",
        pathing = "Armour/part/Armour_WindowRearLeft",
        visuals = {
            ["Base.Wood_WindowArmour"]  = "Wood_WindowRearLeftArmour",
            ["Base.Bone_WindowArmour"]  = "Bone_WindowRearLeftArmour",
            ["Base.Scrap_WindowArmour"] = "Scrap_WindowRearLeftArmour",
            ["Base.Light_WindowArmour"] = "Light_WindowRearLeftArmour",
            ["Base.Heavy_WindowArmour"] = "Heavy_WindowRearLeftArmour",
        },
    },

    Armour_WindowRearRight =
    {
        protectionData = {
            ["WindowRearRight"] = {"Armour_LastWRRC", dmgPmulti},
        },

        source = "WindowRearRight",
        pathing = "Armour/part/Armour_WindowRearRight",
        visuals = {
            ["Base.Wood_WindowArmour"]  = "Wood_WindowRearRightArmour",
            ["Base.Bone_WindowArmour"]  = "Bone_WindowRearRightArmour",
            ["Base.Scrap_WindowArmour"] = "Scrap_WindowRearRightArmour",
            ["Base.Light_WindowArmour"] = "Light_WindowRearRightArmour",
            ["Base.Heavy_WindowArmour"] = "Heavy_WindowRearRightArmour",
        },
    },

    Armour_WindowMiddleLeft =
    {
        protectionData = {
            ["WindowMiddleLeft"] = {"Armour_LastWMLC", dmgPmulti},
        },

        source = "WindowMiddleLeft",
        pathing = "Armour/part/Armour_WindowMiddleLeft",
        visuals = {
            ["Base.Wood_WindowArmour"]  = "Wood_WindowMiddleLeftArmour",
            ["Base.Bone_WindowArmour"]  = "Bone_WindowMiddleLeftArmour",
            ["Base.Scrap_WindowArmour"] = "Scrap_WindowMiddleLeftArmour",
            ["Base.Light_WindowArmour"] = "Light_WindowMiddleLeftArmour",
            ["Base.Heavy_WindowArmour"] = "Heavy_WindowMiddleLeftArmour",
        },
    },

    Armour_WindowMiddleRight =
    {
        protectionData = {
            ["WindowMiddleRight"] = {"Armour_LastWMRC", dmgPmulti},
        },

        source = "WindowMiddleRight",
        pathing = "Armour/part/Armour_WindowMiddleRight",
        visuals = {
            ["Base.Wood_WindowArmour"]  = "Wood_WindowMiddleRightArmour",
            ["Base.Bone_WindowArmour"]  = "Bone_WindowMiddleRightArmour",
            ["Base.Scrap_WindowArmour"] = "Scrap_WindowMiddleRightArmour",
            ["Base.Light_WindowArmour"] = "Light_WindowMiddleRightArmour",
            ["Base.Heavy_WindowArmour"] = "Heavy_WindowMiddleRightArmour",
        },
    },

    Armour_Trailer =
    {
        protectionData = {
            ["TrailerTrunk"] = {"Armour_LastTrailerTrunkC", dmgPmulti},
        },

        source = "TrailerTrunk",
        pathing = "Armour/part/Armour_Trailer",
        visuals = {
            ["Base.Light_TrailerArmour"] = "Light_TrailerArmour",
            ["Base.Heavy_TrailerArmour"] = "Heavy_TrailerArmour",
        },
    },

    TireChainFrontLeft =
    {
        protectionData = {
            ["TireFrontLeft"] = {"Armour_LastTFLC", dmgPmulti},
        },

        source = "TireFrontLeft",
        pathing = "TireChains/part/TireChainFrontLeft",
        visuals = {
            ["Base.Light_TireChain"] = "Light_TireChainFrontLeft",
            ["Base.Heavy_TireChain"] = "Heavy_TireChainFrontLeft",
        },
    },

    TireChainFrontRight =
    {
        protectionData = {
            ["TireFrontRight"] = {"Armour_LastTFRC", dmgPmulti},
        },

        source = "TireFrontRight",
        pathing = "TireChains/part/TireChainFrontRight",
        visuals = {
            ["Base.Light_TireChain"] = "Light_TireChainFrontRight",
            ["Base.Heavy_TireChain"] = "Heavy_TireChainFrontRight",
        },
    },

    TireChainRearLeft =
    {
        protectionData = {
            ["TireRearLeft"] = {"Armour_LastTRLC", dmgPmulti},
        },

        source = "TireRearLeft",
        pathing = "TireChains/part/TireChainRearLeft",
        visuals = {
            ["Base.Light_TireChain"] = "Light_TireChainRearLeft",
            ["Base.Heavy_TireChain"] = "Heavy_TireChainRearLeft",
        },
    },

    TireChainRearRight =
    {
        protectionData = {
            ["TireRearRight"] = {"Armour_LastTRRC", dmgPmulti},
        },

        source = "TireRearRight",
        pathing = "TireChains/part/TireChainRearRight",
        visuals = {
            ["Base.Light_TireChain"] = "Light_TireChainRearRight",
            ["Base.Heavy_TireChain"] = "Heavy_TireChainRearRight",
        },
    },

    Storage_TruckBedCover =
    {
        protectionData = nil,

        source = "TruckBedOpen",
        pathing = "Storage/part/Storage_TruckBedCover",
        visuals = {
            ["Base.Wood_TruckBedCover"]  = "Wood_TruckBedCover",
            ["Base.Bone_TruckBedCover"]  = "Bone_TruckBedCover",
            ["Base.Scrap_TruckBedCover"] = "Scrap_TruckBedCover",
            ["Base.Light_TruckBedCover"] = "Light_TruckBedCover",
            ["Base.Heavy_TruckBedCover"] = "Heavy_TruckBedCover",
        },
    },

    Storage_RoofRack =
    {
        protectionData = nil,

        source = nil,
        allowList = {
            "CarStationWagon",
            "SportsCar",
            "SmallCar",
            "CarNormal",
            "ModernCar02",
            "StepVan",
            "PickUpVan",
            "ModernCar",
            "OffRoad",
            "SUV",
            "Van",
            "SmallCar02",
            "CarLuxury",
            "RaceCar",
            "Trailer_Horsebox",
            "Trailer_Livestock",
        },
        blackList = {
            "VanRadio",
            "CarLights",
        },
        pathing = "Storage/part/Storage_RoofRack",
        visuals = {
            ["Base.Wood_RoofRack"]  = "Wood_RoofRack",
            ["Base.Bone_RoofRack"]  = "Bone_RoofRack",
            ["Base.Scrap_RoofRack"] = "Scrap_RoofRack",
            ["Base.Light_RoofRack"] = "Light_RoofRack",
            ["Base.Heavy_RoofRack"] = "Heavy_RoofRack",
        },
    },
}

return
{
    vehiclesPass = vehiclesPass,
    modelInjectionLookup = modelInjectionLookup,
    durabilityTiers = durabilityTiers,
    armourTable = armourTable
}