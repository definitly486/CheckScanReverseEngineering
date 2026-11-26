package defpackage;

import java.util.List;
import yads.b82;
import yads.d22;
import yads.fs2;
import yads.g82;
import yads.gz1;
import yads.s22;
import yads.tc1;
import yads.tt;
import yads.uy1;
import yads.wy1;
import yads.zo1;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class xs9 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;

    public /* synthetic */ xs9(g82 g82Var, zo1 zo1Var, b82 b82Var, fs2 fs2Var) {
        this.b = 1;
        this.d = g82Var;
        this.e = zo1Var;
        this.f = b82Var;
        this.c = fs2Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.f;
        Object obj3 = this.c;
        Object obj4 = this.e;
        Object obj5 = this.d;
        switch (i) {
            case 0:
                return d22.d((d22) obj5, (s22) obj4, (fs2) obj3, (tc1) obj2, obj);
            case 1:
                return g82.a((g82) obj5, (zo1) obj4, (b82) obj2, (fs2) obj3, obj);
            default:
                return wy1.a((gz1) obj5, (List) obj4, (uy1) obj3, (tt) obj2, ((Integer) obj).intValue());
        }
    }

    public /* synthetic */ xs9(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.b = i;
        this.d = obj;
        this.e = obj2;
        this.c = obj3;
        this.f = obj4;
    }
}
