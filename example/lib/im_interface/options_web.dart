import 'connect/connect.dart' as connect;
import 'connect/connect_web.dart' as connect_web;
import 'conversation/conversation.dart' as conversation;
import 'message/message.dart' as message;
import 'message/message_web.dart' as message_web;
import 'unread/unread.dart' as unread;
import 'unread/unread_web.dart' as unread_web;
import 'chatroom/chatroom.dart' as chatroom;
import 'ultragroup/ultragroup.dart' as ultragroup;
import 'ultragroup/ultragroup_web.dart' as ultragroup_web;
import 'other/other.dart' as other;

const titleList = [
  "链接相关",
  "会话相关",
  "消息相关",
  "未读数相关",
  "聊天室相关",
  "超级群相关",
  "其他配置",
];

const subList = {
  "其他配置": [
    // other.addToBlacklist,
    // other.removeFromBlacklist,
    // other.loadBlacklistStatus,
    // other.loadBlacklist,
    // other.changeNotificationQuietHours,
    // other.removeNotificationQuietHours,
    // other.loadNotificationQuietHours,
    // other.changePushContentShowStatus,
    // other.changePushLanguage,
    // other.changePushReceiveStatus,
    // other.changeLogLevel,
    other.getDeltaTime,
  ],
  "聊天室相关": [
    chatroom.joinChatRoom,
    chatroom.leaveChatRoom,
    chatroom.loadChatRoomMessages,
    chatroom.addChatRoomEntry,
    chatroom.addChatRoomEntries,
    chatroom.loadChatRoomEntry,
    chatroom.loadAllChatRoomEntries,
    chatroom.removeChatRoomEntry,
    chatroom.removeChatRoomEntries,
  ],
  "超级群相关": [
    ultragroup.syncUltraGroupReadStatus,
    ultragroup.loadConversationsForAllChannel,
    ultragroup.loadUltraGroupUnreadMentionedCount,
    ultragroup_web.modifyUltraGroupMessage,
    ultragroup_web.recallUltraGroupMessage,
    ultragroup.clearUltraGroupMessages,
    ultragroup.sendUltraGroupTypingStatus,
    // ultragroup.clearUltraGroupMessagesForAllChannel,
    ultragroup_web.loadBatchRemoteUltraGroupMessages,
    ultragroup_web.updateUltraGroupMessageExpansion,
    ultragroup_web.removeUltraGroupMessageExpansion,
    ultragroup.changeUltraGroupDefaultNotificationLevel,
    ultragroup.loadUltraGroupDefaultNotificationLevel,
    ultragroup.changeUltraGroupChannelDefaultNotificationLevel,
    ultragroup.loadUltraGroupChannelDefaultNotificationLevel,
    ultragroup.loadUltraGroupAllUnreadCount,
    ultragroup.loadUltraGroupAllUnreadMentionedCount,
    ultragroup.loadUltraGroupUnreadCount,
  ],
  "未读数相关": [
    unread.loadUnreadCount,
    unread.loadTotalUnreadCount,
    unread_web.loadUnreadCountByConversationTypes,
    unread.loadUnreadMentionedCount,
    unread.clearUnreadCount,
  ],
  "链接相关": [
    connect_web.initEngine,
    connect.connect,
    connect_web.disconnect,
    connect_web.setListener,
    connect.destroy,
  ],
  "会话相关": [
    conversation.loadConversations,
    conversation.loadConversation,
    conversation.removeConversation,
    // conversation.removeConversations,
    conversation.saveDraftMessage,
    conversation.loadDraftMessage,
    conversation.clearDraftMessage,
    conversation.changeConversationNotificationLevel,
    conversation.loadConversationNotificationLevel,
    conversation.loadBlockedConversations,
    conversation.changeConversationTopStatus,
    conversation.loadConversationTopStatus,
    conversation.loadTopConversations,
    conversation.syncConversationReadStatus,
    // conversation.searchConversations,
    // conversation.loadMessageCount,
  ],
  "消息相关": [
    message.sendTextMessage,
    message_web.sendImageMessage,
    message_web.sendFileMessage,
    message_web.sendVoiceMessage,
    message_web.sendSightMessage,
    message_web.sendReferenceMessage,
    message_web.sendGIFMessage,
    message_web.sendLocationMessage,
    message.sendCustomMessage,
    // message.cancelSendingMediaMessage,
    // message.downloadMediaMessage,
    // message.cancelDownloadingMediaMessage,
    message_web.sendTypingStatus,
    message_web.loadMessages,
    // message.getMessageById,
    // message.getMessageByUId,
    // message.loadFirstUnreadMessage,
    // message.loadUnreadMentionedMessages,
    // message.insertMessage,
    // message.insertMessages,
    message_web.clearMessages,
    // message.deleteLocalMessages,
    message_web.deleteMessages,
    message_web.recallMessage,
    message_web.sendPrivateReadReceiptMessage,
    message_web.sendGroupReadReceiptRequest,
    message_web.sendGroupReadReceiptResponse,
    message_web.updateMessageExpansion,
    message_web.removeMessageExpansionForKeys,
    // message.changeMessageSentStatus,
    // message.changeMessageReceiveStatus,
    // message.searchMessages,
    // message.searchMessagesByTimeRange,
    // message.searchMessagesByUserId,
    message_web.sendGroupMessageToDesignatedUsers,
  ],
  "临时接口": [],
};

