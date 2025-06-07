(defrule regle-1
  (achat Arma_2_Operation_Arrowhead)
  =>
  (assert (achat Arma_2_Operation_Arrowhead_Beta_Obsolete))
  (printout t "Regle activée : Arma_2_Operation_Arrowhead => Arma_2_Operation_Arrowhead_Beta_Obsolete" crlf))

(defrule regle-2
  (achat Arma_2_Operation_Arrowhead_Beta_Obsolete)
  =>
  (assert (achat Arma_2_Operation_Arrowhead))
  (printout t "Regle activée : Arma_2_Operation_Arrowhead_Beta_Obsolete => Arma_2_Operation_Arrowhead" crlf))

(defrule regle-3
  (achat Call_of_Duty_Black_Ops_Multiplayer)
  =>
  (assert (achat Call_of_Duty_Black_Ops))
  (printout t "Regle activée : Call_of_Duty_Black_Ops_Multiplayer => Call_of_Duty_Black_Ops" crlf))

(defrule regle-4
  (achat Call_of_Duty_Black_Ops)
  =>
  (assert (achat Call_of_Duty_Black_Ops_Multiplayer))
  (printout t "Regle activée : Call_of_Duty_Black_Ops => Call_of_Duty_Black_Ops_Multiplayer" crlf))

(defrule regle-5
  (achat Call_of_Duty_Modern_Warfare_2_Multiplayer)
  =>
  (assert (achat Call_of_Duty_Modern_Warfare_2))
  (printout t "Regle activée : Call_of_Duty_Modern_Warfare_2_Multiplayer => Call_of_Duty_Modern_Warfare_2" crlf))

(defrule regle-6
  (achat Call_of_Duty_Modern_Warfare_2)
  =>
  (assert (achat Call_of_Duty_Modern_Warfare_2_Multiplayer))
  (printout t "Regle activée : Call_of_Duty_Modern_Warfare_2 => Call_of_Duty_Modern_Warfare_2_Multiplayer" crlf))

(defrule regle-7
  (achat Counter_Strike_Condition_Zero)
  =>
  (assert (achat Counter_Strike))
  (printout t "Regle activée : Counter_Strike_Condition_Zero => Counter_Strike" crlf))

(defrule regle-8
  (achat Counter_Strike)
  =>
  (assert (achat Counter_Strike_Condition_Zero))
  (printout t "Regle activée : Counter_Strike => Counter_Strike_Condition_Zero" crlf))

(defrule regle-9
  (achat Counter_Strike_Condition_Zero_Deleted_Scenes)
  =>
  (assert (achat Counter_Strike))
  (printout t "Regle activée : Counter_Strike_Condition_Zero_Deleted_Scenes => Counter_Strike" crlf))

(defrule regle-10
  (achat Counter_Strike)
  =>
  (assert (achat Counter_Strike_Condition_Zero_Deleted_Scenes))
  (printout t "Regle activée : Counter_Strike => Counter_Strike_Condition_Zero_Deleted_Scenes" crlf))

(defrule regle-11
  (achat Day_of_Defeat)
  =>
  (assert (achat Counter_Strike))
  (printout t "Regle activée : Day_of_Defeat => Counter_Strike" crlf))

(defrule regle-12
  (achat Counter_Strike)
  =>
  (assert (achat Day_of_Defeat))
  (printout t "Regle activée : Counter_Strike => Day_of_Defeat" crlf))

(defrule regle-13
  (achat Deathmatch_Classic)
  =>
  (assert (achat Counter_Strike))
  (printout t "Regle activée : Deathmatch_Classic => Counter_Strike" crlf))

(defrule regle-14
  (achat Counter_Strike)
  =>
  (assert (achat Deathmatch_Classic))
  (printout t "Regle activée : Counter_Strike => Deathmatch_Classic" crlf))

(defrule regle-15
  (achat Half_Life)
  =>
  (assert (achat Counter_Strike))
  (printout t "Regle activée : Half_Life => Counter_Strike" crlf))

