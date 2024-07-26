//To DO 
// MENU, SETTINGS, LOGIC SHOP, LOGIC DAILY REWARDS, LOGIC QUESTS

unit Menus;

interface

procedure ShowMainMenu;
procedure ShowInGameMenu;
procedure ShowShopMenu;
procedure Settings;
procedure DailyReward;
procedure Quests;
procedure Shop;

implementation

uses
  crt, Prices, Player; 

procedure ShowMainMenu;
begin
  clrscr;
  writeln('Menu:');
  writeln('1. New Game');
  writeln('2. Settings');
  writeln('3. Exit');
end;

procedure ShowInGameMenu;
begin
  clrscr;
  writeln('Menu in game:');
  writeln('1. Biome');
  writeln('2. Settings');
  writeln('3. Daily Reward');
  writeln('4. Quests');
  writeln('5. Shop');
  writeln('6. Fish');
  writeln('7. Sell Fish');
end;

procedure ShowShopMenu;
begin
  clrscr;
  writeln('Shop Menu:');
  writeln('1. Fish Rods');
  writeln('2. Baits');
  writeln('3. Boats');
end;

procedure Settings;
begin
  clrscr;
  writeln('Settings:'); 
  writeln('1. Adjust Volume');
  writeln('2. Change Language');
  readln;
end;

procedure DailyReward;
begin
  clrscr;
  writeln('Daily Reward:');
  readln;
end;

procedure Quests;
begin
  clrscr;
  writeln('Quests:');
  readln;
end;

procedure Shop;
var
  choice: integer;
begin
  ShowShopMenu;
  readln(choice);
  case choice of
    1: begin
      writeln('Fish Rods:');
      writeln('1. Initial Plastic - ', RodPrice[Plastic], ' money');
      writeln('2. Improved Rod - ', RodPrice[Improved], ' money');
      writeln('3. Steel Rod - ', RodPrice[Steel], ' money');
      writeln('4. Fiberglass Rod - ', RodPrice[Fiberglass], ' money');
      writeln('5. Heavy Rod - ', RodPrice[Heavy], ' money');
      writeln('6. Alloy Rod - ', RodPrice[Alloy], ' money');
      writeln('7. Lava Rod - ', RodPrice[Lava], ' money');
      writeln('8. Magma Rod - ', RodPrice[Magma], ' money');
      readln;
    end;
    2: begin
      writeln('Baits:');
      writeln('1. Worms - ', BaitPrice[Worms], ' money');
      writeln('2. Leeches - ', BaitPrice[Leeches], ' money');
      readln;
    end;
    3: begin
      writeln('Boats:');
      writeln('1. Rowboat - ', BoatPrice[Rowboat], ' money');
      writeln('2. Fishboat - ', BoatPrice[Fishboat], ' money');
      writeln('3. Speedboat - ', BoatPrice[Speedboat], ' money');
      writeln('4. Pontoon - ', BoatPrice[Pontoon], ' money');
      writeln('5. Sailboat - ', BoatPrice[Sailboat], ' money');
      writeln('6. Yacht - ', BoatPrice[Yacht], ' money');
      readln;
    end;
  end;
end;

end.
