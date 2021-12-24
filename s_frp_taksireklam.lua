spamTimers = {}

function taksiReklamSistemi(localPlayer)
    local isim = getPlayerName(localPlayer)

    if isTimer(spamTimers[localPlayer]) then
		local remainingSeconds = math.ceil(getTimerDetails(spamTimers[localPlayer])/1000)
			outputChatBox("[FRP] #FFFFFFTekrar reklam verebilmek için "..remainingSeconds.." saniye bekleyiniz.", localPlayer, 269, 22, 31, true)
		return
	end

    if getElementData(localPlayer,"job") == 5 then
        outputChatBox("[FAST TAKSİ]: Kızıl Taksi Kaliteli ve Hızlı Hizmet! Taksi Hattı: 200", root, 0, 255, 0, true)
        outputChatBox("[FAST TAKSİ]: "..isim.." isimli şöförümüz sizleri taşımak için hazır!", root, 0, 255, 0, true)
        if isTimer(spamTimers[localPlayer]) then killTimer(spamTimers[localPlayer]) end
		spamTimers[localPlayer] = setTimer(function() end, 7 * 1000, 1)
    else
        outputChatBox("[FRP]:#FFFFFF Taksici olmadığınız için taksi reklam özelliğini kullanamazsınız!", localPlayer, 269, 22, 31, true)
    end
end
addCommandHandler("taksireklam", taksiReklamSistemi)