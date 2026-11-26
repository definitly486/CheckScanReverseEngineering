package defpackage;

import android.view.View;
import yads.b82;
import yads.d22;
import yads.fs2;
import yads.g82;
import yads.oh2;
import yads.s22;
import yads.tt;
import yads.w12;
import yads.zo1;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class us9 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ oh2 c;
    public final /* synthetic */ View d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;

    public /* synthetic */ us9(oh2 oh2Var, View view, Object obj, Object obj2, int i) {
        this.b = i;
        this.c = oh2Var;
        this.d = view;
        this.e = obj;
        this.f = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.f;
        Object obj3 = this.e;
        View view = this.d;
        oh2 oh2Var = this.c;
        switch (i) {
            case 0:
                return d22.a((d22) oh2Var, (s22) view, (fs2) obj3, (w12) obj2, ((Integer) obj).intValue());
            default:
                return g82.a((g82) oh2Var, (zo1) view, (tt) obj3, (b82) obj2, obj);
        }
    }
}
