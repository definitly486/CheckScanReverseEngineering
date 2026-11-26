package com.google.firebase.perf.v1;

import com.google.protobuf.q;

/* JADX INFO: loaded from: classes4.dex */
public enum ApplicationProcessState implements q.c {
    APPLICATION_PROCESS_STATE_UNKNOWN(0),
    FOREGROUND(1),
    BACKGROUND(2),
    FOREGROUND_BACKGROUND(3);

    public static final int APPLICATION_PROCESS_STATE_UNKNOWN_VALUE = 0;
    public static final int BACKGROUND_VALUE = 2;
    public static final int FOREGROUND_BACKGROUND_VALUE = 3;
    public static final int FOREGROUND_VALUE = 1;
    private static final q.d<ApplicationProcessState> internalValueMap = new q.d<ApplicationProcessState>() { // from class: com.google.firebase.perf.v1.ApplicationProcessState.1
        @Override // com.google.protobuf.q.d
        public ApplicationProcessState findValueByNumber(int i) {
            return ApplicationProcessState.forNumber(i);
        }
    };
    private final int value;

    public static final class ApplicationProcessStateVerifier implements q.e {
        static final q.e INSTANCE = new ApplicationProcessStateVerifier();

        private ApplicationProcessStateVerifier() {
        }

        @Override // com.google.protobuf.q.e
        public boolean isInRange(int i) {
            return ApplicationProcessState.forNumber(i) != null;
        }
    }

    ApplicationProcessState(int i) {
        this.value = i;
    }

    public static ApplicationProcessState forNumber(int i) {
        if (i == 0) {
            return APPLICATION_PROCESS_STATE_UNKNOWN;
        }
        if (i == 1) {
            return FOREGROUND;
        }
        if (i == 2) {
            return BACKGROUND;
        }
        if (i != 3) {
            return null;
        }
        return FOREGROUND_BACKGROUND;
    }

    public static q.d<ApplicationProcessState> internalGetValueMap() {
        return internalValueMap;
    }

    public static q.e internalGetVerifier() {
        return ApplicationProcessStateVerifier.INSTANCE;
    }

    @Override // com.google.protobuf.q.c
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static ApplicationProcessState valueOf(int i) {
        return forNumber(i);
    }
}
