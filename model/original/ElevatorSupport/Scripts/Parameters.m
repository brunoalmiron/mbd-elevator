%% Elevator Parameters Initialization

% Copyright 2023 The MathWorks, Inc.

%% For Simulation

K = 25000; % constant spring stiffness
D = 3000;  % spring damping
g = 9.80665; % gravity 
scale = 0.2857142857142857; % for general variable mass
x = 0.0944451787412;    % initial spring length elevator
x2 = 0.17632453369405415; % % initial spring length counter weight 
FloorHeight = 3.6; % Height of one floor in meters.

%% Building

BuildingTop = struct;
BuildingTop.mass = 4396.7518284772868;
BuildingTop.CoM = [1917.2646888817012 1736.6260840102641 4.14892980253318 ...
                   ];
BuildingTop.MoI = [4.5037940735961256E+9 6.1097171894430056E+9 9.4199528823981972E+9 ...
                   ];
BuildingTop.PoI = [6.4960610367975962E+8 -3.9810472157284015E+8 5.3446025115297246E+8 ...
                   ];
BuildingTop.color = [0.50196078431372548 0.50196078431372548 0.50196078431372548 ...
                     ];
BuildingTop.opacity = 1;
BuildingTop.ID = 'RoofTop*:*Default';

%% Elevator Cabin

CabinFrame = struct;
CabinFrame.mass = 86.032086000000035;
CabinFrame.CoM = [44.999999999999993 65.000000000000028 1.2499999999999998 ...
                  ];
CabinFrame.MoI = [203141.98282812524 113832.484028125 316884.85010000021 ...
                  ];
CabinFrame.PoI = [-1.86676279567058E-12 0 -3.7832364292952038E-11];
CabinFrame.color = [0.792156862745098 0.81960784313725488 0.93333333333333335 ...
                    ];
CabinFrame.opacity = 1;
CabinFrame.ID = 'CabinFrame1*:*Default';

CabinTopPlate = struct;
CabinTopPlate.mass = 72.135;
CabinTopPlate.CoM = [0.31499999999999972 1.145 0.025000000000000005];
CabinTopPlate.MoI = [31.53862425 2.4008932500000015 33.909461250000007];
CabinTopPlate.PoI = [0 0 9.4702132709863687E-15];
CabinTopPlate.color = [0.792156862745098 0.81960784313725488 0.93333333333333335 ...
                       ];
CabinTopPlate.opacity = 1;
CabinTopPlate.ID = 'CabinTopPlate*:*Default';

%% Counter Weight

CounterWeight = struct;
CounterWeight.mass = 2200;
CounterWeight.CoM = [0 -240.00000000000006 0];
CounterWeight.MoI = [4.2610339228556016E+6 5.8011277909240415E+6 9.6879380442834925E+6 ...
                     ];
CounterWeight.PoI = [0 7.3137129192283323E-10 0];
CounterWeight.color = [0.792156862745098 0.81960784313725488 0.93333333333333335 ...
                       ];
CounterWeight.opacity = 1;
CounterWeight.ID = 'CounterWeight*:*Default';

CounterWeightFrame = struct;
CounterWeightFrame.mass = 47.512321919999984;
CounterWeightFrame.CoM = [486.7000000000001 84.11999999999999 -750.00000000000114 ...
                          ];
CounterWeightFrame.MoI = [1.4726914031922257E+7 2.1985897615464218E+7 7.48312056757854E+6 ...
                          ];
CounterWeightFrame.PoI = [7.05953074416381E-10 3.97945319668894E-9 0];
CounterWeightFrame.color = [0.792156862745098 0.81960784313725488 0.93333333333333335 ...
                            ];
CounterWeightFrame.opacity = 1;
CounterWeightFrame.ID = 'CouterWeightFrame*:*Default';

CouterWeightRail = struct;
CouterWeightRail.mass = 53.561915503895563;
CouterWeightRail.CoM = [30.234254526493235 45.0000024490748 -12009.42287520947 ...
                        ];
CouterWeightRail.MoI = [4.01886100099911E+9 4.0188874234194856E+9 57473.805216315493 ...
                        ];
