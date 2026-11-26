package defpackage;

import io.appmetrica.analytics.billing.impl.j;
import io.appmetrica.analytics.billinginterface.internal.ProductInfo;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class sc6 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ sc6(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ((wc6) obj2).h(obj, true);
                break;
            case 1:
                wt8 wt8Var = (wt8) obj2;
                ed0 ed0Var = (ed0) obj;
                boolean andSet = wt8Var.f.getAndSet(false);
                wt8Var.a(ed0Var);
                if (andSet) {
                    wt8Var.b(ed0Var);
                }
                break;
            default:
                j.a((j) obj2, (ProductInfo) obj);
                break;
        }
    }
}
