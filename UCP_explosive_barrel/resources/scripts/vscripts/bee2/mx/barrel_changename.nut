function OnPostSpawn() {
    local prefix = split(self.GetName(),"-")[0]
    self.__KeyValueFromString("targetname",prefix+"-box2")
    self.__KeyValueFromString("cubetype","0")
}

// Overide fizzling
function EnableExplosion(){
    this.InputDissolve <- function(){
        EntFireByHandle(self,"Break","",0,self,self)
        return false
    }
}
