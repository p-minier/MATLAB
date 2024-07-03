function send_telegram(Message)
    load secret.mat
    MyBot=telegram_bot(bot_ID);
    if nargin == 0
        Stack = dbstack();
        Message = "La simulation <" + Stack(2).name + "> est terminée.";
    end
    warning ("off", "all");
    MyBot.sendMessage(ChatID, Message);
    warning ("on", "all");
end
