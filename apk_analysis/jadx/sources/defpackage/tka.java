package defpackage;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.DeferredLifecycleHelper;

/* JADX INFO: loaded from: classes4.dex */
public final class tka implements gla {
    public final /* synthetic */ FrameLayout a;
    public final /* synthetic */ LayoutInflater b;
    public final /* synthetic */ ViewGroup c;
    public final /* synthetic */ Bundle d;
    public final /* synthetic */ DeferredLifecycleHelper e;

    public tka(DeferredLifecycleHelper deferredLifecycleHelper, FrameLayout frameLayout, LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.a = frameLayout;
        this.b = layoutInflater;
        this.c = viewGroup;
        this.d = bundle;
        this.e = deferredLifecycleHelper;
    }

    @Override // defpackage.gla
    public final int zaa() {
        return 2;
    }

    @Override // defpackage.gla
    public final void zab() {
        FrameLayout frameLayout = this.a;
        frameLayout.removeAllViews();
        frameLayout.addView(this.e.a.onCreateView(this.b, this.c, this.d));
    }
}
