//Numpy array shape [64, 12]
//Min -2.098893404007
//Max 2.460557222366
//Number of zeros 0

#ifndef W8_H_
#define W8_H_

#ifdef __WEIGHTS_FROM_FILE__
model_default_t w8[768];
#else
model_default_t w8[768] = {-0.1404, -0.0540, 0.0338, 0.6169, 0.3478, 0.4449, -0.0260, -0.4415, -0.0286, 0.0183, 0.0060, -0.3929, 0.0813, 0.1743, -0.0922, -0.0011, -0.0768, -0.1207, 0.1982, -0.2419, 0.1084, -0.1183, 0.2297, 0.5981, 0.2000, 0.0961, 0.3536, 0.5070, 0.0932, -0.1782, 0.2473, 0.3806, 2.4606, 0.2814, -0.1968, -0.2465, 0.2715, -0.2655, 0.0780, -0.0651, -0.1712, 0.2573, -0.0805, 0.4878, 0.2035, 0.0648, 0.1017, -0.3682, 0.1670, -0.0248, 0.3295, 0.4905, 0.0756, -0.0519, -0.0696, -0.0721, -0.0277, 0.4382, 0.0760, 0.0864, 0.1871, -0.3589, -0.0810, 0.0832, -0.1684, 0.2146, 0.1478, -0.5540, 0.1807, 0.5609, -0.1175, 0.3677, -0.3714, 0.1937, 0.3403, 0.2701, -0.2870, -0.0470, -0.3104, 0.1548, 0.2128, -0.0158, 0.5749, -0.0822, 0.1320, 0.0697, 0.1569, 0.7045, -0.3622, 0.2354, 0.0488, 0.1281, -0.0726, 0.0749, -0.1505, 0.0607, 0.5461, -0.1380, -0.1052, 0.3783, -0.0960, -0.1788, 0.0099, -0.1183, -0.1394, 0.2285, -0.2574, -0.3407, -0.0090, -0.2584, -0.2051, -0.0379, 0.0667, 0.2734, 0.0396, -0.2881, 0.2863, 0.0862, -0.1501, 0.1258, -0.0468, 0.1249, 0.1807, -0.0255, 0.0580, -0.2556, 0.4388, 0.0403, 0.1895, 0.3284, 0.3064, 0.3830, -0.3808, -0.0178, -0.4095, -0.2687, 0.0224, 0.3541, 0.0754, -0.0406, -0.0321, 0.2271, 0.0269, 0.2112, 0.0138, -0.1919, 0.1391, 0.0439, 0.0240, -0.1138, 0.1670, -0.3232, -0.2389, 0.0874, -0.0601, 0.3226, 0.2025, 0.0815, 0.2335, -0.0371, 0.3295, -0.1785, -0.4976, -0.1182, 0.4671, -0.1785, 0.1397, 0.2877, 0.1378, -0.1149, 0.1072, -0.1677, -0.0976, 0.2998, 0.2469, 0.0746, -0.0110, 0.1513, 0.2067, 0.0539, 0.2431, -0.3484, -0.0947, -0.0084, -0.0997, -0.0781, 0.0544, 0.1951, 0.6046, 0.3760, 0.1634, 0.0071, -0.1255, 0.0822, -0.0630, -0.2831, -0.0632, -0.1099, -0.0787, -0.4575, -0.1008, -0.0043, -0.0733, -0.0754, -0.0567, 0.1701, -0.1042, -0.2616, -0.2407, -0.1085, -0.1375, -0.4209, 0.2828, -0.1613, -0.1280, -0.1052, -0.0716, 0.0383, 0.2168, 0.2313, 0.1574, 0.1128, 0.1745, -0.2139, -1.1471, -0.2055, 0.1816, 0.3454, -0.0229, 0.1135, 0.5509, 0.0548, 0.0817, 0.1547, 0.1939, 0.1392, 0.4700, 0.5315, -0.1018, 0.3884, -0.0016, 0.2340, 0.1187, -0.2079, 0.1310, 0.1949, -0.0427, 0.1087, 0.0502, 0.3173, -0.0184, 0.1196, 0.4225, 0.2575, -0.1724, 0.1569, 0.0473, -0.0507, 0.0465, 0.3737, -0.1203, 0.1472, 0.1277, 0.3181, 0.0450, 0.1758, -0.2991, -0.0072, 0.3564, -0.0601, 0.5094, -0.4694, 0.2912, 0.0439, -0.0228, 0.0637, 0.1900, 0.0918, 0.2116, -0.1285, 0.1096, 0.1594, 0.0350, 0.2192, -0.0576, 0.4277, -0.2669, 0.4006, -0.3768, 0.1531, 0.1294, -0.0841, -0.1659, 0.3013, 0.1709, -0.0466, -0.0580, -0.0290, 0.0634, 0.2707, -0.3561, 0.5605, -0.2577, 0.6127, -0.1900, 0.1443, 0.3266, -0.0743, -0.1814, 0.0569, 0.1005, -0.0581, 0.3677, 0.0773, 0.1385, 0.1451, -0.3798, 0.0844, 0.0943, 0.1681, -0.0791, 0.0327, 0.2165, -0.1808, 0.1555, 0.1520, 0.2959, 0.0033, -0.6471, 0.3936, -0.0080, 0.0236, -0.2032, 0.2301, 0.0407, 0.4309, -0.2129, -0.0044, 0.5449, 0.5089, 0.2222, -0.3298, 0.2761, 0.4321, -0.0554, 0.0978, -0.2781, 0.2622, 0.0276, -0.0195, -0.1836, 1.0236, -2.0989, 0.1879, 0.2189, 0.1851, 0.0254, 0.1378, -0.1797, 0.0810, 0.2365, 0.1324, -0.0224, 0.0019, -0.2672, 0.0455, -0.1651, -0.3275, -0.2551, 0.2640, -0.0847, 0.5003, 0.4410, 0.1080, -0.2115, 0.0106, 0.0950, -0.2027, -0.1248, 0.0731, 0.3806, -0.1645, 0.0632, -0.1417, -0.1151, -0.0266, 0.0869, -0.1627, 0.5526, 0.0811, 0.1323, -0.3554, -0.4664, 0.0912, -0.0892, -0.1995, -0.0372, 0.2120, 0.2185, 0.0973, -0.0342, 0.4115, 0.1261, -0.0715, 0.1061, -0.0093, -0.0002, 0.7893, -0.0343, 0.0579, 0.2216, 0.6200, -0.1405, 0.4223, 0.1421, 0.4314, 0.9242, 0.2503, -0.0097, -0.2008, 0.0653, -0.2931, 0.3667, 0.3747, -0.1072, 0.0228, 0.2859, 0.1442, -0.4311, 0.3025, -0.2372, -0.1258, -0.1058, -0.0726, -0.5138, -0.3908, 0.1864, -0.0238, -0.4269, 0.1154, 0.0677, 0.3547, -0.1644, 0.2565, 0.0600, 0.0760, -0.2030, 0.3990, 0.1884, -0.2913, -0.4926, -0.1864, 0.0201, -0.1737, -0.2278, 0.1165, -0.2688, 0.0523, 0.3745, 0.0587, 0.2465, -0.1320, -0.4522, 0.0401, -0.2907, 0.0788, 0.4063, 0.4817, 0.0902, -0.2773, 0.0371, 0.5571, 0.3192, -0.1952, 0.0122, 0.3840, 0.4123, -0.0525, 0.0999, -0.0469, 0.7602, 0.6426, 0.3323, 0.1930, 0.2625, -0.0589, -0.1051, -0.1455, -0.0185, -0.2435, -0.1343, -0.1838, 0.3168, 0.2772, 0.3271, 0.4500, -0.0630, 0.1121, -0.0170, 0.0188, 0.1428, -0.2811, 0.0571, 0.3497, 0.1663, 0.1592, 0.0421, 0.4111, 0.7076, 0.3985, 0.0448, 0.3929, -0.3437, 0.1430, 0.4888, 0.4538, -0.0453, -0.2159, 0.4819, -0.0358, -0.2093, 0.0680, 0.4201, 0.0481, 0.0803, -0.2342, 0.1205, 0.2043, -0.2176, 0.0580, 0.1136, -0.2323, 0.1360, 0.3714, 0.2804, -0.6776, 0.1066, -0.0200, 0.0459, -0.1267, 0.1047, 0.0762, 0.0675, 0.4954, 0.9971, -0.0080, -0.1499, -0.0016, -0.1952, 0.1310, -0.1929, 0.2764, -0.3685, 0.1312, 0.1410, -0.2366, 0.0525, 0.5167, 0.2610, 0.3506, 0.2722, 0.3048, 0.0723, -0.2376, 0.1092, 0.3632, 0.0886, -0.2629, -0.0549, 0.0969, 0.0865, -0.0624, 0.1776, 0.3118, -0.0872, 0.1643, 0.0703, 0.2574, 0.0920, -0.3254, 0.4541, -0.4973, 0.1800, -0.0288, 0.8124, 0.1918, -0.4011, -0.0217, 0.0411, 0.1760, -0.1873, 0.3529, -0.4242, 0.1822, 0.0575, -0.0313, -0.0203, -0.1067, 0.4332, 0.0991, -0.0119, -0.2999, 0.5197, 0.2368, 0.0718, 0.1923, 0.2818, 0.3687, 0.0184, 0.0141, -0.1220, -0.3199, 0.2288, 0.0480, 0.4087, -0.0931, 0.5079, -0.0682, 0.0805, -0.0692, 0.0811, -0.3519, -0.1682, 0.4472, 0.1597, 0.5352, 0.1880, 0.0169, 0.2244, 0.0321, 0.0421, 0.0013, -0.0860, 0.2042, 0.0200, 0.0814, -0.3244, -0.0693, 0.2588, 0.1017, -0.1169, -0.0671, 0.0870, 0.5799, -0.1953, 0.2141, -0.2529, -0.3198, 0.5708, -0.1065, 0.3394, 0.1764, 0.6433, -0.1764, -0.1247, -0.2041, -0.0670, -0.0192, 0.3996, -0.1296, -0.0438, -0.0127, -0.1335, 0.1310, 0.2497, -0.3203, -0.1842, 0.7761, 0.0955, 0.2521, 0.0360, 0.7575, 0.4440, 0.3427, -0.1526, -0.2712, -0.1708, 0.1179, -0.0121, 0.1731, -0.2290, -0.0540, 0.1336, -0.1516, 0.5703, 0.0909, -0.5197, 0.5544, -0.0340, 0.1118, 0.3697, -0.2366, 0.0019, -0.0912, 0.2918, 0.0379, 0.0231, 0.0293, 0.0631, 0.3311, 0.0753, -0.1136, 0.0156, 0.6080, 0.2541, 0.3019, 0.1529, -0.2973, 0.0237, -0.3667, -0.0416, -0.3980, 1.3138, -0.1454, 0.5165, -0.1461, 0.3834, -0.1843, 0.7288, 0.3173, 0.3582, 0.0119, -0.1897, -0.0156, -0.0023, 0.0032, 0.0430, 1.1912, 0.3604, 0.0090, 0.5629, 0.6522, -0.1116, 0.0902, 0.1224, 0.8726, -0.4656, -0.2650, 0.0876, -0.2820, -0.1253, 0.3168, -0.0123, -0.0373, 0.1718, 0.1771, -0.2923, 0.0640, 0.1384, -0.1889, -0.3017, -0.0704, -0.2171, -0.0060, -0.0458, -0.1787, -0.1191, 0.0914, -0.2231, -0.0632, 0.0913, 0.0962, -0.2041, 0.3247, 0.0222, 0.2234, -0.3451, 0.4498};
#endif

#endif
