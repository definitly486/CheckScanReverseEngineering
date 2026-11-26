package com.google.firebase.sessions;

import defpackage.aa4;
import defpackage.df4;
import defpackage.ej0;
import defpackage.gu1;
import defpackage.jh2;
import defpackage.lg;
import defpackage.mp7;
import defpackage.r96;
import defpackage.up7;
import defpackage.wp7;
import defpackage.zg;

/* JADX INFO: loaded from: classes4.dex */
@up7
public final class SessionDetails {
    public static final Companion Companion = new Companion(null);
    private final String firstSessionId;
    private final String sessionId;
    private final int sessionIndex;
    private final long sessionStartTimestampUs;

    public /* synthetic */ SessionDetails(int i, String str, String str2, int i2, long j, wp7 wp7Var) {
        if (15 != (i & 15)) {
            r96.f(SessionDetails$$serializer.INSTANCE.getDescriptor(), i, 15);
            throw null;
        }
        this.sessionId = str;
        this.firstSessionId = str2;
        this.sessionIndex = i2;
        this.sessionStartTimestampUs = j;
    }

    public static /* synthetic */ SessionDetails copy$default(SessionDetails sessionDetails, String str, String str2, int i, long j, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = sessionDetails.sessionId;
        }
        if ((i2 & 2) != 0) {
            str2 = sessionDetails.firstSessionId;
        }
        if ((i2 & 4) != 0) {
            i = sessionDetails.sessionIndex;
        }
        if ((i2 & 8) != 0) {
            j = sessionDetails.sessionStartTimestampUs;
        }
        int i3 = i;
        return sessionDetails.copy(str, str2, i3, j);
    }

    public static final /* synthetic */ void write$Self$com_google_firebase_firebase_sessions(SessionDetails sessionDetails, gu1 gu1Var, mp7 mp7Var) {
        gu1Var.encodeStringElement(mp7Var, 0, sessionDetails.sessionId);
        gu1Var.encodeStringElement(mp7Var, 1, sessionDetails.firstSessionId);
        gu1Var.encodeIntElement(mp7Var, 2, sessionDetails.sessionIndex);
        gu1Var.encodeLongElement(mp7Var, 3, sessionDetails.sessionStartTimestampUs);
    }

    public final String component1() {
        return this.sessionId;
    }

    public final String component2() {
        return this.firstSessionId;
    }

    public final int component3() {
        return this.sessionIndex;
    }

    public final long component4() {
        return this.sessionStartTimestampUs;
    }

    public final SessionDetails copy(String str, String str2, int i, long j) {
        str.getClass();
        str2.getClass();
        return new SessionDetails(str, str2, i, j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SessionDetails)) {
            return false;
        }
        SessionDetails sessionDetails = (SessionDetails) obj;
        return aa4.e(this.sessionId, sessionDetails.sessionId) && aa4.e(this.firstSessionId, sessionDetails.firstSessionId) && this.sessionIndex == sessionDetails.sessionIndex && this.sessionStartTimestampUs == sessionDetails.sessionStartTimestampUs;
    }

    public final String getFirstSessionId() {
        return this.firstSessionId;
    }

    public final String getSessionId() {
        return this.sessionId;
    }

    public final int getSessionIndex() {
        return this.sessionIndex;
    }

    public final long getSessionStartTimestampUs() {
        return this.sessionStartTimestampUs;
    }

    public int hashCode() {
        return Long.hashCode(this.sessionStartTimestampUs) + ej0.b(this.sessionIndex, zg.b(this.sessionId.hashCode() * 31, 31, this.firstSessionId), 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SessionDetails(sessionId=");
        sb.append(this.sessionId);
        sb.append(", firstSessionId=");
        sb.append(this.firstSessionId);
        sb.append(", sessionIndex=");
        sb.append(this.sessionIndex);
        sb.append(", sessionStartTimestampUs=");
        return lg.f(sb, this.sessionStartTimestampUs, ')');
    }

    public static final class Companion {
        private Companion() {
        }

        public final df4<SessionDetails> serializer() {
            return SessionDetails$$serializer.INSTANCE;
        }

        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }
    }

    public SessionDetails(String str, String str2, int i, long j) {
        str.getClass();
        str2.getClass();
        this.sessionId = str;
        this.firstSessionId = str2;
        this.sessionIndex = i;
        this.sessionStartTimestampUs = j;
    }
}
