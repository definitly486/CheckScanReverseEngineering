package com.google.firebase.crashlytics.internal.metadata;

import defpackage.aa4;
import defpackage.g2;
import defpackage.jh2;
import defpackage.mx2;
import defpackage.vg;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class EventMetadata {
    private final Map<String, String> additionalCustomKeys;
    private final String sessionId;
    private final long timestamp;

    public EventMetadata(String str, long j, Map<String, String> map) {
        str.getClass();
        map.getClass();
        this.sessionId = str;
        this.timestamp = j;
        this.additionalCustomKeys = map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ EventMetadata copy$default(EventMetadata eventMetadata, String str, long j, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            str = eventMetadata.sessionId;
        }
        if ((i & 2) != 0) {
            j = eventMetadata.timestamp;
        }
        if ((i & 4) != 0) {
            map = eventMetadata.additionalCustomKeys;
        }
        return eventMetadata.copy(str, j, map);
    }

    public final String component1() {
        return this.sessionId;
    }

    public final long component2() {
        return this.timestamp;
    }

    public final Map<String, String> component3() {
        return this.additionalCustomKeys;
    }

    public final EventMetadata copy(String str, long j, Map<String, String> map) {
        str.getClass();
        map.getClass();
        return new EventMetadata(str, j, map);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EventMetadata)) {
            return false;
        }
        EventMetadata eventMetadata = (EventMetadata) obj;
        return aa4.e(this.sessionId, eventMetadata.sessionId) && this.timestamp == eventMetadata.timestamp && aa4.e(this.additionalCustomKeys, eventMetadata.additionalCustomKeys);
    }

    public final Map<String, String> getAdditionalCustomKeys() {
        return this.additionalCustomKeys;
    }

    public final String getSessionId() {
        return this.sessionId;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }

    public int hashCode() {
        return this.additionalCustomKeys.hashCode() + vg.b(this.sessionId.hashCode() * 31, 31, this.timestamp);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("EventMetadata(sessionId=");
        sb.append(this.sessionId);
        sb.append(", timestamp=");
        sb.append(this.timestamp);
        sb.append(", additionalCustomKeys=");
        return g2.c(sb, this.additionalCustomKeys, ')');
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EventMetadata(String str, long j) {
        this(str, j, null, 4, null);
        str.getClass();
    }

    public /* synthetic */ EventMetadata(String str, long j, Map map, int i, jh2 jh2Var) {
        this(str, j, (i & 4) != 0 ? mx2.b : map);
    }
}
