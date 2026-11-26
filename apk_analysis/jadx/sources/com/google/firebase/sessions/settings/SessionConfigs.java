package com.google.firebase.sessions.settings;

import defpackage.aa4;
import defpackage.df4;
import defpackage.gs0;
import defpackage.gu1;
import defpackage.gw4;
import defpackage.jh2;
import defpackage.mp7;
import defpackage.pq2;
import defpackage.r96;
import defpackage.up7;
import defpackage.wp7;
import defpackage.z74;

/* JADX INFO: loaded from: classes4.dex */
@up7
public final class SessionConfigs {
    public static final Companion Companion = new Companion(null);
    private final Integer cacheDurationSeconds;
    private final Long cacheUpdatedTimeSeconds;
    private final Double sessionSamplingRate;
    private final Integer sessionTimeoutSeconds;
    private final Boolean sessionsEnabled;

    public /* synthetic */ SessionConfigs(int i, Boolean bool, Double d, Integer num, Integer num2, Long l, wp7 wp7Var) {
        if (31 != (i & 31)) {
            r96.f(SessionConfigs$$serializer.INSTANCE.getDescriptor(), i, 31);
            throw null;
        }
        this.sessionsEnabled = bool;
        this.sessionSamplingRate = d;
        this.sessionTimeoutSeconds = num;
        this.cacheDurationSeconds = num2;
        this.cacheUpdatedTimeSeconds = l;
    }

    public static /* synthetic */ SessionConfigs copy$default(SessionConfigs sessionConfigs, Boolean bool, Double d, Integer num, Integer num2, Long l, int i, Object obj) {
        if ((i & 1) != 0) {
            bool = sessionConfigs.sessionsEnabled;
        }
        if ((i & 2) != 0) {
            d = sessionConfigs.sessionSamplingRate;
        }
        if ((i & 4) != 0) {
            num = sessionConfigs.sessionTimeoutSeconds;
        }
        if ((i & 8) != 0) {
            num2 = sessionConfigs.cacheDurationSeconds;
        }
        if ((i & 16) != 0) {
            l = sessionConfigs.cacheUpdatedTimeSeconds;
        }
        Long l2 = l;
        Integer num3 = num;
        return sessionConfigs.copy(bool, d, num3, num2, l2);
    }

    public static final /* synthetic */ void write$Self$com_google_firebase_firebase_sessions(SessionConfigs sessionConfigs, gu1 gu1Var, mp7 mp7Var) {
        gu1Var.encodeNullableSerializableElement(mp7Var, 0, gs0.a, sessionConfigs.sessionsEnabled);
        gu1Var.encodeNullableSerializableElement(mp7Var, 1, pq2.a, sessionConfigs.sessionSamplingRate);
        z74 z74Var = z74.a;
        gu1Var.encodeNullableSerializableElement(mp7Var, 2, z74Var, sessionConfigs.sessionTimeoutSeconds);
        gu1Var.encodeNullableSerializableElement(mp7Var, 3, z74Var, sessionConfigs.cacheDurationSeconds);
        gu1Var.encodeNullableSerializableElement(mp7Var, 4, gw4.a, sessionConfigs.cacheUpdatedTimeSeconds);
    }

    public final Boolean component1() {
        return this.sessionsEnabled;
    }

    public final Double component2() {
        return this.sessionSamplingRate;
    }

    public final Integer component3() {
        return this.sessionTimeoutSeconds;
    }

    public final Integer component4() {
        return this.cacheDurationSeconds;
    }

    public final Long component5() {
        return this.cacheUpdatedTimeSeconds;
    }

    public final SessionConfigs copy(Boolean bool, Double d, Integer num, Integer num2, Long l) {
        return new SessionConfigs(bool, d, num, num2, l);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SessionConfigs)) {
            return false;
        }
        SessionConfigs sessionConfigs = (SessionConfigs) obj;
        return aa4.e(this.sessionsEnabled, sessionConfigs.sessionsEnabled) && aa4.e(this.sessionSamplingRate, sessionConfigs.sessionSamplingRate) && aa4.e(this.sessionTimeoutSeconds, sessionConfigs.sessionTimeoutSeconds) && aa4.e(this.cacheDurationSeconds, sessionConfigs.cacheDurationSeconds) && aa4.e(this.cacheUpdatedTimeSeconds, sessionConfigs.cacheUpdatedTimeSeconds);
    }

    public final Integer getCacheDurationSeconds() {
        return this.cacheDurationSeconds;
    }

    public final Long getCacheUpdatedTimeSeconds() {
        return this.cacheUpdatedTimeSeconds;
    }

    public final Double getSessionSamplingRate() {
        return this.sessionSamplingRate;
    }

    public final Integer getSessionTimeoutSeconds() {
        return this.sessionTimeoutSeconds;
    }

    public final Boolean getSessionsEnabled() {
        return this.sessionsEnabled;
    }

    public int hashCode() {
        Boolean bool = this.sessionsEnabled;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Double d = this.sessionSamplingRate;
        int iHashCode2 = (iHashCode + (d == null ? 0 : d.hashCode())) * 31;
        Integer num = this.sessionTimeoutSeconds;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.cacheDurationSeconds;
        int iHashCode4 = (iHashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Long l = this.cacheUpdatedTimeSeconds;
        return iHashCode4 + (l != null ? l.hashCode() : 0);
    }

    public String toString() {
        return "SessionConfigs(sessionsEnabled=" + this.sessionsEnabled + ", sessionSamplingRate=" + this.sessionSamplingRate + ", sessionTimeoutSeconds=" + this.sessionTimeoutSeconds + ", cacheDurationSeconds=" + this.cacheDurationSeconds + ", cacheUpdatedTimeSeconds=" + this.cacheUpdatedTimeSeconds + ')';
    }

    public static final class Companion {
        private Companion() {
        }

        public final df4<SessionConfigs> serializer() {
            return SessionConfigs$$serializer.INSTANCE;
        }

        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }
    }

    public SessionConfigs(Boolean bool, Double d, Integer num, Integer num2, Long l) {
        this.sessionsEnabled = bool;
        this.sessionSamplingRate = d;
        this.sessionTimeoutSeconds = num;
        this.cacheDurationSeconds = num2;
        this.cacheUpdatedTimeSeconds = l;
    }
}
