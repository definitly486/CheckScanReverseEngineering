package com.google.firebase.inappmessaging;

import com.google.protobuf.q;

/* JADX INFO: loaded from: classes4.dex */
public enum RenderErrorReason implements q.c {
    UNSPECIFIED_RENDER_ERROR(0),
    IMAGE_FETCH_ERROR(1),
    IMAGE_DISPLAY_ERROR(2),
    IMAGE_UNSUPPORTED_FORMAT(3);

    public static final int IMAGE_DISPLAY_ERROR_VALUE = 2;
    public static final int IMAGE_FETCH_ERROR_VALUE = 1;
    public static final int IMAGE_UNSUPPORTED_FORMAT_VALUE = 3;
    public static final int UNSPECIFIED_RENDER_ERROR_VALUE = 0;
    private static final q.d<RenderErrorReason> internalValueMap = new q.d<RenderErrorReason>() { // from class: com.google.firebase.inappmessaging.RenderErrorReason.1
        @Override // com.google.protobuf.q.d
        public RenderErrorReason findValueByNumber(int i) {
            return RenderErrorReason.forNumber(i);
        }
    };
    private final int value;

    public static final class RenderErrorReasonVerifier implements q.e {
        static final q.e INSTANCE = new RenderErrorReasonVerifier();

        private RenderErrorReasonVerifier() {
        }

        @Override // com.google.protobuf.q.e
        public boolean isInRange(int i) {
            return RenderErrorReason.forNumber(i) != null;
        }
    }

    RenderErrorReason(int i) {
        this.value = i;
    }

    public static RenderErrorReason forNumber(int i) {
        if (i == 0) {
            return UNSPECIFIED_RENDER_ERROR;
        }
        if (i == 1) {
            return IMAGE_FETCH_ERROR;
        }
        if (i == 2) {
            return IMAGE_DISPLAY_ERROR;
        }
        if (i != 3) {
            return null;
        }
        return IMAGE_UNSUPPORTED_FORMAT;
    }

    public static q.d<RenderErrorReason> internalGetValueMap() {
        return internalValueMap;
    }

    public static q.e internalGetVerifier() {
        return RenderErrorReasonVerifier.INSTANCE;
    }

    @Override // com.google.protobuf.q.c
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static RenderErrorReason valueOf(int i) {
        return forNumber(i);
    }
}
