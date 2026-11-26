package com.google.firebase.sessions;

import com.google.firebase.encoders.json.NumberedEnum;
import defpackage.g03;
import defpackage.h03;

/* JADX INFO: loaded from: classes4.dex */
public enum DataCollectionState implements NumberedEnum {
    COLLECTION_UNKNOWN(0),
    COLLECTION_SDK_NOT_INSTALLED(1),
    COLLECTION_ENABLED(2),
    COLLECTION_DISABLED(3),
    COLLECTION_DISABLED_REMOTE(4),
    COLLECTION_SAMPLED(5);

    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());
    private final int number;

    DataCollectionState(int i) {
        this.number = i;
    }

    public static g03<DataCollectionState> getEntries() {
        return $ENTRIES;
    }

    @Override // com.google.firebase.encoders.json.NumberedEnum
    public int getNumber() {
        return this.number;
    }
}
