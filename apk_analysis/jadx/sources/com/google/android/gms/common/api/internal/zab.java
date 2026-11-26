package com.google.android.gms.common.api.internal;

import defpackage.ah;
import defpackage.oia;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public final class zab extends ActivityLifecycleObserver {
    public final WeakReference a;

    public zab(oia oiaVar) {
        this.a = new WeakReference(oiaVar);
    }

    @Override // com.google.android.gms.common.api.internal.ActivityLifecycleObserver
    public final ActivityLifecycleObserver onStopCallOnce(Runnable runnable) {
        oia oiaVar = (oia) this.a.get();
        if (oiaVar == null) {
            ah.f("The target activity has already been GC'd");
            return null;
        }
        synchronized (oiaVar) {
            oiaVar.c.add(runnable);
        }
        return this;
    }
}
