/*************************************************************************

    File: exampleModels.pl
    Copyright (C) 2004 Patrick Blackburn & Johan Bos

    This file is part of BB1, version 1.2 (August 2005).

    BB1 is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    BB1 is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with BB1; if not, write to the Free Software Foundation, Inc., 
    59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

    by xiyuan.gao
    new contents of example7 has been added as part of exercise in clsem-ex3-sose2019

*************************************************************************/

:- module(exampleModels,[example/2]).


/*========================================================================
   Example Models
========================================================================*/

example(1,
        model([d1,d2,d3,d4,d5],
              [f(0,jules,d1),
               f(0,vincent,d2),
               f(0,pumpkin,d3),
               f(0,honey_bunny,d4),
               f(0,yolanda,d5),
               f(1,customer,[d1,d2]),
               f(1,robber,[d3,d4]),
               f(2,love,[(d3,d4)])])).


example(2,
        model([d1,d2,d3,d4,d5,d6],
              [f(0,jules,d1),
               f(0,vincent,d2),
               f(0,pumpkin,d3),
               f(0,honey_bunny,d4),
               f(0,yolanda,d4),
               f(1,customer,[d1,d2,d5,d6]),
               f(1,robber,[d3,d4]),
               f(2,love,[])])).


example(3,
        model([d1,d2,d3,d4,d5,d6,d7,d8],
              [f(0,mia,d1),
               f(0,jody,d2),
               f(0,jules,d3),
               f(0,vincent,d4),
               f(1,woman,[d1,d2]),
               f(1,man,[d3,d4]),
               f(1,joke,[d5,d6]),
               f(1,episode,[d7,d8]),
               f(2,in,[(d5,d7),(d5,d8)]),
               f(2,tell,[(d1,d5),(d2,d6)])])).

example(4,model([d1,d7,d9],[f(2,accessible_world,[(d9,d9),(d9,d7),(d1,d9),(d1,d7),(d1,d1)])])).
example(5,model([d1,d7,d9],[f(2,accessible_world,[(d9,d9),(d9,d7),(d1,d9),(d1,d1)])])).
example(6,model([d9,d7,d1],[f(2,accessible_world,[(d9,d9),(d9,d7),(d1,d9),(d1,d7),(d1,d1)])])).


/*========================================================================
   Example Model-7. to be used in clsem-ex3-sose2019

example(7,
        model([d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16],
              [f(0,vincent,d1),
               f(0,mia,d2),
               f(0,butch,d3),
               f(1,footmassage,d4),
               f(1,bank,d5),
               f(1,newcar,d6),
               f(1,warning,d7),
               f(1,burger,d8),
               f(1,a,[d4,d5,d6,d7]),
               f(1,every,d8),

               f(0,'01,07,2019',d9),
               f(0,'02,07,2019',d10),
               f(0,'03,07,2019',d11),
               f(0,'04,07,2019',d12),
               f(0,'05,07,2019',d13),
               f(0,'06,07,2019',d14),
               f(0,'07,07,2019',d15),

               f(1,day,[d9,d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,d21,d22,d23]),
               f(1,on,[d9,d10,d14]),
               f(1,monday,d9),
               f(1,sunday,d14),
               f(1,tuesday,d10),
               f(2,today,[(d16,d9),(d17,d10),(d18,d11),(d19,d12),(d20,d13),(d21,d14),(d22,d15)]),
               f(2,yesterday,[(d9,d10),(d10,d11),(d11,d12),(d12,d13),(d14,d15)]),
               f(2,tomorrow,[(d10,d9),(d11,d10),(d12,d11),(d13,d12),(d14,d13),(d15,d14)]),

               f(2,before,[(d9,d10),(d10,d11),(d11,d12),(d12,d13),(d13,d14),(d14,d15)]),
               f(2,after,[(d10,d9),(d11,d10),(d12,d11),(d13,d12),(d14,d13)]),
               f(2,overlap,[(d16,d9),(d17,d10),(d18,d11),(d19,d12),(d20,d13),(d21,d14),(d22,d15)]),
               
               f(2,dance,[(d1,d11),(d1,d10),(d1,d9)]),
               f(3,visit,[(d1,d2,d9)]),
               f(2,sleep,[(d1,d15)]),
               f(4,give,[(d1,d2,d4,d14)]),
               f(3,rob,[(d2,d5,d11)]),
               f(3,buy,[(d1,d6,d13)]),
               f(3,visit,[(d2,d3,d15)]),
               f(4,give,[(d3,d1,d7,d10)]),
               f(3,eat,[(d3,d8,d9),(d3,d8,d10),(d3,d8,d11)]),
               f(3,kill,[(d3,d1,d13),(d3,d1,d14)])])).

        
========================================================================*/