CouterWeightRail.PoI = [0.80350227388206907 -1718.5487544684818 -0.0039933949664140243 ...
                        ];
CouterWeightRail.color = [0.6470588235294118 0.61960784313725492 0.58823529411764708 ...
                          ];
CouterWeightRail.opacity = 1;
CouterWeightRail.ID = 'LongRail*:*Default';

%% Door Mechanism

Door = struct;
Door.mass = 61.8263422670059;
Door.CoM = [253.99999999999994 1200 25.399999999999995];
Door.MoI = [2.9588182173024513E+7 1.33879847151959E+6 3.0900388722559448E+7 ...
            ];
Door.PoI = [0 0 7.3183646642771549E-10];
Door.color = [0.792156862745098 0.81960784313725488 0.93333333333333335 ...
              ];
Door.opacity = 1;
Door.ID = 'Door*:*Default';

DoorMechanismPlate = struct;
DoorMechanismPlate.mass = 94.652499999999989;
DoorMechanismPlate.CoM = [1013.267854873255 259.37662814944207 48.2574416946198 ...
                          ];
DoorMechanismPlate.MoI = [2.0525938088866726E+6 3.2477017828897152E+7 3.4372432297538154E+7 ...
                          ];
DoorMechanismPlate.PoI = [-24225.4638553986 285.69568684248429 14857.870973320467 ...
                          ];
DoorMechanismPlate.color = [0.792156862745098 0.81960784313725488 0.93333333333333335 ...
                            ];
DoorMechanismPlate.opacity = 1;
DoorMechanismPlate.ID = 'DoorMechanism*:*Default';

DoorPart = struct;
DoorPart.mass = 3.0463495408493619;
DoorPart.CoM = [125 135.9257779105526 -6.6007299785357461];
DoorPart.MoI = [16668.6677457326 17693.487443268372 29867.049563081258];
DoorPart.PoI = [-1217.6187021702788 0 0];
DoorPart.color = [0.792156862745098 0.81960784313725488 0.93333333333333335 ...
                  ];
DoorPart.opacity = 1;
DoorPart.ID = 'doorpart1*:*Default';

ElevatorCabin = struct;
ElevatorCabin.mass = 659.26999999999975;
ElevatorCabin.CoM = [39.999999994468816 56.023871938042184 24.72410502014371 ...
                     ];
ElevatorCabin.MoI = [2.878640228863968E+6 2.0197829568309109E+6 3.676927615778652E+6 ...
                     ];
ElevatorCabin.PoI = [-46316.801766770608 -0.00097874573365809223 -0.058228043931949421 ...
                     ];
ElevatorCabin.color = [0.6470588235294118 0.61960784313725492 0.58823529411764708 ...
                       ];
ElevatorCabin.opacity = 1;
ElevatorCabin.ID = 'ElevatorCabin*:*Default';

ElevatorRail = struct;
ElevatorRail.mass = 53.561915503895584;
ElevatorRail.CoM = [30.234254526493235 45.000002449074792 -12009.422875209466 ...
                    ];
ElevatorRail.MoI = [4.01886100099911E+9 4.0188874234194856E+9 57473.805216315479 ...
                    ];
ElevatorRail.PoI = [0.80350227383412787 -1718.5487544684554 -0.0039933949658953142 ...
                    ];
ElevatorRail.color = [0.6470588235294118 0.61960784313725492 0.58823529411764708 ...
                      ];
ElevatorRail.opacity = 1;
ElevatorRail.ID = 'Part4*:*Default';

Floor = struct;
Floor.mass = 9775.0991871006063;
Floor.CoM = [80.261581526129419 65.17196678507608 37.074397835773269];
Floor.MoI = [3.341200997307653E+7 5.0212947358148642E+7 5.617507147502818E+7 ...
             ];
Floor.PoI = [3.1194530232014153E+6 -70388.086339912988 32114.041279334346 ...
             ];
Floor.color = [0.6470588235294118 0.61960784313725492 0.58823529411764708 ...
               ];
Floor.opacity = 1;
Floor.ID = 'Floor*:*Default';




