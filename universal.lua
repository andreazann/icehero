-- This file is for use with Corona(R) SDK
--
-- This file is automatically generated with PhysicsEdtior (http://physicseditor.de). Do not edit
--
-- Usage example:
--			local scaleFactor = 1.0
--			local physicsData = (require "shapedefs").physicsData(scaleFactor)
--			local shape = display.newImage("objectname.png")
--			physics.addBody( shape, physicsData:get("objectname") )
--

-- copy needed functions to local scope
local unpack = unpack
local pairs = pairs
local ipairs = ipairs

module(...)

function physicsData(scale)
	local physics = { data =
	{ 
		
		["p_1"] = {
			
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   51.5, 7  ,  16.5, 10  ,  29.5, -4  ,  71.5, -11  ,  72.5, 3  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   16.5, 10  ,  -33.5, 9  ,  -11.5, -3  ,  29.5, -4  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -33.5, 9  ,  -73.5, 3  ,  -38.5, -5  ,  -11.5, -3  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -73.5, 3  ,  -72.5, -8  ,  -70.5, -11  ,  -38.5, -5  }
				}  
		}
		
		, 
		["p_2"] = {
			
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   109.5, -28  ,  96.5, -34  ,  99.5, -40  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   109.5, -28  ,  74.5, 9  ,  71.5, -8  ,  96.5, -34  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   74.5, 9  ,  53.5, 24  ,  34.5, 33  ,  46.5, 11  ,  71.5, -8  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   34.5, 33  ,  16.5, 38  ,  22.5, 22  ,  46.5, 11  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   16.5, 38  ,  -9.5, 39  ,  6.75362396240234, 26.0072460174561  ,  22.5, 22  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -9.5, 39  ,  -7.5, 25  ,  6.75362396240234, 26.0072460174561  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -9.5, 39  ,  -31.5, 34  ,  -25.5, 21  ,  -7.5, 25  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -31.5, 34  ,  -57.5, 21  ,  -75.5, 8  ,  -48.5, 10  ,  -25.5, 21  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -75.5, 8  ,  -109.5, -26  ,  -71.5, -8  ,  -48.5, 10  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -109.5, -26  ,  -109.5, -32  ,  -101.5, -41  ,  -71.5, -8  }
				}  
		}
		
		, 
		["p_3"] = {
			
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   92, -18  ,  92, -14  ,  85, -1  ,  77, -13  ,  83, -23  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   85, -1  ,  77, 7  ,  66, 14  ,  64.3623199462891, -0.724637985229492  ,  77, -13  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   66, 14  ,  51, 19  ,  34, 22  ,  46.7391357421875, 6.72463798522949  ,  64.3623199462891, -0.724637985229492  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   34, 22  ,  20, 10  ,  46.7391357421875, 6.72463798522949  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   34, 22  ,  -26, 22  ,  -6, 10  ,  20, 10  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -26, 22  ,  -93, 15  ,  -92, 3.08695602416992  ,  -6, 10  }
				}  
		}
		
		, 
		["p_4"] = {
			
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   72.5, 6  ,  37.5, 8  ,  38.5, -6  ,  71.5, -8  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -71.5, -8  ,  -37.5, -6  ,  -38.5, 8  ,  -73.5, 6  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -3.71014404296875, -5.26811599731445  ,  37.5, 8  ,  -38.5, 8  ,  -37.5, -6  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   37.5, 8  ,  -3.71014404296875, -5.26811599731445  ,  38.5, -6  }
				}  
		}
		
		, 
		["p_5"] = {
			
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   99.5, -36  ,  97.5, -25  ,  89.5, -5  ,  84.5, -26  ,  89.5, -41  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   89.5, -5  ,  75.5, 12  ,  72.5, -5  ,  84.5, -26  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   75.5, 12  ,  73.5, 12  ,  58.5, 8  ,  72.5, -5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -32.2463760375977, 26.2826089859009  ,  -4.5, 39  ,  -100.5, 39  ,  -99.7753623127937, 26.4492750167847  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -4.5, 25  ,  24.5, 35  ,  -4.5, 39  ,  -32.2463760375977, 26.2826089859009  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   24.5, 21  ,  49.5, 28  ,  24.5, 35  ,  -4.5, 25  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   44.5, 15  ,  49.5, 28  ,  24.5, 21  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   58.5, 8  ,  73.5, 12  ,  66.5, 19  ,  49.5, 28  ,  44.5, 15  }
				}  
		}
		
		, 
		["p_6"] = {
			
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -122.5, -32.5  ,  -135.5, -21.5  ,  -137.5, -21.5  ,  -130.5, -30.5  ,  -123.5, -35.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   103.5, 3.5  ,  79.5, 19.5  ,  60.5, 28.5  ,  98.5, -15.5  ,  123.5, -40.5  ,  126.5, -39.5  ,  136.5, -27.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -64.5, 29.5  ,  -40.5, 19.5  ,  -25.5, 22.5  ,  31.5, 37.5  ,  10.5, 40.5  ,  -31.5, 38.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -96.5, -8.5  ,  -135.5, -21.5  ,  -122.5, -32.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -65.5, 10.5  ,  -64.5, 29.5  ,  -82.5, 21.5  ,  -102.5, 9.5  ,  -121.5, -5.5  ,  -135.5, -19.5  ,  -135.5, -21.5  ,  -96.5, -8.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -40.5, 19.5  ,  -64.5, 29.5  ,  -65.5, 10.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   60.5, 28.5  ,  72.5, 2.5  ,  98.5, -15.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   60.5, 28.5  ,  52.5, 12.5  ,  72.5, 2.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   60.5, 28.5  ,  31.5, 37.5  ,  31.5, 19.5  ,  52.5, 12.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   31.5, 37.5  ,  9.5, 23.5  ,  31.5, 19.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   31.5, 37.5  ,  -7.66667175292969, 24.1111106872559  ,  9.5, 23.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   31.5, 37.5  ,  -25.5, 22.5  ,  -7.66667175292969, 24.1111106872559  }
				}  
		}
		
		, 
		["p_7"] = {
			
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   82.5, -21.5  ,  87.5, -9.5  ,  80.5, -19.5  ,  80.5, -21.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -82.5, -21.5  ,  -73.5, -16.5  ,  -72.5, -14.5  ,  -77.5, -3.5  ,  -88.5, -9.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -69.5, -12.5  ,  -77.5, -3.5  ,  -72.5, -14.5  ,  -70.5, -14.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -65.5, -10.5  ,  -77.5, -3.5  ,  -69.5, -12.5  ,  -66.5, -12.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -56.5, -5.5  ,  -77.5, -3.5  ,  -60.5, -7.5  ,  -57.5, -7.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -60.5, -7.5  ,  -77.5, -3.5  ,  -65.5, -10.5  ,  -61.5, -9.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   87.5, -9.5  ,  85.5, -9.5  ,  69.5, -12.5  ,  76.5, -18.5  ,  80.5, -19.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   76.5, -3.5  ,  85.5, -9.5  ,  80.5, -4.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   69.5, 0.5  ,  76.5, -3.5  ,  75.5, -1.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -44.5, -1.5  ,  -40.5, 1.5  ,  -76.5, -1.5  ,  -77.5, -3.5  ,  -56.5, -5.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -45.5, 13.5  ,  -76.5, -1.5  ,  34.5, 16.5  ,  14.5, 20.5  ,  -16.5, 20.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   58.5, 7.5  ,  55.5, 7.5  ,  69.5, 0.5  ,  68.5, 2.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   69.5, -12.5  ,  85.5, -9.5  ,  57.5, -5.5  ,  58.5, -7.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   34.5, 16.5  ,  55.5, 7.5  ,  51.5, 10.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -11.5, 8.5  ,  -76.5, -1.5  ,  -40.5, 1.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   69.5, 0.5  ,  55.5, 7.5  ,  34.5, 16.5  ,  29.5, 5.5  ,  57.5, -5.5  ,  85.5, -9.5  ,  76.5, -3.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   34.5, 16.5  ,  13.5, 8.5  ,  29.5, 5.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   34.5, 16.5  ,  0.888885498046875, 9  ,  13.5, 8.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   34.5, 16.5  ,  -11.5, 8.5  ,  0.888885498046875, 9  }
				}  
		}
		
		, 
		["p_8"] = {
			
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -102.5, -38.5  ,  -87.5, -15.5  ,  -84.5, 6.5  ,  -102.5, -11.5  ,  -113.5, -29.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -75.5, -3.5  ,  -69.5, 17.5  ,  -84.5, 6.5  ,  -87.5, -15.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -52.5, 12.5  ,  -45.5, 29.5  ,  -69.5, 17.5  ,  -75.5, -3.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -20.5, 23.5  ,  -21.5, 36.5  ,  -45.5, 29.5  ,  -52.5, 12.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   96.5, -4.5  ,  78.5, 13.5  ,  81.5, -7.5  ,  102.5, -39.5  ,  112.5, -28.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   78.5, 13.5  ,  60.5, 25.5  ,  62.5, 8.5  ,  81.5, -7.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   60.5, 25.5  ,  48.5, 30.5  ,  16.5, 38.5  ,  37.5, 20.5  ,  62.5, 8.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   16.5, 38.5  ,  -21.5, 36.5  ,  11.5, 25.5  ,  37.5, 20.5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   11.5, 25.5  ,  -21.5, 36.5  ,  -20.5, 23.5  }
				}  
		}
		
		, 
		["p_9"] = {
			
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -114.5, -9  ,  115.5, -9  ,  115.5, 7  ,  -115.5, 7  }
				}  
		}
		
		, 
		["p_10"] = {
			
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   57.6316757202148, -7.71086502075195  ,  57.6316757202148, 7.55248618125916  ,  -58.4475137963891, 7.55248618125916  ,  -58.5524862036109, -7.71086502075195  }
				}  
		}
		
		, 
		["pinguino"] = {
			
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -20, 22  ,  -24, 18  ,  26, -8  ,  27.0293045043945, -1.24777984619141  ,  27, 7  ,  23, 18  ,  18, 23  ,  -0.32415771484375, 29.3028419017792  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   22, -16  ,  26, -8  ,  -24, 18  ,  -5.35523986816406, -26.822380065918  ,  3.17761993408203, -26.822380065918  ,  15, -23  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0.1, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -5.35523986816406, -26.822380065918  ,  -24, 18  ,  -28, 7  ,  -27, -8  ,  -23, -16  ,  -16, -23  }
				}  
		}
		
		, 
		["p_5r"] = {
			
				{
					density = 2, friction = 0, bounce = 0, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   89, 40  ,  19, 40  ,  -21, 36  ,  4, 25  ,  98, 26.6835012435913  ,  99, 38  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -21, 36  ,  -51, 28  ,  -26, 21  ,  4, 25  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -51, 28  ,  -68, 19  ,  -46, 15  ,  -26, 21  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -68, 19  ,  -75, 12  ,  -64, 5  ,  -46, 15  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -75, 12  ,  -74, -5  ,  -64, 5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -75, 12  ,  -77, 12  ,  -85, -24  ,  -74, -5  }
				}  ,
				{
					density = 2, friction = 0, bounce = 0, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -101, -34  ,  -101, -36  ,  -92, -41  ,  -90, -41  ,  -85, -24  ,  -77, 12  ,  -92, -7  }
				}  
		}
		
	} }

	-- apply scale factor
	local s = scale or 1.0
	for bi,body in pairs(physics.data) do
		for fi,fixture in ipairs(body) do
			for ci,coordinate in ipairs(fixture.shape) do
				fixture.shape[ci] = s * coordinate
			end
		end
	end
	
	function physics:get(name)
		return unpack(self.data[name])
	end
	
	return physics;
end


