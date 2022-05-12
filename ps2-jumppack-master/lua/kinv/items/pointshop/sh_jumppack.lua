ITEM.baseClass = "base_pointshop_item"
ITEM.PrintName = "Jump Pack"
ITEM.Description = "Equip this to get more Jump Power!"
ITEM.static.Price = {
    points = 0
}

function ITEM:PlayerSpawn( ply )
    if ply != self:GetOwner( ) then
        return
    end

    local oldJumpPower = ply:GetJumpPower( )
    timer.Simple( 0.5, function ( ) 
        ply:SetJumpPower( oldJumpPower * 2 )
    end )
end
Pointshop2.AddItemHook( "PlayerSpawn", ITEM )