package com.google.firebase.inappmessaging;

import com.google.protobuf.q;

/* JADX INFO: loaded from: classes4.dex */
public enum DismissType implements q.c {
    UNKNOWN_DISMISS_TYPE(0),
    AUTO(1),
    CLICK(2),
    SWIPE(3);

    public static final int AUTO_VALUE = 1;
    public static final int CLICK_VALUE = 2;
    public static final int SWIPE_VALUE = 3;
    public static final int UNKNOWN_DISMISS_TYPE_VALUE = 0;
    private static final q.d<DismissType> internalValueMap = new q.d<DismissType>() { // from class: com.google.firebase.inappmessaging.DismissType.1
        @Override // com.google.protobuf.q.d
        public DismissType findValueByNumber(int i) {
            return DismissType.forNumber(i);
        }
    };
    private final int value;

    public static final class DismissTypeVerifier implements q.e {
        static final q.e INSTANCE = new DismissTypeVerifier();

        private DismissTypeVerifier() {
        }

        @Override // com.google.protobuf.q.e
        public boolean isInRange(int i) {
            return DismissType.forNumber(i) != null;
        }
    }

    DismissType(int i) {
        this.value = i;
    }

    public static DismissType forNumber(int i) {
        if (i == 0) {
            return UNKNOWN_DISMISS_TYPE;
        }
        if (i == 1) {
            return AUTO;
        }
        if (i == 2) {
            return CLICK;
        }
        if (i != 3) {
            return null;
        }
        return SWIPE;
    }

    public static q.d<DismissType> internalGetValueMap() {
        return internalValueMap;
    }

    public static q.e internalGetVerifier() {
        return DismissTypeVerifier.INSTANCE;
    }

    @Override // com.google.protobuf.q.c
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static DismissType valueOf(int i) {
        return forNumber(i);
    }
}
