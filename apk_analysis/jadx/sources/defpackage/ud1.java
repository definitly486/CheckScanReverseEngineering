package defpackage;

import yads.c60;
import yads.lg5;
import yads.yn;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ud1 implements xl3, c60 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ud1(ts5 ts5Var, ms5 ms5Var) {
        this.b = 1;
        this.c = ms5Var;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return (wr5) ((ie1) obj2).invoke(obj);
            case 1:
                Throwable th = (Throwable) obj;
                th.getClass();
                return ts5.b((ms5) obj2, a57.a(418, ts5.d(th.getMessage())));
            default:
                return ((mz5) obj2).invoke(obj);
        }
    }

    @Override // yads.c60
    public void e() {
        lg5.a((yn) this.c);
    }

    public /* synthetic */ ud1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }
}