(defrule regle-16
  (achat Half_Life_Blue_Shift)
  =>
  (assert (achat Counter_Strike))
  (printout t "Regle activée : Half_Life_Blue_Shift => Counter_Strike" crlf))

(defrule regle-17
  (achat Half_Life_Opposing_Force)
  =>
  (assert (achat Counter_Strike))
  (printout t "Regle activée : Half_Life_Opposing_Force => Counter_Strike" crlf))

(defrule regle-18
  (achat Ricochet)
  =>
  (assert (achat Counter_Strike))
  (printout t "Regle activée : Ricochet => Counter_Strike" crlf))

(defrule regle-19
  (achat Counter_Strike)
  =>
  (assert (achat Ricochet))
  (printout t "Regle activée : Counter_Strike => Ricochet" crlf))

(defrule regle-20
  (achat Team_Fortress_Classic)
  =>
  (assert (achat Counter_Strike))
  (printout t "Regle activée : Team_Fortress_Classic => Counter_Strike" crlf))

(defrule regle-21
  (achat Counter_Strike_Condition_Zero)
  =>
  (assert (achat Counter_Strike_Condition_Zero_Deleted_Scenes))
  (printout t "Regle activée : Counter_Strike_Condition_Zero => Counter_Strike_Condition_Zero_Deleted_Scenes" crlf))

(defrule regle-22
  (achat Counter_Strike_Condition_Zero_Deleted_Scenes)
  =>
  (assert (achat Counter_Strike_Condition_Zero))
  (printout t "Regle activée : Counter_Strike_Condition_Zero_Deleted_Scenes => Counter_Strike_Condition_Zero" crlf))

(defrule regle-23
  (achat Day_of_Defeat)
  =>
  (assert (achat Counter_Strike_Condition_Zero))
  (printout t "Regle activée : Day_of_Defeat => Counter_Strike_Condition_Zero" crlf))

(defrule regle-24
  (achat Deathmatch_Classic)
  =>
  (assert (achat Counter_Strike_Condition_Zero))
  (printout t "Regle activée : Deathmatch_Classic => Counter_Strike_Condition_Zero" crlf))

(defrule regle-25
  (achat Ricochet)
  =>
  (assert (achat Counter_Strike_Condition_Zero))
  (printout t "Regle activée : Ricochet => Counter_Strike_Condition_Zero" crlf))

(defrule regle-26
  (achat Day_of_Defeat)
  =>
  (assert (achat Counter_Strike_Condition_Zero_Deleted_Scenes))
  (printout t "Regle activée : Day_of_Defeat => Counter_Strike_Condition_Zero_Deleted_Scenes" crlf))

(defrule regle-27
  (achat Deathmatch_Classic)
  =>
  (assert (achat Counter_Strike_Condition_Zero_Deleted_Scenes))
  (printout t "Regle activée : Deathmatch_Classic => Counter_Strike_Condition_Zero_Deleted_Scenes" crlf))

(defrule regle-28
  (achat Ricochet)
  =>
  (assert (achat Counter_Strike_Condition_Zero_Deleted_Scenes))
  (printout t "Regle activée : Ricochet => Counter_Strike_Condition_Zero_Deleted_Scenes" crlf))

(defrule regle-29
  (achat PAYDAY_2)
  =>
  (assert (achat Counter_Strike_Global_Offensive))
  (printout t "Regle activée : PAYDAY_2 => Counter_Strike_Global_Offensive" crlf))

(defrule regle-30
  (achat Day_of_Defeat_Source)
  =>
  (assert (achat Counter_Strike_Source))
  (printout t "Regle activée : Day_of_Defeat_Source => Counter_Strike_Source" crlf))

(defrule regle-31
  (achat Half_Life_2)
  =>
  (assert (achat Counter_Strike_Source))
  (printout t "Regle activée : Half_Life_2 => Counter_Strike_Source" crlf))

(defrule regle-32
  (achat Counter_Strike_Source)
  =>
  (assert (achat Half_Life_2_Deathmatch))
  (printout t "Regle activée : Counter_Strike_Source => Half_Life_2_Deathmatch" crlf))

