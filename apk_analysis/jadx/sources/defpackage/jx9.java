package defpackage;

import android.text.Editable;
import android.view.View;
import yads.hk1;
import yads.v41;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class jx9 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ jx9(int i, Object obj, Object obj2) {
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
                return hk1.a((hk1) obj3, (nl3) obj2, (Editable) obj);
            default:
                return v41.a((v41) obj3, (View) obj2, ((Double) obj).doubleValue());
        }
    }
}
