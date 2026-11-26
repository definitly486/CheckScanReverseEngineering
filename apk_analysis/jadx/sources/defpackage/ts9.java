package defpackage;

import android.view.View;
import yads.d22;
import yads.g76;
import yads.or0;
import yads.s22;
import yads.u66;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class ts9 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ts9(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return d22.b((s22) obj3, (d22) obj2, ((Long) obj).longValue());
            case 1:
                return g76.a((g76) obj3, (String) obj2, (u66) obj);
            default:
                return or0.a((or0) obj3, (View) obj2, (String) obj);
        }
    }
}