(defrule regle-33
  (achat Half_Life_2_Deathmatch)
  =>
  (assert (achat Counter_Strike_Source))
  (printout t "Regle activée : Half_Life_2_Deathmatch => Counter_Strike_Source" crlf))

(defrule regle-34
  (achat Counter_Strike_Source)
  =>
  (assert (achat Half_Life_2_Lost_Coast))
  (printout t "Regle activée : Counter_Strike_Source => Half_Life_2_Lost_Coast" crlf))

(defrule regle-35
  (achat Half_Life_2_Lost_Coast)
  =>
  (assert (achat Counter_Strike_Source))
  (printout t "Regle activée : Half_Life_2_Lost_Coast => Counter_Strike_Source" crlf))

(defrule regle-36
  (achat Day_of_Defeat)
  =>
  (assert (achat Deathmatch_Classic))
  (printout t "Regle activée : Day_of_Defeat => Deathmatch_Classic" crlf))

(defrule regle-37
  (achat Deathmatch_Classic)
  =>
  (assert (achat Day_of_Defeat))
  (printout t "Regle activée : Deathmatch_Classic => Day_of_Defeat" crlf))

(defrule regle-38
  (achat Half_Life)
  =>
  (assert (achat Day_of_Defeat))
  (printout t "Regle activée : Half_Life => Day_of_Defeat" crlf))

(defrule regle-39
  (achat Half_Life_Blue_Shift)
  =>
  (assert (achat Day_of_Defeat))
  (printout t "Regle activée : Half_Life_Blue_Shift => Day_of_Defeat" crlf))

(defrule regle-40
  (achat Half_Life_Opposing_Force)
  =>
  (assert (achat Day_of_Defeat))
  (printout t "Regle activée : Half_Life_Opposing_Force => Day_of_Defeat" crlf))

(defrule regle-41
  (achat Day_of_Defeat)
  =>
  (assert (achat Ricochet))
  (printout t "Regle activée : Day_of_Defeat => Ricochet" crlf))

(defrule regle-42
  (achat Ricochet)
  =>
  (assert (achat Day_of_Defeat))
  (printout t "Regle activée : Ricochet => Day_of_Defeat" crlf))

(defrule regle-43
  (achat Team_Fortress_Classic)
  =>
  (assert (achat Day_of_Defeat))
  (printout t "Regle activée : Team_Fortress_Classic => Day_of_Defeat" crlf))

(defrule regle-44
  (achat Day_of_Defeat_Source)
  =>
  (assert (achat Half_Life_2_Deathmatch))
  (printout t "Regle activée : Day_of_Defeat_Source => Half_Life_2_Deathmatch" crlf))

(defrule regle-45
  (achat Day_of_Defeat_Source)
  =>
  (assert (achat Half_Life_2_Lost_Coast))
  (printout t "Regle activée : Day_of_Defeat_Source => Half_Life_2_Lost_Coast" crlf))

(defrule regle-46
  (achat Half_Life)
  =>
  (assert (achat Deathmatch_Classic))
  (printout t "Regle activée : Half_Life => Deathmatch_Classic" crlf))

(defrule regle-47
  (achat Half_Life_Blue_Shift)
  =>
  (assert (achat Deathmatch_Classic))
  (printout t "Regle activée : Half_Life_Blue_Shift => Deathmatch_Classic" crlf))

(defrule regle-48
  (achat Half_Life_Opposing_Force)
  =>
  (assert (achat Deathmatch_Classic))
  (printout t "Regle activée : Half_Life_Opposing_Force => Deathmatch_Classic" crlf))

(defrule regle-49
  (achat Ricochet)
  =>
  (assert (achat Deathmatch_Classic))
  (printout t "Regle activée : Ricochet => Deathmatch_Classic" crlf))

(defrule regle-50
  (achat Deathmatch_Classic)
  =>
  (assert (achat Ricochet))
  (printout t "Regle activée : Deathmatch_Classic => Ricochet" crlf))

(defrule regle-51
  (achat Team_Fortress_Classic)
  =>
  (assert (achat Deathmatch_Classic))
  (printout t "Regle activée : Team_Fortress_Classic => Deathmatch_Classic" crlf))

