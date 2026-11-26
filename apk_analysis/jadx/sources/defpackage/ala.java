package defpackage;

import com.google.android.gms.dynamic.DeferredLifecycleHelper;

/* JADX INFO: loaded from: classes4.dex */
public final class ala implements gla {
    public final /* synthetic */ DeferredLifecycleHelper a;

    public ala(DeferredLifecycleHelper deferredLifecycleHelper) {
        this.a = deferredLifecycleHelper;
    }

    @Override // defpackage.gla
    public final int zaa() {
        return 4;
    }

    @Override // defpackage.gla
    public final void zab() {
        this.a.a.onStart();
    }
}
