package com.google.firebase.sessions;

import android.os.SystemClock;
import defpackage.au2;
import defpackage.wt2;
import defpackage.yt2;

/* JADX INFO: loaded from: classes4.dex */
public final class TimeProviderImpl implements TimeProvider {
    public static final TimeProviderImpl INSTANCE = new TimeProviderImpl();

    private TimeProviderImpl() {
    }

    @Override // com.google.firebase.sessions.TimeProvider
    public Time currentTime() {
        return new Time(System.currentTimeMillis());
    }

    @Override // com.google.firebase.sessions.TimeProvider
    /* JADX INFO: renamed from: elapsedRealtime-UwyO8pc */
    public long mo9506elapsedRealtimeUwyO8pc() {
        wt2.a aVar = wt2.c;
        return yt2.f(SystemClock.elapsedRealtime(), au2.MILLISECONDS);
    }
}