(defrule regle-52
  (achat Garry_s_Mod)
  =>
  (assert (achat Team_Fortress_2))
  (printout t "Regle activée : Garry_s_Mod => Team_Fortress_2" crlf))

(defrule regle-53
  (achat Half_Life_Blue_Shift)
  =>
  (assert (achat Half_Life))
  (printout t "Regle activée : Half_Life_Blue_Shift => Half_Life" crlf))

(defrule regle-54
  (achat Half_Life)
  =>
  (assert (achat Half_Life_Blue_Shift))
  (printout t "Regle activée : Half_Life => Half_Life_Blue_Shift" crlf))

(defrule regle-55
  (achat Half_Life)
  =>
  (assert (achat Half_Life_Opposing_Force))
  (printout t "Regle activée : Half_Life => Half_Life_Opposing_Force" crlf))

(defrule regle-56
  (achat Half_Life_Opposing_Force)
  =>
  (assert (achat Half_Life))
  (printout t "Regle activée : Half_Life_Opposing_Force => Half_Life" crlf))

(defrule regle-57
  (achat Half_Life)
  =>
  (assert (achat Ricochet))
  (printout t "Regle activée : Half_Life => Ricochet" crlf))

(defrule regle-58
  (achat Team_Fortress_Classic)
  =>
  (assert (achat Half_Life))
  (printout t "Regle activée : Team_Fortress_Classic => Half_Life" crlf))

(defrule regle-59
  (achat Half_Life)
  =>
  (assert (achat Team_Fortress_Classic))
  (printout t "Regle activée : Half_Life => Team_Fortress_Classic" crlf))

(defrule regle-60
  (achat Half_Life_2)
  =>
  (assert (achat Half_Life_2_Deathmatch))
  (printout t "Regle activée : Half_Life_2 => Half_Life_2_Deathmatch" crlf))

(defrule regle-61
  (achat Half_Life_2_Episode_One)
  =>
  (assert (achat Half_Life_2))
  (printout t "Regle activée : Half_Life_2_Episode_One => Half_Life_2" crlf))

(defrule regle-62
  (achat Half_Life_2_Episode_Two)
  =>
  (assert (achat Half_Life_2))
  (printout t "Regle activée : Half_Life_2_Episode_Two => Half_Life_2" crlf))

(defrule regle-63
  (achat Half_Life_2)
  =>
  (assert (achat Half_Life_2_Lost_Coast))
  (printout t "Regle activée : Half_Life_2 => Half_Life_2_Lost_Coast" crlf))

(defrule regle-64
  (achat Half_Life_2_Lost_Coast)
  =>
  (assert (achat Half_Life_2))
  (printout t "Regle activée : Half_Life_2_Lost_Coast => Half_Life_2" crlf))

(defrule regle-65
  (achat Half_Life_2_Episode_One)
  =>
  (assert (achat Half_Life_2_Deathmatch))
  (printout t "Regle activée : Half_Life_2_Episode_One => Half_Life_2_Deathmatch" crlf))

(defrule regle-66
  (achat Half_Life_2_Deathmatch)
  =>
  (assert (achat Half_Life_2_Lost_Coast))
  (printout t "Regle activée : Half_Life_2_Deathmatch => Half_Life_2_Lost_Coast" crlf))

(defrule regle-67
  (achat Half_Life_2_Lost_Coast)
  =>
  (assert (achat Half_Life_2_Deathmatch))
  (printout t "Regle activée : Half_Life_2_Lost_Coast => Half_Life_2_Deathmatch" crlf))

(defrule regle-68
  (achat Half_Life_Deathmatch_Source)
  =>
  (assert (achat Half_Life_2_Deathmatch))
  (printout t "Regle activée : Half_Life_Deathmatch_Source => Half_Life_2_Deathmatch" crlf))

(defrule regle-69
  (achat Half_Life_2_Episode_Two)
  =>
  (assert (achat Half_Life_2_Episode_One))
  (printout t "Regle activée : Half_Life_2_Episode_Two => Half_Life_2_Episode_One" crlf))

