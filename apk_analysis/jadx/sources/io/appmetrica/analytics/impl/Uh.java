package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.profile.UserProfile;

/* JADX INFO: loaded from: classes5.dex */
public final class Uh implements Runnable {
    public final /* synthetic */ UserProfile a;
    public final /* synthetic */ C1157oi b;

    public Uh(C1157oi c1157oi, UserProfile userProfile) {
        this.b = c1157oi;
        this.a = userProfile;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1157oi c1157oi = this.b;
        C1157oi.a(c1157oi.a, c1157oi.d, c1157oi.e).reportUserProfile(this.a);
    }
}