%% Motor
MotorShaft = struct;
MotorShaft.mass = 4.6338491640449426;
MotorShaft.CoM = [0 0 294.99999999999994];
MotorShaft.MoI = [137316.39689453182 137316.39689453182 5792.3114550561768 ...
                  ];
MotorShaft.PoI = [0 0 0];
MotorShaft.color = [0 0 0];
MotorShaft.opacity = 1;
MotorShaft.ID = 'ShaftMotor*:*Default';

%% Joints

PlanarJoint = struct;
PlanarJoint.Rz = struct;
PlanarJoint.Rz.Pos = 89.999999999999986;
PlanarJoint.Px = struct;
PlanarJoint.Px.Pos = 0;
PlanarJoint.Py = struct;
PlanarJoint.Py.Pos = 0;
PlanarJoint.ID = '[Part4-1:-:LongRail-2]';

PrismaticJoint = struct;
PrismaticJoint.Pz = struct;
PrismaticJoint.Pz.Pos = 0;
PrismaticJoint.ID = '[Part4-1:-:LongRail-1]';

Pulley = struct;
Pulley.radius = 0.38;
Pulley.mass = 24.852704631494497;
Pulley.CoM = [0 0 0];
Pulley.MoI = [0.98171220726635255 0.98171220726635278 1.9416075113168432 ...
              ];
Pulley.PoI = [0 0 0.010578539420297885];
Pulley.color = [0.9882352941176471 0.73725490196078436 0.51764705882352935 ...
                ];
Pulley.opacity = 1;
Pulley.ID = 'Pulley*:*Default';

RevoluteJoint = struct;
RevoluteJoint(1).Rz = struct;
RevoluteJoint(1).Rz.Pos = -108.16847778113716;
RevoluteJoint(1).ID = '[RoofTop-1:-:PulleySubAssembly-1]';
RevoluteJoint(2).Rz = struct;
RevoluteJoint(2).Rz.Pos = -94.607871996125937;
RevoluteJoint(2).ID = '[RoofTop-1:-:PulleySubAssembly-2]';
RevoluteJoint(3).Rz = struct;
RevoluteJoint(3).Rz.Pos = 76.249921524813;
RevoluteJoint(3).ID = '[RoofTop-1:-:ShaftMotor-2]';
RevoluteJoint(4).Rz = struct;
RevoluteJoint(4).Rz.Pos = -97.4182138613865;
RevoluteJoint(4).ID = '[RoofTop-1:-:shaft-1]';

%% Rigid Transforms

RigidTransform = struct;
RigidTransform(1).translation = [84.869042952052439 37.196435571921867 ...
                                 -27010.000000000015];
RigidTransform(1).angle = 2.0943951023931953;
RigidTransform(1).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584 ...
                          ];
RigidTransform(1).ID = 'B[LongRail-1:-:LongRail-2]';
RigidTransform(2).translation = [1063.6107502835662 52.803564428089885 ...
                                 -27010.000000000044];
RigidTransform(2).angle = 2.0943951023931957;
RigidTransform(2).axis = [0.577350269189626 -0.57735026918962573 -0.57735026918962573 ...
                          ];
RigidTransform(2).ID = 'F[LongRail-1:-:LongRail-2]';
RigidTransform(3).translation = [2867.7958686114789 -25382.666210465435 ...
                                 2350.1080959411338];
RigidTransform(3).angle = 2.0943951023931953;
RigidTransform(3).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584 ...
                          ];
RigidTransform(3).ID = 'B[CounterWeigthAssembly-1:-:LongRail-1]';
RigidTransform(4).translation = [90.210750283571542 127.87830275857414 ...
                                 -17445.485200044684];
RigidTransform(4).angle = 2.0943951023931953;
RigidTransform(4).axis = [-0.57735026918962584 0.57735026918962584 0.57735026918962584 ...
                          ];
RigidTransform(4).ID = 'F[CounterWeigthAssembly-1:-:LongRail-1]';
RigidTransform(5).translation = [2699.5558686114791 -25382.666210465435 ...
                                 1376.7080959411337];
