package yads;

import android.view.ViewTreeObserver;
import com.monetization.ads.nativeads.CustomizableMediaView;

/* JADX INFO: loaded from: classes6.dex */
public final class i24 implements ViewTreeObserver.OnPreDrawListener {
    public final /* synthetic */ j24 a;
    public final /* synthetic */ CustomizableMediaView b;
    public final /* synthetic */ y14 c;

    public i24(j24 j24Var, CustomizableMediaView customizableMediaView, y14 y14Var) {
        this.a = j24Var;
        this.b = customizableMediaView;
        this.c = y14Var;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        this.a.b.a(this.b, this.c.b);
        return false;
    }
}