(defrule regle-70
  (achat Half_Life_2_Episode_One)
  =>
  (assert (achat Half_Life_2_Episode_Two))
  (printout t "Regle activée : Half_Life_2_Episode_One => Half_Life_2_Episode_Two" crlf))

(defrule regle-71
  (achat Half_Life_2_Episode_One)
  =>
  (assert (achat Half_Life_2_Lost_Coast))
  (printout t "Regle activée : Half_Life_2_Episode_One => Half_Life_2_Lost_Coast" crlf))

(defrule regle-72
  (achat Half_Life_2_Episode_One)
  =>
  (assert (achat Portal))
  (printout t "Regle activée : Half_Life_2_Episode_One => Portal" crlf))

(defrule regle-73
  (achat Half_Life_2_Episode_Two)
  =>
  (assert (achat Half_Life_2_Lost_Coast))
  (printout t "Regle activée : Half_Life_2_Episode_Two => Half_Life_2_Lost_Coast" crlf))

(defrule regle-74
  (achat Half_Life_2_Episode_Two)
  =>
  (assert (achat Portal))
  (printout t "Regle activée : Half_Life_2_Episode_Two => Portal" crlf))

(defrule regle-75
  (achat Half_Life_Deathmatch_Source)
  =>
  (assert (achat Half_Life_2_Lost_Coast))
  (printout t "Regle activée : Half_Life_Deathmatch_Source => Half_Life_2_Lost_Coast" crlf))

(defrule regle-76
  (achat Portal)
  =>
  (assert (achat Half_Life_2_Lost_Coast))
  (printout t "Regle activée : Portal => Half_Life_2_Lost_Coast" crlf))

(defrule regle-77
  (achat Half_Life_Blue_Shift)
  =>
  (assert (achat Half_Life_Opposing_Force))
  (printout t "Regle activée : Half_Life_Blue_Shift => Half_Life_Opposing_Force" crlf))

(defrule regle-78
  (achat Half_Life_Opposing_Force)
  =>
  (assert (achat Half_Life_Blue_Shift))
  (printout t "Regle activée : Half_Life_Opposing_Force => Half_Life_Blue_Shift" crlf))

(defrule regle-79
  (achat Half_Life_Blue_Shift)
  =>
  (assert (achat Ricochet))
  (printout t "Regle activée : Half_Life_Blue_Shift => Ricochet" crlf))

(defrule regle-80
  (achat Team_Fortress_Classic)
  =>
  (assert (achat Half_Life_Blue_Shift))
  (printout t "Regle activée : Team_Fortress_Classic => Half_Life_Blue_Shift" crlf))

(defrule regle-81
  (achat Half_Life_Blue_Shift)
  =>
  (assert (achat Team_Fortress_Classic))
  (printout t "Regle activée : Half_Life_Blue_Shift => Team_Fortress_Classic" crlf))

(defrule regle-82
  (achat Half_Life_Opposing_Force)
  =>
  (assert (achat Ricochet))
  (printout t "Regle activée : Half_Life_Opposing_Force => Ricochet" crlf))

(defrule regle-83
  (achat Team_Fortress_Classic)
  =>
  (assert (achat Half_Life_Opposing_Force))
  (printout t "Regle activée : Team_Fortress_Classic => Half_Life_Opposing_Force" crlf))

(defrule regle-84
  (achat Half_Life_Opposing_Force)
  =>
  (assert (achat Team_Fortress_Classic))
  (printout t "Regle activée : Half_Life_Opposing_Force => Team_Fortress_Classic" crlf))

(defrule regle-85
  (achat No_More_Room_in_Hell)
  =>
  (assert (achat Unturned))
  (printout t "Regle activée : No_More_Room_in_Hell => Unturned" crlf))

(defrule regle-86
  (achat PAYDAY_2)
  =>
  (assert (achat Team_Fortress_2))
  (printout t "Regle activée : PAYDAY_2 => Team_Fortress_2" crlf))

(defrule regle-87
  (achat Portal_2)
  =>
  (assert (achat Portal))
  (printout t "Regle activée : Portal_2 => Portal" crlf))

