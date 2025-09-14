trigger AccountTrigger on Account (before insert) {
    for (Account acc : Trigger.new) {
        if (acc.Name == null) {
            acc.Name = 'Default Account Name';
        }
    }
}
