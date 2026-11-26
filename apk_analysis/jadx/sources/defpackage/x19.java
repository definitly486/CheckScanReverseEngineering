package defpackage;

import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.Transformations;
import yads.fs2;
import yads.hd4;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class x19 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ nl3 c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ x19(nl3 nl3Var, Object obj, Object obj2, int i) {
        this.b = i;
        this.c = nl3Var;
        this.d = obj;
        this.e = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.e;
        Object obj3 = this.d;
        nl3 nl3Var = this.c;
        switch (i) {
            case 0:
                return Transformations.switchMap$lambda$0(nl3Var, (r07) obj3, (MediatorLiveData) obj2, obj);
            default:
                return hd4.a(nl3Var, (hd4) obj3, (fs2) obj2, obj);
        }
    }
}