RigidTransform(5).angle = 3.1415926535897931;
RigidTransform(5).axis = [1 0 0];
RigidTransform(5).ID = 'B[CounterWeigthAssembly-1:-:LongRail-2]';
RigidTransform(6).translation = [84.869042952033851 130.3616972414311 -17445.485200044703 ...
                                 ];
RigidTransform(6).angle = 2.0943951023931957;
RigidTransform(6).axis = [0.57735026918962573 -0.57735026918962573 -0.57735026918962562 ...
                          ];
RigidTransform(6).ID = 'F[CounterWeigthAssembly-1:-:LongRail-2]';
RigidTransform(7).translation = [1910 1563.1555777753028 -700.00000000000023 ...
                                 ];
RigidTransform(7).angle = 2.0943951023931953;
RigidTransform(7).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584 ...
                          ];
RigidTransform(7).ID = 'B[RoofTop-1:-:PulleySubAssembly-1]';
RigidTransform(8).translation = [-29.1224595305869 23.420029301972765 678.20072494468445 ...
                                 ];
RigidTransform(8).angle = 3.1415926535897931;
RigidTransform(8).axis = [-1 2.5550748396354829E-33 -7.107236561034715E-17 ...
                          ];
RigidTransform(8).ID = 'F[RoofTop-1:-:PulleySubAssembly-1]';
RigidTransform(9).translation = [929.99999999999977 1563.1555777753028 ...
                                 -1099.9999999999995];
RigidTransform(9).angle = 2.0943951023931953;
RigidTransform(9).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584 ...
                          ];
RigidTransform(9).ID = 'B[RoofTop-1:-:PulleySubAssembly-2]';
RigidTransform(10).translation = [-29.122459530586021 23.420029301965936 ...
                                  679.20072494467831];
RigidTransform(10).angle = 3.1415926535897931;
RigidTransform(10).axis = [-1 3.1309122594734904E-33 -6.0661632669576829E-17 ...
                           ];
RigidTransform(10).ID = 'F[RoofTop-1:-:PulleySubAssembly-2]';
RigidTransform(11).translation = [929.99999999999977 1563.1555777753028 ...
                                  -1099.9999999999995];
RigidTransform(11).angle = 2.0943951023931953;
RigidTransform(11).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584 ...
                           ];
RigidTransform(11).ID = 'B[RoofTop-1:-:ShaftMotor-2]';
RigidTransform(12).translation = [-6.6725490027308856E-13 1.0996054397681056E-12 ...
                                  848.13043162253689];
RigidTransform(12).angle = 3.1415926535897931;
RigidTransform(12).axis = [1 -2.8134645016844941E-33 -6.8091558385049357E-17 ...
                           ];
RigidTransform(12).ID = 'F[RoofTop-1:-:ShaftMotor-2]';
RigidTransform(13).translation = [1910 1563.1555777753028 -700.00000000000023 ...
                                  ];
RigidTransform(13).angle = 2.0943951023931953;
RigidTransform(13).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584 ...
                           ];
RigidTransform(13).ID = 'B[RoofTop-1:-:shaft-1]';
RigidTransform(14).translation = [2.2547059625286346E-13 -2.9356404921966521E-14 ...
                                  800.00000000000091];
RigidTransform(14).angle = 3.1415926535897931;
RigidTransform(14).axis = [-1 3.0661065008013162E-33 -6.3119249872908027E-17 ...
                           ];
RigidTransform(14).ID = 'F[RoofTop-1:-:shaft-1]';
RigidTransform(15).translation = [-2.2204460492503131E-12 3600 -254];
RigidTransform(15).angle = 2.0943951023931953;
RigidTransform(15).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584 ...
                           ];
RigidTransform(15).ID = 'B[Floor-1:-:RoofTop-1]';
RigidTransform(16).translation = [4060 3094.0000000000005 299.99999999999909 ...
                                  ];
RigidTransform(16).angle = 3.1415926535897931;
RigidTransform(16).axis = [-0.70710678118654757 0.70710678118654757 5.5511151231257839E-17 ...
                           ];
RigidTransform(16).ID = 'F[Floor-1:-:RoofTop-1]';
RigidTransform(17).translation = [409.00000000002512 -4.4408920985006262E-13 ...
                                  3000];
