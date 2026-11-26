package com.google.firebase.sessions;

import com.google.firebase.encoders.json.NumberedEnum;
import defpackage.g03;
import defpackage.h03;

/* JADX INFO: loaded from: classes4.dex */
public enum LogEnvironment implements NumberedEnum {
    LOG_ENVIRONMENT_UNKNOWN(0),
    LOG_ENVIRONMENT_AUTOPUSH(1),
    LOG_ENVIRONMENT_STAGING(2),
    LOG_ENVIRONMENT_PROD(3);

    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());
    private final int number;

    LogEnvironment(int i) {
        this.number = i;
    }

    public static g03<LogEnvironment> getEntries() {
        return $ENTRIES;
    }

    @Override // com.google.firebase.encoders.json.NumberedEnum
    public int getNumber() {
        return this.number;
    }
}