const cbList = [
  "connect",
  "sendMessage",
  "sendMediaMessage",
  "cancelSendingMediaMessage",
  "downloadMediaMessage",
  "cancelDownloadingMediaMessage",
  "getConversation",
  "getConversations",
  "removeConversation",
  "removeConversations",
  "getUnreadCount",
  "getTotalUnreadCount",
  "getUnreadMentionedCount",
  "getUltraGroupAllUnreadCount",
  "getUltraGroupAllUnreadMentionedCount",
  "getUltraGroupUnreadCount",
  "getUltraGroupUnreadMentionedCount",
  "getUnreadCountByConversationTypes",
  "clearUnreadCount",
  "saveDraftMessage",
  "getDraftMessage",
  "clearDraftMessage",
  "getBlockedConversations",
  "changeConversationTopStatus",
  "getConversationTopStatus",
  "syncConversationReadStatus",
  "getMessages",
  "getMessageById",
  "getMessageByUId",
  "getFirstUnreadMessage",
  "getUnreadMentionedMessages",
  "insertMessage",
  "insertMessages",
  "clearMessages",
  "deleteLocalMessages",
  "deleteMessages",
  "recallMessage",
  "sendPrivateReadReceiptMessage",
  "sendGroupReadReceiptRequest",
  "sendGroupReadReceiptResponse",
  "updateMessageExpansion",
  "removeMessageExpansionForKeys",
  "changeMessageSentStatus",
  "changeMessageReceiveStatus",
  "joinChatRoom",
  "leaveChatRoom",
  "getChatRoomMessages",
  "addChatRoomEntry",
  "addChatRoomEntries",
  "getChatRoomEntry",
  "getChatRoomAllEntries",
  "removeChatRoomEntry",
  "removeChatRoomEntries",
  "addToBlacklist",
  "removeFromBlacklist",
  "getBlacklistStatus",
  "getBlacklist",
  "searchMessages",
  "searchMessagesByTimeRange",
  "searchMessagesByUserId",
  "searchConversations",
  "changeNotificationQuietHours",
  "removeNotificationQuietHours",
  "getNotificationQuietHours",
  "changeConversationNotificationLevel",
  "getConversationNotificationLevel",
  "changeConversationTypeNotificationLevel",
  "getConversationTypeNotificationLevel",
  "changeUltraGroupDefaultNotificationLevel",
  "getUltraGroupDefaultNotificationLevel",
  "changeUltraGroupChannelDefaultNotificationLevel",
  "getUltraGroupChannelDefaultNotificationLevel",
  "changePushContentShowStatus",
  "changePushLanguage",
  "changePushReceiveStatus",
  "sendGroupMessageToDesignatedUsers",
  "getMessageCount",
  "getTopConversations",
  "syncUltraGroupReadStatus",
  "getConversationsForAllChannel",
  "modifyUltraGroupMessage",
  "recallUltraGroupMessage",
  "clearUltraGroupMessages",
  "sendUltraGroupTypingStatus",
  "clearUltraGroupMessagesForAllChannel",
  "getBatchRemoteUltraGroupMessages",
  "updateUltraGroupMessageExpansion",
  "removeUltraGroupMessageExpansionForKeys"
];

const cbParam = {
  "key": "use_cb",
  "type": "number",
  "hint": "0为不使用 1为使用,默认不填为使用",
  "lable": "请输入是否使用callback",
};