RigidTransform(17).angle = 2.0943951023931953;
RigidTransform(17).axis = [-0.57735026918962584 -0.57735026918962584 0.57735026918962584 ...
                           ];
RigidTransform(17).ID = 'B[Part4-1:-:LongRail-1]';
RigidTransform(18).translation = [620.210750283557 -819.447392619888 -27010 ...
                                  ];
RigidTransform(18).angle = 3.1415926535897931;
RigidTransform(18).axis = [-5.5511151231257827E-17 0.70710678118654746 ...
                           0.70710678118654768];
RigidTransform(18).ID = 'F[Part4-1:-:LongRail-1]';
RigidTransform(19).translation = [1.7763568394002505E-12 90.000000000004519 ...
                                  -27010];
RigidTransform(19).angle = 2.0943951023931957;
RigidTransform(19).axis = [-0.57735026918962573 -0.57735026918962584 0.57735026918962573 ...
                           ];
RigidTransform(19).ID = 'B[Part4-1:-:LongRail-2]';
RigidTransform(20).translation = [618.26904295204918 500.44739261987434 ...
                                  2999.9999999999895];
RigidTransform(20).angle = 2.0943951023931957;
RigidTransform(20).axis = [0.57735026918962584 -0.57735026918962573 0.57735026918962573 ...
                           ];
RigidTransform(20).ID = 'F[Part4-1:-:LongRail-2]';
RigidTransform(21).translation = [84.869042952049782 48.199999999999356 ...
                                  2992.8599999999997];
RigidTransform(21).angle = 1.6653345369377348E-16;
RigidTransform(21).axis = [1 0 0];
RigidTransform(21).ID = 'B[Part4-1:-:Part4-5]';
RigidTransform(22).translation = [2484.869042952053 41.800000000002456 ...
                                  2992.8599999999988];
RigidTransform(22).angle = 3.1415926535897931;
RigidTransform(22).axis = [-1.5014895543489064E-16 -2.2204460492503131E-16 ...
                           -1];
RigidTransform(22).ID = 'F[Part4-1:-:Part4-5]';
RigidTransform(23).translation = [2611.3082510325821 -744.81099295934632 ...
                                  458.97079748764281];
RigidTransform(23).angle = 2.0943951023931953;
RigidTransform(23).axis = [0.577350269189626 0.57735026918962584 0.57735026918962562 ...
                           ];
RigidTransform(23).ID = 'B[CabinFrameAssmebly-1:-:Part4-5]';
RigidTransform(24).translation = [267.36904295205 -645.60470335113814 -398.91575891807429 ...
                                  ];
RigidTransform(24).angle = 1.5707963267948966;
RigidTransform(24).axis = [-2.2993471702930984E-17 -1 8.895226552525975E-17 ...
                           ];
RigidTransform(24).ID = 'F[CabinFrameAssmebly-1:-:Part4-5]';
RigidTransform(25).translation = [409.00000000002495 0 3000];
RigidTransform(25).angle = 0;
RigidTransform(25).axis = [0 0 0];
RigidTransform(25).ID = 'B[Part4-5:-:Floor-1]';
RigidTransform(26).translation = [901.10564720706941 3600 801.47043162197815 ...
                                  ];
RigidTransform(26).angle = 1.5707963267948966;
RigidTransform(26).axis = [-1 -1.7790453105051952E-16 6.6882228588003969E-17 ...
                           ];
RigidTransform(26).ID = 'F[Part4-5:-:Floor-1]';
RigidTransform(27).translation = [0 0 -254];
RigidTransform(27).angle = 2.0943951023931957;
RigidTransform(27).axis = [-0.57735026918962551 -0.577350269189626 0.57735026918962573 ...
                           ];
RigidTransform(27).ID = 'B[Floor-1:-:Floor-2]';
RigidTransform(28).translation = [-2.1600499167107046E-12 3600 -254.00000000000045 ...
                                  ];
RigidTransform(28).angle = 2.0943951023931957;
RigidTransform(28).axis = [-0.57735026918962551 -0.577350269189626 0.57735026918962573 ...
                           ];
