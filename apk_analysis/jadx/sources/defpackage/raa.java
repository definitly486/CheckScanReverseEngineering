package defpackage;

import yads.nq0;
import yads.tq3;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class raa implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ raa(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return tq3.l3((tq3) obj);
            case 1:
                return tq3.z0((tq3) obj);
            case 2:
                return tq3.L((tq3) obj);
            case 3:
                return tq3.Z7((tq3) obj);
            case 4:
                return tq3.B9((tq3) obj);
            case 5:
                return tq3.W0((tq3) obj);
            default:
                return nq0.Z((nq0) obj);
        }
    }
}
