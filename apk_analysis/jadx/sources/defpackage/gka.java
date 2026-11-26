package defpackage;

import android.os.Bundle;
import com.google.android.gms.dynamic.DeferredLifecycleHelper;

/* JADX INFO: loaded from: classes4.dex */
public final class gka implements gla {
    public final /* synthetic */ Bundle a;
    public final /* synthetic */ DeferredLifecycleHelper b;

    public gka(DeferredLifecycleHelper deferredLifecycleHelper, Bundle bundle) {
        this.a = bundle;
        this.b = deferredLifecycleHelper;
    }

    @Override // defpackage.gla
    public final int zaa() {
        return 1;
    }

    @Override // defpackage.gla
    public final void zab() {
        this.b.a.onCreate(this.a);
    }
}