RigidTransform(28).ID = 'F[Floor-1:-:Floor-2]';
RigidTransform(29).translation = [0 0 -254];
RigidTransform(29).angle = 2.0943951023931953;
RigidTransform(29).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584 ...
                           ];
RigidTransform(29).ID = 'B[Floor-2:-:Floor-3]';
RigidTransform(30).translation = [-2.2737367544323206E-12 3600.0000000000005 ...
                                  -253.99999999999886];
RigidTransform(30).angle = 2.0943951023931953;
RigidTransform(30).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584 ...
                           ];
RigidTransform(30).ID = 'F[Floor-2:-:Floor-3]';
RigidTransform(31).translation = [0 0 -254];
RigidTransform(31).angle = 2.0943951023931953;
RigidTransform(31).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584 ...
                           ];
RigidTransform(31).ID = 'B[Floor-3:-:Floor-4]';
RigidTransform(32).translation = [-2.1600499167107046E-12 3600 -254.00000000000023 ...
                                  ];
RigidTransform(32).angle = 2.0943951023931953;
RigidTransform(32).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584 ...
                           ];
RigidTransform(32).ID = 'F[Floor-3:-:Floor-4]';
RigidTransform(33).translation = [0 0 2840];
RigidTransform(33).angle = 0;
RigidTransform(33).axis = [0 0 0];
RigidTransform(33).ID = 'B[Floor-4:-:Floor-5]';
RigidTransform(34).translation = [-2.2737367544323206E-12 3600 2840];
RigidTransform(34).angle = 0;
RigidTransform(34).axis = [0 0 0];
RigidTransform(34).ID = 'F[Floor-4:-:Floor-5]';
RigidTransform(35).translation = [0 0 -254];
RigidTransform(35).angle = 2.0943951023931953;
RigidTransform(35).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584 ...
                           ];
RigidTransform(35).ID = 'B[Floor-5:-:Floor-6]';
RigidTransform(36).translation = [-2.1600499167107046E-12 3600 -254];
RigidTransform(36).angle = 2.0943951023931953;
RigidTransform(36).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584 ...
                           ];
RigidTransform(36).ID = 'F[Floor-5:-:Floor-6]';
RigidTransform(37).translation = [0 0 -254];
RigidTransform(37).angle = 2.0943951023931953;
RigidTransform(37).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584 ...
                           ];
RigidTransform(37).ID = 'B[Floor-6:-:Floor-7]';
RigidTransform(38).translation = [-2.2737367544323206E-12 3600.0000000000036 ...
                                  -254];
RigidTransform(38).angle = 2.0943951023931953;
RigidTransform(38).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584 ...
                           ];
RigidTransform(38).ID = 'F[Floor-6:-:Floor-7]';
RigidTransform(39).translation = [0 0 -254];
RigidTransform(39).angle = 2.0943951023931953;
RigidTransform(39).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584 ...
                           ];
RigidTransform(39).ID = 'B[Floor-7:-:Floor-8]';
RigidTransform(40).translation = [-2.1600499167107046E-12 3600 -254];
RigidTransform(40).angle = 2.0943951023931953;
RigidTransform(40).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584 ...
                           ];
RigidTransform(40).ID = 'F[Floor-7:-:Floor-8]';
RigidTransform(41).translation = [954.70013050396665 1688.5890070406631 ...
                                  438.9707974876078];
RigidTransform(41).angle = 3.1415926535897931;
RigidTransform(41).axis = [-0 -1 -7.3176898179272932E-17];
RigidTransform(41).ID = ['AssemblyGround[CabinFrameAssmebly-1:doorpart1' ...
                         '-2]'];
RigidTransform(42).translation = [2080.3357104206752 -711.410992959334 ...
                                  413.97079748761945];
RigidTransform(42).angle = 0;
RigidTransform(42).axis = [0 0 0];
RigidTransform(42).ID = 'AssemblyGround[CabinFrameAssmebly-1:Door-1]';
RigidTransform(43).translation = [579.70013050396665 -711.41099295933691 ...
                                  413.97079748760746];
