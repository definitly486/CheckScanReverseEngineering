package yads;

import android.view.View;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class b10 implements w0 {
    public final l00 a;
    public final lf4 b;

    public b10(l00 l00Var, lf4 lf4Var) {
        this.a = l00Var;
        this.b = lf4Var;
    }

    @Override // yads.w0
    public final Object a(View view, u0 u0Var, c1 c1Var) {
        this.b.a.a();
        l00 l00Var = this.a;
        l00Var.d.a(l00Var.a(e75.CLOSE, new HashMap()));
        return new m83(false);
    }
}
