# 
# Description:
#   �a�������j����
#
# Commands:
#   
#

cronJob = require('cron').CronJob

module.exports = (robot) ->

  bdSay = (slackname, name, month, day) ->
    # �u�b�v�u���v�u���v�u���v�u���v�u�j���v
    # ����0�`11
    month2 = Number(month)-1
    cronTime = "0 0 9 #{day} #{month2} *"
    new cronJob(cronTime, () =>
      envelope = room: "<���b�Z�[�W���������`�����l��>"
      say = """
      ```
      #{month} �� #{day} ���� #{name} �̒a�����I
      �@�@�@ .���.߁B.�B
      �@�@�:���E�B߁�*.ߡ
      �@ ���.���.�����:*�.
      �@.߁�.�;���.:*��.ߡ
      �@ :*�_�����_��*�_�
      �@�@�_�́@�_�@ �ā^
      �@�@�@��_�ȁ_ ��
      �@�@ (`��֥)�^
      �@�@ /�@ ��o�@����ĳ!!
      ```
      HAPPY BIRTHDAY! @#{slackname}
      """
      robot.send envelope, say
    , null, true
    )

  bdSay('i03nomura1y', 'nom����', 12, 22)
  bdSay('koji', 'koji����', 2, 8)
  bdSay('allen', 'nishiyama����', 7, 24)
  bdSay('masaya', 'masaya����', 7, 14)
  