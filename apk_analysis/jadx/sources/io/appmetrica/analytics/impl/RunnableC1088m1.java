package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AnrListener;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.m1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC1088m1 implements Runnable {
    public final /* synthetic */ AnrListener a;
    public final /* synthetic */ C1370x1 b;

    public RunnableC1088m1(C1370x1 c1370x1, AnrListener anrListener) {
        this.b = c1370x1;
        this.a = anrListener;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1370x1.a(this.b).a(this.a);
    }
}
