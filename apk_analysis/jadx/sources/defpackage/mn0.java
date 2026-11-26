package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.domain.interactor.bonusBlock.BonusBlockInteractor$updateFavoritePreviewAll$1", f = "BonusBlockInteractor.kt", l = {}, m = "invokeSuspend")
public final class mn0 extends pg8 implements bm3<Boolean, e02<? super j59>, Object> {
    public /* synthetic */ boolean l;
    public final /* synthetic */ bm0 m;
    public final /* synthetic */ int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mn0(bm0 bm0Var, int i, e02<? super mn0> e02Var) {
        super(2, e02Var);
        this.m = bm0Var;
        this.n = i;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        mn0 mn0Var = new mn0(this.m, this.n, e02Var);
        mn0Var.l = ((Boolean) obj).booleanValue();
        return mn0Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Boolean bool, e02<? super j59> e02Var) {
        Boolean bool2 = bool;
        bool2.booleanValue();
        return ((mn0) create(bool2, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        Object value;
        ArrayList arrayListV0;
        int i;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        boolean z = this.l;
        bm0 bm0Var = this.m;
        z68 z68Var = bm0Var.f;
        do {
            value = z68Var.getValue();
            arrayListV0 = qn1.v0((List) value);
            Iterator it = arrayListV0.iterator();
            int i2 = 0;
            while (true) {
                boolean zHasNext = it.hasNext();
                i = this.n;
                if (!zHasNext) {
                    i2 = -1;
                    break;
                }
                cs0 cs0Var = (cs0) it.next();
                if ((cs0Var instanceof en1) && ((en1) cs0Var).a.a == i) {
                    break;
                }
                i2++;
            }
            if (u96.f(arrayListV0).c(i2)) {
                Object obj2 = arrayListV0.get(i2);
                obj2.getClass();
                en1 en1Var = (en1) obj2;
                boolean z2 = en1Var instanceof en1.a;
                dn1 dn1Var = en1Var.a;
                arrayListV0.set(i2, z2 ? new en1.a(dn1.a(dn1Var, z)) : new en1.b(dn1.a(dn1Var, z)));
            }
        } while (!z68Var.a(value, arrayListV0));
        bm0Var.d.b(i, z);
        return j59.a;
    }
}
