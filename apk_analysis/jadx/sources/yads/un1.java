package yads;

import android.view.ViewGroup;
import androidx.lifecycle.LifecycleOwner;
import com.monetization.ads.nativeads.ExtendedNativeAdView;
import java.util.UUID;

/* JADX INFO: loaded from: classes6.dex */
public final class un1 implements on0 {
    public final db1 a;
    public final kn1 b;
    public final c81 c;
    public final q84 d;
    public final String e;
    public final LifecycleOwner f;

    public un1(db1 db1Var, kn1 kn1Var, c81 c81Var, q84 q84Var, LifecycleOwner lifecycleOwner, int i) {
        String str = (i & 16) != 0 ? "" : "rootDivkitView";
        this.a = db1Var;
        this.b = kn1Var;
        this.c = c81Var;
        this.d = q84Var;
        this.e = str;
        this.f = lifecycleOwner;
    }

    @Override // yads.on0
    public final void a(ViewGroup viewGroup) {
        ExtendedNativeAdView extendedNativeAdView = (ExtendedNativeAdView) viewGroup;
        try {
            vq0 vq0VarA = rh2.a(extendedNativeAdView.getContext(), this.c, this.f, this.e);
            extendedNativeAdView.addView(vq0VarA);
            vq0VarA.a(this.a, new qb1(UUID.randomUUID().toString()));
            xq0.a(vq0VarA).a(this.b);
        } catch (Throwable th) {
            this.d.reportError("Failed to bind DivKit", th);
        }
    }

    @Override // yads.on0
    public final void c() {
    }
}
