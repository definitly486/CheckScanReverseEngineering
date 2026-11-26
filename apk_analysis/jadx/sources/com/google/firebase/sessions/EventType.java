package com.google.firebase.sessions;

import com.google.firebase.encoders.json.NumberedEnum;
import defpackage.g03;
import defpackage.h03;

/* JADX INFO: loaded from: classes4.dex */
public enum EventType implements NumberedEnum {
    EVENT_TYPE_UNKNOWN(0),
    SESSION_START(1);

    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());
    private final int number;

    EventType(int i) {
        this.number = i;
    }

    public static g03<EventType> getEntries() {
        return $ENTRIES;
    }

    @Override // com.google.firebase.encoders.json.NumberedEnum
    public int getNumber() {
        return this.number;
    }
}
