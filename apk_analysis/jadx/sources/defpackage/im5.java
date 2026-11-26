package defpackage;

import yads.gf0;
import yads.pm6;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class im5 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ im5(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return (qn2) ((sy6) obj).a.e.getValue();
            case 1:
                return gf0.i((gf0) obj);
            default:
                return pm6.b((pm6) obj);
        }
    }
}
