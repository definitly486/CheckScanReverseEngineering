package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class u32 implements Runnable {
    public final /* synthetic */ View b;
    public final /* synthetic */ v32 c;

    public u32(View view, v32 v32Var) {
        this.b = view;
        this.c = v32Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.c.b.clear();
    }
}
