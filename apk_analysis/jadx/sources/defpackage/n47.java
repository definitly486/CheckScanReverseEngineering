package defpackage;

import yads.c32;
import yads.cn1;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class n47 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ n47(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        boolean zA;
        switch (this.b) {
            case 0:
                gm9 gm9Var = (gm9) obj;
                gm9Var.getClass();
                j46 j46Var = o47.g;
                zA = o47.a.a(gm9Var.a);
                break;
            default:
                zA = c32.a((cn1) obj);
                break;
        }
        return Boolean.valueOf(zA);
    }
}
