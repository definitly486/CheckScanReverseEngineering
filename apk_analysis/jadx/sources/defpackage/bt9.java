package defpackage;

import android.util.DisplayMetrics;
import yads.b82;
import yads.d62;
import yads.fs2;
import yads.g82;
import yads.tt5;
import yads.xu5;
import yads.yc1;
import yads.zo1;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class bt9 implements nl3 {
    public final /* synthetic */ int b = 1;
    public final /* synthetic */ fs2 c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ tt5 e;
    public final /* synthetic */ Object f;

    public /* synthetic */ bt9(g82 g82Var, zo1 zo1Var, b82 b82Var, fs2 fs2Var) {
        this.d = g82Var;
        this.e = zo1Var;
        this.f = b82Var;
        this.c = fs2Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        fs2 fs2Var = this.c;
        Object obj2 = this.f;
        tt5 tt5Var = this.e;
        Object obj3 = this.d;
        switch (i) {
            case 0:
                return d62.a((yc1) obj3, (xu5) tt5Var, fs2Var, (DisplayMetrics) obj2, obj);
            default:
                return g82.c((g82) obj3, (zo1) tt5Var, (b82) obj2, fs2Var, obj);
        }
    }

    public /* synthetic */ bt9(yc1 yc1Var, xu5 xu5Var, fs2 fs2Var, DisplayMetrics displayMetrics) {
        this.d = yc1Var;
        this.e = xu5Var;
        this.c = fs2Var;
        this.f = displayMetrics;
    }
}
