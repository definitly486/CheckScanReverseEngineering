package defpackage;

import yads.bo1;
import yads.nq0;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class to9 implements ws6 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ to9(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.ws6
    public final Object get() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                return bo1.e((bo1) obj);
            default:
                return nq0.V((nq0) obj);
        }
    }
}
