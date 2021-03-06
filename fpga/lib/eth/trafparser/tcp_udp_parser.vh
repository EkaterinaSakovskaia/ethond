/*`define PORT_POS 0

 `define SRCPORT_6B_B1 23:16
 `define SRCPORT_6B_B0 31:24

 `define DSTPORT_6B_B1 39:32
 `define DSTPORT_6B_B0 47:40

`define DSTPORT_6B_POS 0
`define DSTPORT_2B_POS 1

 `define SRCPORT_2B_B1 55:48
 `define SRCPORT_2B_B0 63:56

 `define DSTPORT_2B_B1  7:0 
 `define DSTPORT_2B_B0 15:8 
*/
`define SRCPORT_POS 0

`define SRCPORT_T6B_B1 55:48
`define SRCPORT_T6B_B0 63:56

`define SRCPORT_T2B_B1 23:16
`define SRCPORT_T2B_B0 31:24

`define DSTPORT_T6B_POS 1
`define DSTPORT_T2B_POS 0

`define DSTPORT_T6B_B1 7:0
`define DSTPORT_T6B_B0 15:8

`define DSTPORT_T2B_B1 39:32
`define DSTPORT_T2B_B0 47:40


`define UDP_CHKSUM_T6B_POS 1
`define UDP_CHKSUM_T2B_POS 1

`define UDP_CHKSUM_T2B_B1 7:0
`define UDP_CHKSUM_T2B_B0 15:8

`define UDP_CHKSUM_T6B_B1 39:32
`define UDP_CHKSUM_T6B_B0 47:40

`define TCPFLAGS_T6B_POS 2
`define TCPFLAGS_T2B_POS 1

`define TCPFLAGS_T6B_B0 31:24
        `define TCPFLAGS_T6B_B1 16

`define TCPFLAGS_T2B_B0 63:56
        `define TCPFLAGS_T2B_B1 48
