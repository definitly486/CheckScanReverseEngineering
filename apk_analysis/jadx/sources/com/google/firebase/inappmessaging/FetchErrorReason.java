package com.google.firebase.inappmessaging;

import com.google.protobuf.q;

/* JADX INFO: loaded from: classes4.dex */
public enum FetchErrorReason implements q.c {
    UNSPECIFIED_FETCH_ERROR(0),
    SERVER_ERROR(1),
    CLIENT_ERROR(2),
    NETWORK_ERROR(3);

    public static final int CLIENT_ERROR_VALUE = 2;
    public static final int NETWORK_ERROR_VALUE = 3;
    public static final int SERVER_ERROR_VALUE = 1;
    public static final int UNSPECIFIED_FETCH_ERROR_VALUE = 0;
    private static final q.d<FetchErrorReason> internalValueMap = new q.d<FetchErrorReason>() { // from class: com.google.firebase.inappmessaging.FetchErrorReason.1
        @Override // com.google.protobuf.q.d
        public FetchErrorReason findValueByNumber(int i) {
            return FetchErrorReason.forNumber(i);
        }
    };
    private final int value;

    public static final class FetchErrorReasonVerifier implements q.e {
        static final q.e INSTANCE = new FetchErrorReasonVerifier();

        private FetchErrorReasonVerifier() {
        }

        @Override // com.google.protobuf.q.e
        public boolean isInRange(int i) {
            return FetchErrorReason.forNumber(i) != null;
        }
    }

    FetchErrorReason(int i) {
        this.value = i;
    }

    public static FetchErrorReason forNumber(int i) {
        if (i == 0) {
            return UNSPECIFIED_FETCH_ERROR;
        }
        if (i == 1) {
            return SERVER_ERROR;
        }
        if (i == 2) {
            return CLIENT_ERROR;
        }
        if (i != 3) {
            return null;
        }
        return NETWORK_ERROR;
    }

    public static q.d<FetchErrorReason> internalGetValueMap() {
        return internalValueMap;
    }

    public static q.e internalGetVerifier() {
        return FetchErrorReasonVerifier.INSTANCE;
    }

    @Override // com.google.protobuf.q.c
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static FetchErrorReason valueOf(int i) {
        return forNumber(i);
    }
}
