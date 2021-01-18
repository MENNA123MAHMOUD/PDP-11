LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;

ENTITY ControlManager_Entity IS
GENERIC (
n : integer := 26
);
	PORT(
		clk : IN std_logic);
END ENTITY ControlManager_Entity;

ARCHITECTURE ControlManager OF ControlManager_Entity IS
COMPONENT ControlWord_Entity IS
GENERIC (
n : integer := 26
);
	PORT(
		uPC : INOUT std_logic_vector(8 DOWNTO 0);
		ControlWord : IN std_logic_vector(n-1 DOWNTO 0);
		clk : IN std_logic);
END COMPONENT;
	Signal uPC : std_logic_vector(n-1 DOWNTO 0):= (OTHERS => '0') ;
	Signal ControlWord : std_logic_vector(n-1 DOWNTO 0);
	BEGIN
	----RAM NEEDS TO BE CALLED HERE
	ControlWordComponent : ControlWord_Entity GENERIC MAP (26) port map (uPC,ControlWord,clk);
		
END ControlManager;