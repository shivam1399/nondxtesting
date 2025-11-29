trigger ApexTrigger1 on Account (before insert) {
system.debug('hello world');
}