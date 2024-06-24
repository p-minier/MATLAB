function chatID = get_lastchatID(Bot)
    warning ("off", "all");
    ExampleRecivedMessages = Bot.getUpdates();
    warning("on", "all");
    if ~isempty(ExampleRecivedMessages().result())
        last_result = ExampleRecivedMessages.result(end);
        chatID = num2str(last_result.message.chat.id);
    else
        chatID = None;
    end
end

