package yads;

import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class xl0 extends defpackage.qm3 implements defpackage.bm3 {
    public xl0(n13 n13Var) {
        super(2, n13Var, n13.class, "preload", "preload(Lcom/monetization/ads/common/AdRequestData;Lcom/monetization/ads/fullscreen/cache/FullscreenFormat;)V", 0);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        n8 n8Var = (n8) obj;
        g13 g13Var = (g13) obj2;
        n13 n13Var = (n13) this.receiver;
        ar arVar = (ar) n13Var.b.get(g13Var);
        if (arVar != null) {
            defpackage.y22 y22Var = n13Var.a;
            defpackage.oi2 oi2Var = defpackage.qo2.a;
            defpackage.av0.c(y22Var, defpackage.uy4.a, null, new m13(n13Var, n8Var, g13Var, arVar, null), 2);
        }
        return j59.a;
    }
}