(defrule regle-88
  (achat Team_Fortress_Classic)
  =>
  (assert (achat Ricochet))
  (printout t "Regle activée : Team_Fortress_Classic => Ricochet" crlf))

(defrule regle-89
  (achat Robocraft)
  =>
  (assert (achat Unturned))
  (printout t "Regle activée : Robocraft => Unturned" crlf))

(defrule regle-90
  (achat Terraria)
  =>
  (assert (achat Team_Fortress_2))
  (printout t "Regle activée : Terraria => Team_Fortress_2" crlf))

(defrule regle-91
  (achat The_Elder_Scrolls_V_Skyrim_Dawnguard)
  =>
  (assert (achat The_Elder_Scrolls_V_Skyrim))
  (printout t "Regle activée : The_Elder_Scrolls_V_Skyrim_Dawnguard => The_Elder_Scrolls_V_Skyrim" crlf))

(defrule regle-92
  (achat The_Elder_Scrolls_V_Skyrim_Dragonborn)
  =>
  (assert (achat The_Elder_Scrolls_V_Skyrim))
  (printout t "Regle activée : The_Elder_Scrolls_V_Skyrim_Dragonborn => The_Elder_Scrolls_V_Skyrim" crlf))

(defrule regle-93
  (achat The_Elder_Scrolls_V_Skyrim_Hearthfire)
  =>
  (assert (achat The_Elder_Scrolls_V_Skyrim))
  (printout t "Regle activée : The_Elder_Scrolls_V_Skyrim_Hearthfire => The_Elder_Scrolls_V_Skyrim" crlf))

(defrule regle-94
  (achat The_Elder_Scrolls_V_Skyrim_Dawnguard)
  =>
  (assert (achat The_Elder_Scrolls_V_Skyrim_Dragonborn))
  (printout t "Regle activée : The_Elder_Scrolls_V_Skyrim_Dawnguard => The_Elder_Scrolls_V_Skyrim_Dragonborn" crlf))

(defrule regle-95
  (achat The_Elder_Scrolls_V_Skyrim_Dragonborn)
  =>
  (assert (achat The_Elder_Scrolls_V_Skyrim_Dawnguard))
  (printout t "Regle activée : The_Elder_Scrolls_V_Skyrim_Dragonborn => The_Elder_Scrolls_V_Skyrim_Dawnguard" crlf))

(defrule regle-96
  (achat The_Elder_Scrolls_V_Skyrim_Dawnguard)
  =>
  (assert (achat The_Elder_Scrolls_V_Skyrim_Hearthfire))
  (printout t "Regle activée : The_Elder_Scrolls_V_Skyrim_Dawnguard => The_Elder_Scrolls_V_Skyrim_Hearthfire" crlf))

(defrule regle-97
  (achat The_Elder_Scrolls_V_Skyrim_Hearthfire)
  =>
  (assert (achat The_Elder_Scrolls_V_Skyrim_Dawnguard))
  (printout t "Regle activée : The_Elder_Scrolls_V_Skyrim_Hearthfire => The_Elder_Scrolls_V_Skyrim_Dawnguard" crlf))

(defrule regle-98
  (achat The_Elder_Scrolls_V_Skyrim_Dragonborn)
  =>
  (assert (achat The_Elder_Scrolls_V_Skyrim_Hearthfire))
  (printout t "Regle activée : The_Elder_Scrolls_V_Skyrim_Dragonborn => The_Elder_Scrolls_V_Skyrim_Hearthfire" crlf))

(defrule regle-99
  (achat The_Elder_Scrolls_V_Skyrim_Hearthfire)
  =>
  (assert (achat The_Elder_Scrolls_V_Skyrim_Dragonborn))
  (printout t "Regle activée : The_Elder_Scrolls_V_Skyrim_Hearthfire => The_Elder_Scrolls_V_Skyrim_Dragonborn" crlf))

(defrule regle-100
  (achat Trove)
  =>
  (assert (achat Unturned))
  (printout t "Regle activée : Trove => Unturned" crlf))

