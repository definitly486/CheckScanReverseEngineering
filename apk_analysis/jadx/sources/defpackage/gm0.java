package defpackage;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.domain.interactor.bonusBlock.BonusBlockInteractor$fetchFavouritePreviewsByPage$1", f = "BonusBlockInteractor.kt", l = {}, m = "invokeSuspend")
public final class gm0 extends pg8 implements bm3<j26<sx5>, e02<? super j59>, Object> {
    public /* synthetic */ Object l;
    public final /* synthetic */ bm0 m;
    public final /* synthetic */ int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gm0(bm0 bm0Var, int i, e02<? super gm0> e02Var) {
        super(2, e02Var);
        this.m = bm0Var;
        this.n = i;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        gm0 gm0Var = new gm0(this.m, this.n, e02Var);
        gm0Var.l = obj;
        return gm0Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(j26<sx5> j26Var, e02<? super j59> e02Var) {
        return ((gm0) create(j26Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        Object value;
        ArrayList arrayList;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        j26 j26Var = (j26) this.l;
        z68 z68Var = this.m.f;
        do {
            value = z68Var.getValue();
            ArrayList arrayListV0 = qn1.v0((List) value);
            if (this.n == 0) {
                arrayListV0.clear();
            }
            List listA = j26Var.a();
            ArrayList arrayList2 = new ArrayList(kn1.q(listA, 10));
            Iterator it = listA.iterator();
            while (it.hasNext()) {
                arrayList2.add(((sx5) it.next()).d());
            }
            arrayListV0.addAll(arrayList2);
            HashSet hashSet = new HashSet();
            arrayList = new ArrayList();
            for (Object obj2 : arrayListV0) {
                if (hashSet.add(((cs0) obj2).id())) {
                    arrayList.add(obj2);
                }
            }
        } while (!z68Var.a(value, arrayList));
        return j59.a;
    }
}