example(7,
        model([d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16],
              [f(0,vincent,d1),
               f(0,mia,d2),
               f(0,butch,d3),
               f(1,footmassage,d4),
               f(1,bank,d5),
               f(1,newcar,d6),
               f(1,warning,d7),
               f(1,burger,d8),

               f(0,'01,07,2019',d9),
               f(0,'02,07,2019',d10),
               f(0,'03,07,2019',d11),
               f(0,'04,07,2019',d12),
               f(0,'05,07,2019',d13),
               f(0,'06,07,2019',d14),
               f(0,'07,07,2019',d15),

               f(1,day,[d9,d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,d21,d22,d23]),
               f(1,on,[d9,d10,d14]),
               f(1,monday,d9),
               f(1,sunday,d14),
               f(1,tuesday,d10),
               f(2,today,[(d16,d9),(d17,d10),(d18,d11),(d19,d12),(d20,d13),(d21,d14),(d22,d15)]),
               f(2,yesterday,[(d9,d10),(d10,d11),(d11,d12),(d12,d13),(d14,d15)]),
               f(2,tomorrow,[(d10,d9),(d11,d10),(d12,d11),(d13,d12),(d14,d13),(d15,d14)]),

               f(2,before,[(d9,d10),(d10,d11),(d11,d12),(d12,d13),(d13,d14),(d14,d15)]),
               f(2,after,[(d10,d9),(d11,d10),(d12,d11),(d13,d12),(d14,d13)]),
               f(2,overlap,[(d16,d9),(d17,d10),(d18,d11),(d19,d12),(d20,d13),(d21,d14),(d22,d15)]),
               
               f(2,dance,[(d1,d14),(d1,d13),(d1,d12),(d1,d11),(d1,d10),(d1,d9)]),
               f(3,visit,[(d1,d2,d9)]),
               f(2,sleep,[(d1,d16),(d1,d17),(d1,d18),(d1,d19),(d1,d20),(d1,d21),(d1,d22)]),
               f(4,give,[(d1,d2,d4,d14)]),
               f(3,rob,[(d2,d5,d9),(d2,d5,d10),(d2,d5,d11),(d2,d5,d12),(d2,d5,d13),(d2,d5,d14)]),
               f(3,buy,[(d1,d6,d10),(d1,d6,d11),(d1,d6,d12),(d1,d6,d13),(d1,d6,d14),(d1,d6,d15)]),
               f(3,visit,[(d2,d3,d16),(d2,d3,d17),(d2,d3,d18),(d2,d3,d19),(d2,d3,d20),(d2,d3,d21),(d2,d3,d22)]),
               f(4,give,[(d3,d1,d7,d10)]),
               f(3,eat,[(d3,d8,d9),(d3,d8,d10),(d3,d8,d11),(d3,d8,d12),(d3,d8,d13),(d3,d8,d14)]),
               f(3,kill,[(d3,d1,d9),(d3,d1,d10),(d3,d1,d11),(d3,d1,d12)(d3,d1,d13),(d3,d1,d14)])])).
