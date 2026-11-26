package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.profile.UserProfile;

/* JADX INFO: loaded from: classes5.dex */
public final class X0 implements Runnable {
    public final /* synthetic */ UserProfile a;
    public final /* synthetic */ C1370x1 b;

    public X0(C1370x1 c1370x1, UserProfile userProfile) {
        this.b = c1370x1;
        this.a = userProfile;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1370x1.a(this.b).reportUserProfile(this.a);
    }
}