RigidTransform(43).angle = 0;
RigidTransform(43).axis = [0 0 0];
RigidTransform(43).ID = 'AssemblyGround[CabinFrameAssmebly-1:Door-2]';
RigidTransform(44).translation = [452.30825103258132 -871.81099295934678 ...
                                  1401.0519602668651];
RigidTransform(44).angle = 0;
RigidTransform(44).axis = [0 0 0];
RigidTransform(44).ID = ['AssemblyGround[CabinFrameAssmebly-1:CabinFram' ...
                         'e1-2]'];
RigidTransform(45).translation = [452.30825103258178 2480.1890070406535 ...
                                  1467.5519602668667];
RigidTransform(45).angle = 2.0943951023931953;
RigidTransform(45).axis = [0.57735026918962584 0.57735026918962584 -0.57735026918962584 ...
                           ];
RigidTransform(45).ID = ['AssemblyGround[CabinFrameAssmebly-1:CabinTopP' ...
                         'late-1]'];
RigidTransform(46).translation = [456.30825103258042 -871.81099295934689 ...
                                  837.55196026686554];
RigidTransform(46).angle = 0;
RigidTransform(46).axis = [0 0 0];
RigidTransform(46).ID = ['AssemblyGround[CabinFrameAssmebly-1:CabinFram' ...
                         'e1-1]'];
RigidTransform(47).translation = [2611.3082510325826 1693.589007040654 ...
                                  558.970797487643];
RigidTransform(47).angle = 3.1415926535897931;
RigidTransform(47).axis = [-0 -1 -7.3176898179272932E-17];
RigidTransform(47).ID = ['AssemblyGround[CabinFrameAssmebly-1:DoorMecha' ...
                         'nism-1]'];
RigidTransform(48).translation = [2738.3082510325821 -921.81099295934678 ...
                                  1467.5519602668658];
RigidTransform(48).angle = 2.0943951023931953;
RigidTransform(48).axis = [-0.57735026918962584 0.57735026918962584 0.57735026918962584 ...
                           ];
RigidTransform(48).ID = ['AssemblyGround[CabinFrameAssmebly-1:CabinTopP' ...
                         'late-2]'];
RigidTransform(49).translation = [2611.3082510325826 -744.81099295934655 ...
                                  1830.5707974876427];
RigidTransform(49).angle = 3.1415926535897931;
RigidTransform(49).axis = [-0 -1 -7.3176898179272932E-17];
RigidTransform(49).ID = ['AssemblyGround[CabinFrameAssmebly-1:ElevatorC' ...
                         'abin-1]'];
RigidTransform(50).translation = [2463.3357104206752 1688.5890070406658 ...
                                  438.97079748761979];
RigidTransform(50).angle = 3.1415926535897931;
RigidTransform(50).axis = [-0 -1 -7.3176898179272932E-17];
RigidTransform(50).ID = ['AssemblyGround[CabinFrameAssmebly-1:doorpart1' ...
                         '-1]'];
RigidTransform(51).translation = [2699.5558686114791 -25382.666210465435 ...
                                  2350.1080959411338];
RigidTransform(51).angle = 2.0943951023931953;
RigidTransform(51).axis = [0.57735026918962584 0.57735026918962584 -0.57735026918962584 ...
                           ];
RigidTransform(51).ID = ['AssemblyGround[CounterWeigthAssembly-1:Couter' ...
                         'WeightFrame-1]'];
RigidTransform(52).translation = [2790.2958686114794 -24722.666210465435 ...
                                  1861.7080959411342];
RigidTransform(52).angle = 1.5707963267948968;
RigidTransform(52).axis = [0 1 0];
RigidTransform(52).ID = ['AssemblyGround[CounterWeigthAssembly-1:Counte' ...
                         'rWeight-1]'];
RigidTransform(53).translation = [-29.122459530583455 23.420029301973511 ...
                                  304.25630271997738];
RigidTransform(53).angle = 0;
RigidTransform(53).axis = [0 0 0];
RigidTransform(53).ID = 'AssemblyGround[PulleySubAssembly-1:Pulley-5]';
RigidTransform(54).translation = [-29.122459530583455 23.420029301973511 ...
                                  228.05630271997757];
