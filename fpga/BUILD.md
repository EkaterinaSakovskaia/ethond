

������ ������� ��������� �� ������ ���� Quartus 14.0 � Quartus 15.0.
��� ������ ������� � ��� ������ ���� ����������� ������������ ������ Quartus 14.0 ��� �����.



# ������ FPGA
 
 1. ����������� ����� � �������� ��� ������� ��������� ������ ������� �� ������� �������� ������ (Github)
 2. ��������� Quartus GUI � ������� ������ � ��������� ����� � ����������� (���� ethond.qpf)
 3. ��������� ������ ������ � ������� ������ "Start Compilation" ��� ����� ����� ����
 4. ����� ��������� ������ � ����� output_files/ ����� ������� ����� ethond.sof � ethond.rbf
 5. ���� ethond.rbf ������������ � �������� �������� SoC ��� ���������������� firmware FPGA.
    ���� ���� ����� ��������� �� microSD ����� � ���������� /lib/firmware/fpga (���� ���� ������������ �� ��������� )


# ������ Preloader/U-boot

 �������������� ��������� �������� ������ � ���������� FPGA, ��� ��� ����� ������ ������ ��������� ������ �� ����� Assembler'�.
 ���������� �������� ���������� � ���������� ������ OS (��������� cmd.exe � Windows ��� ������������� �������� � Linux)

 ��������� ��������� ������ �� �������� ��������� Quartus, ������� ������� � ���������� PATH �ӣ �����������:

  1. ��������� � ���������� hps_isw_handoff ������ ����� � ����������� ������� (��� ����� ������� ����� ���������� �������)
     cd <���� �� ��������� �������>/hps_isw_handoff

  2. ��������� ��� ������ �� �������� ��������� Quartus 
     <���� �� �������� ��������� Quartus>/embedded/embedded_command_shell.sh 
     ������:
     /opt/altera/quartus14.0/embedded/embedded_command_shell.sh 


 ## ���������� ����� ��� U-boot � Preloader:
    1. ��������� ��������� ������� � ��������� �����������:
       bsp-create-settings --type spl --bsp-dir build --preloader-settings-dir soc_ethond_hps_0    --settings build/settings.bsp --set spl.boot.WATCHDOG_ENABLE false
    
    2. ��������� ������� ��� ������ Preloader:
       make -C build

    3. ��������� ������� ��� ������ U-boot:
       make -C build uboot

    4. ��������� ������� � ��������������� ���������� ��� U-boot � �������� ��� (������������ ���� �������� u-boot-env.txt �� ���������� �������):
       ./build/uboot-socfpga/tools/mkenvimage -s 4096 -o u-boot-env.img  ../u-boot-env.txt



# ����� ���������� ���� �������� ����� �������� ��������� ����������� �����

  output_files/ethond.rbf

  hps_isw_handoff/build/preloader-mkpimage.bin
  hps_isw_handoff/build/uboot-socfpga/u-boot.img
  hps_isw_handoff/u-boot-env.img
