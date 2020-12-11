re = %r{(((?<first>\w+)\s)((?<middle>\w+)-)(?<last>(\w+)))?(?<nickname>\w{4})?}
p m = re.match("Rogna Vlad-Alexandru")
p m.named_captures
p m = re.match("Alex")
p m.named_captures

