package com.google.firebase.perf.v1;

import com.google.protobuf.q;

/* JADX INFO: loaded from: classes4.dex */
public enum SessionVerbosity implements q.c {
    SESSION_VERBOSITY_NONE(0),
    GAUGES_AND_SYSTEM_EVENTS(1);

    public static final int GAUGES_AND_SYSTEM_EVENTS_VALUE = 1;
    public static final int SESSION_VERBOSITY_NONE_VALUE = 0;
    private static final q.d<SessionVerbosity> internalValueMap = new q.d<SessionVerbosity>() { // from class: com.google.firebase.perf.v1.SessionVerbosity.1
        @Override // com.google.protobuf.q.d
        public SessionVerbosity findValueByNumber(int i) {
            return SessionVerbosity.forNumber(i);
        }
    };
    private final int value;

    public static final class SessionVerbosityVerifier implements q.e {
        static final q.e INSTANCE = new SessionVerbosityVerifier();

        private SessionVerbosityVerifier() {
        }

        @Override // com.google.protobuf.q.e
        public boolean isInRange(int i) {
            return SessionVerbosity.forNumber(i) != null;
        }
    }

    SessionVerbosity(int i) {
        this.value = i;
    }

    public static SessionVerbosity forNumber(int i) {
        if (i == 0) {
            return SESSION_VERBOSITY_NONE;
        }
        if (i != 1) {
            return null;
        }
        return GAUGES_AND_SYSTEM_EVENTS;
    }

    public static q.d<SessionVerbosity> internalGetValueMap() {
        return internalValueMap;
    }

    public static q.e internalGetVerifier() {
        return SessionVerbosityVerifier.INSTANCE;
    }

    @Override // com.google.protobuf.q.c
    public final int getNumber() {
        return this.value;
    }

    @Deprecated
    public static SessionVerbosity valueOf(int i) {
        return forNumber(i);
    }
}
