package yads;

import com.monetization.ads.nativeads.CustomizableMediaView;

/* JADX INFO: loaded from: classes6.dex */
public final class cg5 implements Runnable {
    public final /* synthetic */ z14 b;
    public final /* synthetic */ CustomizableMediaView c;
    public final /* synthetic */ v14 d;

    public cg5(z14 z14Var, CustomizableMediaView customizableMediaView, v14 v14Var) {
        this.b = z14Var;
        this.c = customizableMediaView;
        this.d = v14Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.b(this.c, this.d);
    }
}
