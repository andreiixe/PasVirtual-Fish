unit GameMechanics;

interface

procedure NewGame;
procedure Fish;
procedure SellFish;

implementation

uses
  crt, Player, SysUtils;

procedure NewGame;
var
  fishType: TFish;
begin
  clrscr;
  CurrentPlayer.Money := 1000;
  CurrentPlayer.Level := 1;
  CurrentPlayer.Language := 'English';
  CurrentPlayer.Inventory.Rod := Plastic;
  CurrentPlayer.Inventory.Bait := Worms;
  CurrentPlayer.Inventory.Boat := Rowboat;
  for fishType := Low(TFish) to High(TFish) do
    CurrentPlayer.Inventory.FishCaught[fishType] := 0;
  writeln('New game started!');
  readln;
end;

procedure Fish;
var
  caughtFish: TFish;
  fishName: string;
begin
  clrscr;
  writeln('Fishing:');
  Randomize;
  caughtFish := TFish(Random(Ord(High(TFish)) + 1));
  Inc(CurrentPlayer.Inventory.FishCaught[caughtFish]);
  case caughtFish of
    Trout: fishName := 'Trout';
    Salmon: fishName := 'Salmon';
    Carp: fishName := 'Carp';
    Catfish: fishName := 'Catfish';
  end;
  writeln('You caught a ', fishName, ' fish!');
  writeln('1. Fish Again');
  writeln('2. Back to Menu');
  readln;
end;

procedure SellFish;
var
  totalValue: Integer;
  fishType: TFish;
begin
  clrscr;
  totalValue := 0;
  for fishType := Low(TFish) to High(TFish) do
  begin
    totalValue := totalValue + CurrentPlayer.Inventory.FishCaught[fishType] * FishValue[fishType];
    CurrentPlayer.Inventory.FishCaught[fishType] := 0; 
  end;
  CurrentPlayer.Money := CurrentPlayer.Money + totalValue;
  writeln('You sold all your fish for ', totalValue, ' money!');
  writeln('Your total money is now: ', CurrentPlayer.Money);
  readln;
end;

end.
