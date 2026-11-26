package defpackage;

import android.view.View;
import yads.b82;
import yads.bn1;
import yads.d22;
import yads.ek1;
import yads.fs2;
import yads.g82;
import yads.jk1;
import yads.oh2;
import yads.s22;
import yads.tc1;
import yads.tt;
import yads.zo1;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class ys9 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ View d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;

    public /* synthetic */ ys9(ek1 ek1Var, fs2 fs2Var, bn1 bn1Var, jk1 jk1Var) {
        this.b = 2;
        this.c = ek1Var;
        this.e = fs2Var;
        this.d = bn1Var;
        this.f = jk1Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.f;
        View view = this.d;
        Object obj3 = this.e;
        Object obj4 = this.c;
        switch (i) {
            case 0:
                return d22.f((d22) obj4, (s22) view, (fs2) obj3, (tc1) obj2, obj);
            case 1:
                return g82.a((g82) obj4, (zo1) view, (tt) obj3, (b82) obj2, (String) obj);
            default:
                return jk1.a((ek1) obj4, (fs2) obj3, (bn1) view, (jk1) obj2, obj);
        }
    }

    public /* synthetic */ ys9(oh2 oh2Var, View view, Object obj, Object obj2, int i) {
        this.b = i;
        this.c = oh2Var;
        this.d = view;
        this.e = obj;
        this.f = obj2;
    }
}
