package defpackage;

import yads.bo1;
import yads.ca4;
import yads.sz4;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class u2 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ u2(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return j59.a;
            case 1:
                return bo1.a();
            case 2:
                return ca4.a();
            default:
                return sz4.Companion.serializer();
        }
    }
}
