package yads;

import android.os.Bundle;

/* JADX INFO: loaded from: classes6.dex */
public final class bj4 implements h80 {
    public final x2 a;
    public final z03 b;

    public bj4(x2 x2Var, z03 z03Var) {
        this.a = x2Var;
        this.b = z03Var;
    }

    @Override // yads.h80
    public final void a() {
        fe5 fe5Var = this.b.a;
        if (fe5Var == null || fe5Var.t) {
            return;
        }
        this.a.a.finish();
    }

    @Override // yads.h80
    public final void onAdClicked() {
    }

    @Override // yads.h80
    public final void onImpression(j5 j5Var) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("impression_data_key", j5Var);
        this.a.a(16, bundle);
    }

    @Override // yads.h80
    public final void onLeftApplication() {
        this.a.a(17, null);
    }

    @Override // yads.h80
    public final void onReturnedToApplication() {
        this.a.a(18, null);
    }
}
