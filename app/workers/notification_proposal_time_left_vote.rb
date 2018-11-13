class NotificationProposalTimeLeftVote < NotificationProposalTimeLeft
  def receivers
    return @proposal.group_area.scoped_participants(:vote_proposals) if @proposal.group_area
    return @proposal.group.scoped_participants(:vote_proposals) if @proposal.group
    @proposal.participants
  end
end
