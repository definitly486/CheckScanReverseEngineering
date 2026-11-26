package com.google.firebase.sessions;

import defpackage.aa4;
import defpackage.ca8;
import defpackage.cl4;
import defpackage.df4;
import defpackage.g2;
import defpackage.gu1;
import defpackage.jh2;
import defpackage.mp7;
import defpackage.nm4;
import defpackage.po4;
import defpackage.r96;
import defpackage.re0;
import defpackage.up7;
import defpackage.uq4;
import defpackage.wp7;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
@up7
public final class SessionData {
    private final Time backgroundTime;
    private final Map<String, ProcessData> processDataMap;
    private final SessionDetails sessionDetails;
    public static final Companion Companion = new Companion(null);
    private static final cl4<df4<Object>>[] $childSerializers = {null, null, nm4.a(po4.PUBLICATION, new re0(3))};

    public /* synthetic */ SessionData(int i, SessionDetails sessionDetails, Time time, Map map, wp7 wp7Var) {
        if (1 != (i & 1)) {
            r96.f(SessionData$$serializer.INSTANCE.getDescriptor(), i, 1);
            throw null;
        }
        this.sessionDetails = sessionDetails;
        if ((i & 2) == 0) {
            this.backgroundTime = null;
        } else {
            this.backgroundTime = time;
        }
        if ((i & 4) == 0) {
            this.processDataMap = null;
        } else {
            this.processDataMap = map;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ df4 _childSerializers$_anonymous_() {
        return new uq4(ca8.a, ProcessData$$serializer.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SessionData copy$default(SessionData sessionData, SessionDetails sessionDetails, Time time, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            sessionDetails = sessionData.sessionDetails;
        }
        if ((i & 2) != 0) {
            time = sessionData.backgroundTime;
        }
        if ((i & 4) != 0) {
            map = sessionData.processDataMap;
        }
        return sessionData.copy(sessionDetails, time, map);
    }

    public static final /* synthetic */ void write$Self$com_google_firebase_firebase_sessions(SessionData sessionData, gu1 gu1Var, mp7 mp7Var) {
        cl4<df4<Object>>[] cl4VarArr = $childSerializers;
        gu1Var.encodeSerializableElement(mp7Var, 0, SessionDetails$$serializer.INSTANCE, sessionData.sessionDetails);
        if (gu1Var.shouldEncodeElementDefault(mp7Var, 1) || sessionData.backgroundTime != null) {
            gu1Var.encodeNullableSerializableElement(mp7Var, 1, Time$$serializer.INSTANCE, sessionData.backgroundTime);
        }
        if (!gu1Var.shouldEncodeElementDefault(mp7Var, 2) && sessionData.processDataMap == null) {
            return;
        }
        gu1Var.encodeNullableSerializableElement(mp7Var, 2, cl4VarArr[2].getValue(), sessionData.processDataMap);
    }

    public final SessionDetails component1() {
        return this.sessionDetails;
    }

    public final Time component2() {
        return this.backgroundTime;
    }

    public final Map<String, ProcessData> component3() {
        return this.processDataMap;
    }

    public final SessionData copy(SessionDetails sessionDetails, Time time, Map<String, ProcessData> map) {
        sessionDetails.getClass();
        return new SessionData(sessionDetails, time, map);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SessionData)) {
            return false;
        }
        SessionData sessionData = (SessionData) obj;
        return aa4.e(this.sessionDetails, sessionData.sessionDetails) && aa4.e(this.backgroundTime, sessionData.backgroundTime) && aa4.e(this.processDataMap, sessionData.processDataMap);
    }

    public final Time getBackgroundTime() {
        return this.backgroundTime;
    }

    public final Map<String, ProcessData> getProcessDataMap() {
        return this.processDataMap;
    }

    public final SessionDetails getSessionDetails() {
        return this.sessionDetails;
    }

    public int hashCode() {
        int iHashCode = this.sessionDetails.hashCode() * 31;
        Time time = this.backgroundTime;
        int iHashCode2 = (iHashCode + (time == null ? 0 : time.hashCode())) * 31;
        Map<String, ProcessData> map = this.processDataMap;
        return iHashCode2 + (map != null ? map.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SessionData(sessionDetails=");
        sb.append(this.sessionDetails);
        sb.append(", backgroundTime=");
        sb.append(this.backgroundTime);
        sb.append(", processDataMap=");
        return g2.c(sb, this.processDataMap, ')');
    }

    public static final class Companion {
        private Companion() {
        }

        public final df4<SessionData> serializer() {
            return SessionData$$serializer.INSTANCE;
        }

        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }
    }

    public SessionData(SessionDetails sessionDetails, Time time, Map<String, ProcessData> map) {
        sessionDetails.getClass();
        this.sessionDetails = sessionDetails;
        this.backgroundTime = time;
        this.processDataMap = map;
    }

    public /* synthetic */ SessionData(SessionDetails sessionDetails, Time time, Map map, int i, jh2 jh2Var) {
        this(sessionDetails, (i & 2) != 0 ? null : time, (i & 4) != 0 ? null : map);
    }
}
