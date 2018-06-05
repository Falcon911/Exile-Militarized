/**
 * Scratchie - Lottery like minigame for Exile Mod
 * @author ole1986 - https://github.com/ole1986/a3-exile-scratchie
 */
 
class CfgPatches {
    class scratchie_server {
        requiredVersion = 0.1;
        requiredAddons[]=
        {
            "exile_client",
            "exile_server_config"
        };
        units[] = {};
        weapons[] = {};
    };
};
class CfgFunctions {
    class ScratchieServer {
        class main {
            file="x\scratchie_server\bootstrap";
            class preInit { 
                preInit = 1;
            };
            class postInit {
                postInit = 1;
            };
        };
    };
};

class CfgSettings
{
    /**
     * Scratchie Settings
     */
    class ScratchieSettings {
        /**
         * @var integer How often the number should be drawn (in seconds) - MIN: 60 = 1min MAX: 65435 = 18days XD
         */
        Interval = 60;
        
        /**
         * @var integer set the price per scratchie (default: 200)
         */
        Price = 2000;
        
        /**
         * @var integer inform all players about the scratchie winner
         */
        AnnounceWinner = 1;
        
        /**
         * @var integer 1 = VERY RARE CHANCE, 50 = NEARLY 50:50 CHANCE 100 = PERFECTLY FOR TESTING (default: 2)
         */ 
        ChanceToWin = 3;
        
        /**
         * @var int ItemPrize lifetime - How long is the crate available for item prizes (default: 180 sec = 3 minutes)
         */
        CrateLifetime = 180;
               
        /**
         * Possible Types to win
         */
        PrizeType[] = { "VehiclePrize", "PoptabPrize", "WeaponPrize"};
        
        /* ### PRIZE LISTS ### */
        
        /**
         * @var array list of vehicle prizes
         */
        VehiclePrize[] = {
     "Exile_Chopper_Hummingbird_Civillian_Wasp",
"Exile_Chopper_Huey_Green",
"Exile_Chopper_Taru_Transport_Black",
"rhs_tigr_3camo_msv",
"rhs_tigr_ffv_3camo_msv",
"rhs_tigr_ffv_msv",
"rhs_tigr_m_3camo_msv",
"rhs_tigr_m_msv",
"rhs_tigr_msv",
"rhs_tigr_sts_3camo_msv",
"rhs_tigr_sts_msv",
"rhsusf_rg33_wd",
"rhsusf_rg33_usmc_wd",
"rhsusf_rg33_m2_wd",
"rhsusf_rg33_m2_usmc_wd",
"rhsusf_M1220_usarmy_wd",
"rhsusf_M1220_M2_usarmy_wd",
"rhsusf_M1220_MK19_usarmy_wd",
"rhsusf_M1230_M2_usarmy_wd",
"rhsusf_M1230_MK19_usarmy_wd",
"rhsusf_M1220_M153_M2_usarmy_wd",
"rhsusf_M1230a1_usarmy_wd",
"rhsusf_M1232_usarmy_wd",
"RHS_Mi8mt_Cargo_vdv",
"sfp_hkp6",
"sfp_jetranger_police",
"sfp_bell429_police",
"sfp_hkp9",
"sfp_hkp9_sog",
"rhsusf_M1232_M2_usarmy_wd",
"rhsusf_M1232_MK19_usarmy_wd",
"rhsusf_M1237_M2_usarmy_wd",
"rhsusf_M1237_MK19_usarmy_wd",
"rhsusf_M1084A1R_SOV_M2_WD_fmtv_socom",
"rhsusf_M1078A1R_SOV_M2_WD_fmtv_socom",
"rhsusf_M1117_W",
"rhsusf_M1117_O"
        };
        /**
         * @var array list of pop tab prizes
         */
        PoptabPrize[] = {
            1000,
            2500,
            5000,
            7500,   
            10000,
            15000,
            25000,
            50000,
            75000,   
            100000
        };

        /**
         * @var array known crates containing weapons already which can be the prize for weapon types
         */
        WeaponPrize[] = {
            "Box_NATO_Wps_F",
            /*"launch_NLAW_F",*/ /* i dont like rocket launchers */
            "Box_NATO_WpsSpecial_F",
            "Box_East_WpsSpecial_F",
            "Box_East_Wps_F",
            "Box_IND_WpsSpecial_F"
        };
    };
};
