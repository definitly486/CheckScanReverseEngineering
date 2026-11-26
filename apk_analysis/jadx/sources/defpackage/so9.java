package defpackage;

import yads.bo1;
import yads.dy;
import yads.gf0;
import yads.nq0;
import yads.qn6;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class so9 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ so9(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return bo1.h((bo1) obj);
            case 1:
                return dy.a(null, (dy) obj);
            case 2:
                return gf0.j((gf0) obj);
            case 3:
                return nq0.c((nq0) obj);
            default:
                return qn6.a((qn6) obj);
        }
    }
}
