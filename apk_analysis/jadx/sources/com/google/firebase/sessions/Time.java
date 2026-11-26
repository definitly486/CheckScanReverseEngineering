package com.google.firebase.sessions;

import defpackage.au2;
import defpackage.df4;
import defpackage.gu1;
import defpackage.jh2;
import defpackage.lg;
import defpackage.mp7;
import defpackage.r96;
import defpackage.up7;
import defpackage.wp7;
import defpackage.wt2;
import defpackage.yt2;

/* JADX INFO: loaded from: classes4.dex */
@up7
public final class Time {
    public static final Companion Companion = new Companion(null);
    private final long ms;
    private final long seconds;
    private final long us;

    public /* synthetic */ Time(int i, long j, long j2, long j3, wp7 wp7Var) {
        if (1 != (i & 1)) {
            r96.f(Time$$serializer.INSTANCE.getDescriptor(), i, 1);
            throw null;
        }
        this.ms = j;
        this.us = (i & 2) == 0 ? j * 1000 : j2;
        if ((i & 4) == 0) {
            this.seconds = j / 1000;
        } else {
            this.seconds = j3;
        }
    }

    public static /* synthetic */ Time copy$default(Time time, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = time.ms;
        }
        return time.copy(j);
    }

    public static final /* synthetic */ void write$Self$com_google_firebase_firebase_sessions(Time time, gu1 gu1Var, mp7 mp7Var) {
        gu1Var.encodeLongElement(mp7Var, 0, time.ms);
        if (gu1Var.shouldEncodeElementDefault(mp7Var, 1) || time.us != time.ms * 1000) {
            gu1Var.encodeLongElement(mp7Var, 1, time.us);
        }
        if (!gu1Var.shouldEncodeElementDefault(mp7Var, 2) && time.seconds == time.ms / 1000) {
            return;
        }
        gu1Var.encodeLongElement(mp7Var, 2, time.seconds);
    }

    public final long component1() {
        return this.ms;
    }

    public final Time copy(long j) {
        return new Time(j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Time) && this.ms == ((Time) obj).ms;
    }

    public final long getMs() {
        return this.ms;
    }

    public final long getSeconds() {
        return this.seconds;
    }

    public final long getUs() {
        return this.us;
    }

    public int hashCode() {
        return Long.hashCode(this.ms);
    }

    /* JADX INFO: renamed from: minus-5sfh64U, reason: not valid java name */
    public final long m9505minus5sfh64U(Time time) {
        time.getClass();
        wt2.a aVar = wt2.c;
        return yt2.f(this.ms - time.ms, au2.MILLISECONDS);
    }

    public String toString() {
        return lg.f(new StringBuilder("Time(ms="), this.ms, ')');
    }

    public static final class Companion {
        private Companion() {
        }

        public final df4<Time> serializer() {
            return Time$$serializer.INSTANCE;
        }

        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }
    }

    public Time(long j) {
        this.ms = j;
        this.us = j * 1000;
        this.seconds = j / 1000;
    }
}
