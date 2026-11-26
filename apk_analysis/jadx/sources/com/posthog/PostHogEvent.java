package com.posthog;

import com.google.firebase.messaging.Constants;
import defpackage.aa4;
import defpackage.bq7;
import defpackage.gu8;
import defpackage.jh2;
import defpackage.ul2;
import defpackage.vb6;
import defpackage.xp;
import defpackage.zg;
import java.util.Date;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public final class PostHogEvent {

    @bq7("api_key")
    private String apiKey;

    @bq7("distinct_id")
    private final String distinctId;
    private final String event;

    @bq7(Constants.MessagePayloadKeys.MSGID_SERVER)
    private final UUID messageId;
    private final Map<String, Object> properties;

    @bq7("$set")
    private final Map<String, Object> set;
    private final Date timestamp;
    private final String type;
    private final UUID uuid;

    public /* synthetic */ PostHogEvent(String str, String str2, Map map, Date date, UUID uuid, String str3, UUID uuid2, Map map2, String str4, int i, jh2 jh2Var) {
        this(str, str2, (i & 4) != 0 ? null : map, (i & 8) != 0 ? new Date() : date, (i & 16) != 0 ? gu8.a() : uuid, (i & 32) != 0 ? null : str3, (i & 64) != 0 ? null : uuid2, (i & 128) != 0 ? null : map2, (i & 256) != 0 ? null : str4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PostHogEvent copy$default(PostHogEvent postHogEvent, String str, String str2, Map map, Date date, UUID uuid, String str3, UUID uuid2, Map map2, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = postHogEvent.event;
        }
        if ((i & 2) != 0) {
            str2 = postHogEvent.distinctId;
        }
        if ((i & 4) != 0) {
            map = postHogEvent.properties;
        }
        if ((i & 8) != 0) {
            date = postHogEvent.timestamp;
        }
        if ((i & 16) != 0) {
            uuid = postHogEvent.uuid;
        }
        if ((i & 32) != 0) {
            str3 = postHogEvent.type;
        }
        if ((i & 64) != 0) {
            uuid2 = postHogEvent.messageId;
        }
        if ((i & 128) != 0) {
            map2 = postHogEvent.set;
        }
        if ((i & 256) != 0) {
            str4 = postHogEvent.apiKey;
        }
        Map map3 = map2;
        String str5 = str4;
        String str6 = str3;
        UUID uuid3 = uuid2;
        UUID uuid4 = uuid;
        Map map4 = map;
        return postHogEvent.copy(str, str2, map4, date, uuid4, str6, uuid3, map3, str5);
    }

    @ul2
    public static /* synthetic */ void getMessageId$annotations() {
    }

    @ul2
    public static /* synthetic */ void getSet$annotations() {
    }

    @ul2
    public static /* synthetic */ void getType$annotations() {
    }

    public final String component1() {
        return this.event;
    }

    public final String component2() {
        return this.distinctId;
    }

    public final Map<String, Object> component3() {
        return this.properties;
    }

    public final Date component4() {
        return this.timestamp;
    }

    public final UUID component5() {
        return this.uuid;
    }

    public final String component6() {
        return this.type;
    }

    public final UUID component7() {
        return this.messageId;
    }

    public final Map<String, Object> component8() {
        return this.set;
    }

    public final String component9() {
        return this.apiKey;
    }

    public final PostHogEvent copy(String str, String str2, Map<String, Object> map, Date date, UUID uuid, String str3, UUID uuid2, Map<String, ? extends Object> map2, String str4) {
        str.getClass();
        str2.getClass();
        date.getClass();
        return new PostHogEvent(str, str2, map, date, uuid, str3, uuid2, map2, str4);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PostHogEvent)) {
            return false;
        }
        PostHogEvent postHogEvent = (PostHogEvent) obj;
        return aa4.e(this.event, postHogEvent.event) && aa4.e(this.distinctId, postHogEvent.distinctId) && aa4.e(this.properties, postHogEvent.properties) && aa4.e(this.timestamp, postHogEvent.timestamp) && aa4.e(this.uuid, postHogEvent.uuid) && aa4.e(this.type, postHogEvent.type) && aa4.e(this.messageId, postHogEvent.messageId) && aa4.e(this.set, postHogEvent.set) && aa4.e(this.apiKey, postHogEvent.apiKey);
    }

    public final String getApiKey() {
        return this.apiKey;
    }

    public final String getDistinctId() {
        return this.distinctId;
    }

    public final String getEvent() {
        return this.event;
    }

    public final UUID getMessageId() {
        return this.messageId;
    }

    public final Map<String, Object> getProperties() {
        return this.properties;
    }

    public final Map<String, Object> getSet() {
        return this.set;
    }

    public final Date getTimestamp() {
        return this.timestamp;
    }

    public final String getType() {
        return this.type;
    }

    public final UUID getUuid() {
        return this.uuid;
    }

    public int hashCode() {
        int iB = zg.b(this.event.hashCode() * 31, 31, this.distinctId);
        Map<String, Object> map = this.properties;
        int iHashCode = (this.timestamp.hashCode() + ((iB + (map == null ? 0 : map.hashCode())) * 31)) * 31;
        UUID uuid = this.uuid;
        int iHashCode2 = (iHashCode + (uuid == null ? 0 : uuid.hashCode())) * 31;
        String str = this.type;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        UUID uuid2 = this.messageId;
        int iHashCode4 = (iHashCode3 + (uuid2 == null ? 0 : uuid2.hashCode())) * 31;
        Map<String, Object> map2 = this.set;
        int iHashCode5 = (iHashCode4 + (map2 == null ? 0 : map2.hashCode())) * 31;
        String str2 = this.apiKey;
        return iHashCode5 + (str2 != null ? str2.hashCode() : 0);
    }

    public final boolean isExceptionEvent() {
        return aa4.e(this.event, vb6.EXCEPTION.a());
    }

    public final boolean isFatalExceptionEvent() {
        if (!isExceptionEvent()) {
            return false;
        }
        Map<String, Object> map = this.properties;
        return aa4.e(map != null ? map.get("$exception_level") : null, "fatal");
    }

    public final void setApiKey(String str) {
        this.apiKey = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PostHogEvent(event=");
        sb.append(this.event);
        sb.append(", distinctId=");
        sb.append(this.distinctId);
        sb.append(", properties=");
        sb.append(this.properties);
        sb.append(", timestamp=");
        sb.append(this.timestamp);
        sb.append(", uuid=");
        sb.append(this.uuid);
        sb.append(", type=");
        sb.append(this.type);
        sb.append(", messageId=");
        sb.append(this.messageId);
        sb.append(", set=");
        sb.append(this.set);
        sb.append(", apiKey=");
        return xp.e(sb, this.apiKey, ')');
    }

    public PostHogEvent(String str, String str2, Map<String, Object> map, Date date, UUID uuid, String str3, UUID uuid2, Map<String, ? extends Object> map2, String str4) {
        str.getClass();
        str2.getClass();
        date.getClass();
        this.event = str;
        this.distinctId = str2;
        this.properties = map;
        this.timestamp = date;
        this.uuid = uuid;
        this.type = str3;
        this.messageId = uuid2;
        this.set = map2;
        this.apiKey = str4;
    }
}
