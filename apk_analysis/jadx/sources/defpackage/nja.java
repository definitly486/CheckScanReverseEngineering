package defpackage;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.dynamic.DeferredLifecycleHelper;

/* JADX INFO: loaded from: classes4.dex */
public final class nja implements gla {
    public final /* synthetic */ Activity a;
    public final /* synthetic */ Bundle b;
    public final /* synthetic */ Bundle c;
    public final /* synthetic */ DeferredLifecycleHelper d;

    public nja(DeferredLifecycleHelper deferredLifecycleHelper, Activity activity, Bundle bundle, Bundle bundle2) {
        this.a = activity;
        this.b = bundle;
        this.c = bundle2;
        this.d = deferredLifecycleHelper;
    }

    @Override // defpackage.gla
    public final int zaa() {
        return 0;
    }

    @Override // defpackage.gla
    public final void zab() {
        this.d.a.onInflate(this.a, this.b, this.c);
    }
}
