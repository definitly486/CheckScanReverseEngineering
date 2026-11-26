package defpackage;

import com.google.android.gms.dynamic.DeferredLifecycleHelper;

/* JADX INFO: loaded from: classes4.dex */
public final class cla implements gla {
    public final /* synthetic */ DeferredLifecycleHelper a;

    public cla(DeferredLifecycleHelper deferredLifecycleHelper) {
        this.a = deferredLifecycleHelper;
    }

    @Override // defpackage.gla
    public final int zaa() {
        return 5;
    }

    @Override // defpackage.gla
    public final void zab() {
        this.a.a.onResume();
    }
}