RigidTransform(54).angle = 0;
RigidTransform(54).axis = [0 0 0];
RigidTransform(54).ID = 'AssemblyGround[PulleySubAssembly-1:Pulley-4]';
RigidTransform(55).translation = [-29.122459530583455 23.420029301973511 ...
                                  75.656302719977475];
RigidTransform(55).angle = 3.1415926535897931;
RigidTransform(55).axis = [0 6.1232339956209391E-17 1];
RigidTransform(55).ID = 'AssemblyGround[PulleySubAssembly-1:Pulley-2]';
RigidTransform(56).translation = [-29.122459530583455 23.420029301973511 ...
                                  151.85630271997752];
RigidTransform(56).angle = 0;
RigidTransform(56).axis = [0 0 0];
RigidTransform(56).ID = 'AssemblyGround[PulleySubAssembly-1:Pulley-3]';
RigidTransform(57).translation = [-29.122459530583455 23.420029301973511 ...
                                  -0.54369728002257034];
RigidTransform(57).angle = 0;
RigidTransform(57).axis = [0 0 0];
RigidTransform(57).ID = 'AssemblyGround[PulleySubAssembly-1:Pulley-1]';
RigidTransform(58).translation = [-29.122459530583455 23.420029301973955 ...
                                  304.25630271997761];
RigidTransform(58).angle = 0;
RigidTransform(58).axis = [0 0 0];
RigidTransform(58).ID = 'AssemblyGround[PulleySubAssembly-2:Pulley-5]';
RigidTransform(59).translation = [-29.122459530583455 23.420029301973955 ...
                                  228.05630271997757];
RigidTransform(59).angle = 0;
RigidTransform(59).axis = [0 0 0];
RigidTransform(59).ID = 'AssemblyGround[PulleySubAssembly-2:Pulley-4]';
RigidTransform(60).translation = [-29.122459530583455 23.420029301973955 ...
                                  75.656302719977475];
RigidTransform(60).angle = 3.1415926535897931;
RigidTransform(60).axis = [0 6.1232339956209415E-17 1];
RigidTransform(60).ID = 'AssemblyGround[PulleySubAssembly-2:Pulley-2]';
RigidTransform(61).translation = [-29.122459530583455 23.420029301973955 ...
                                  151.85630271997752];
RigidTransform(61).angle = 0;
RigidTransform(61).axis = [0 0 0];
RigidTransform(61).ID = 'AssemblyGround[PulleySubAssembly-2:Pulley-3]';
RigidTransform(62).translation = [-29.122459530583455 23.420029301973955 ...
                                  -0.54369728002257034];
RigidTransform(62).angle = 0;
RigidTransform(62).axis = [0 0 0];
RigidTransform(62).ID = 'AssemblyGround[PulleySubAssembly-2:Pulley-1]';
RigidTransform(63).translation = [2338.4065978120225 210.37339026844398 ...
                                  1848.9477036779679];
RigidTransform(63).angle = 3.1415926535897931;
RigidTransform(63).axis = [0 0.70710678118654746 0.70710678118654757];
RigidTransform(63).ID = 'RootGround[Part4-1]';

Shaft = struct;
Shaft.mass = 4.3196898986859642;
Shaft.CoM = [0 0 275];
Shaft.MoI = [111591.98904938743 111591.98904938743 5399.6123733574523];
Shaft.PoI = [0 0 0];
Shaft.color = [0 0 0];
Shaft.opacity = 1;
Shaft.ID = 'shaft*:*Default';

Solid = struct;
Solid(1).mass = [];
Solid(1).CoM = [];
Solid(1).MoI = [];
Solid(1).PoI = [];
Solid(1).color = [];
Solid(1).opacity = [];
Solid(1).ID = [];
Solid(15).mass = 0;
Solid(15).CoM = [0 0 0];
Solid(15).MoI = [0 0 0];
Solid(15).PoI = [0 0 0];
Solid(15).color = [0 0 0];
Solid(15).opacity = 0;
Solid(15).ID = '';
