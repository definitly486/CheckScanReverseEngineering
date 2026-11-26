package com.posthog.internal.replay;

import defpackage.jh2;

/* JADX INFO: loaded from: classes4.dex */
public class RREvent {
    private final Object data;
    private final long timestamp;
    private final RREventType type;

    public RREvent(RREventType rREventType, long j, Object obj) {
        rREventType.getClass();
        this.type = rREventType;
        this.timestamp = j;
        this.data = obj;
    }

    public final Object getData() {
        return this.data;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }

    public final RREventType getType() {
        return this.type;
    }

    public /* synthetic */ RREvent(RREventType rREventType, long j, Object obj, int i, jh2 jh2Var) {
        this(rREventType, j, (i & 4) != 0 ? null : obj);
    }
}
