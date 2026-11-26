package io.appmetrica.analytics.push.intent;

/* JADX INFO: loaded from: classes5.dex */
public enum NotificationActionType {
    CLEAR("clear"),
    CLICK("click"),
    ADDITIONAL_ACTION("additional"),
    INLINE_ACTION("inline");

    private final String a;

    NotificationActionType(String str) {
        this.a = str;
    }

    public static NotificationActionType from(String str) {
        for (NotificationActionType notificationActionType : values()) {
            if (notificationActionType.a.equals(str)) {
                return notificationActionType;
            }
        }
        return null;
    }

    public String getType() {
        return this.a;
    }
}
