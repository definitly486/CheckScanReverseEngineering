package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.domain.interactor.onboarding.OnboardingCardSlidesInteractor$fetchSlides$1", f = "OnboardingCardSlidesInteractor.kt", l = {}, m = "invokeSuspend")
public final class tw5 extends pg8 implements bm3<List<? extends sw5>, e02<? super Boolean>, Object> {
    public /* synthetic */ Object l;
    public final /* synthetic */ uw5 m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tw5(uw5 uw5Var, e02<? super tw5> e02Var) {
        super(2, e02Var);
        this.m = uw5Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        tw5 tw5Var = new tw5(this.m, e02Var);
        tw5Var.l = obj;
        return tw5Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(List<? extends sw5> list, e02<? super Boolean> e02Var) {
        return ((tw5) create(list, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a41 aVar;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        List list = (List) this.l;
        uw5 uw5Var = this.m;
        z68 z68Var = uw5Var.c;
        List list2 = list;
        ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
        Iterator it = list2.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                z68Var.k(null, arrayList);
                return Boolean.valueOf(!((Collection) uw5Var.c.getValue()).isEmpty());
            }
            Object next = it.next();
            int i2 = i + 1;
            if (i < 0) {
                u96.o();
                throw null;
            }
            sw5 sw5Var = (sw5) next;
            boolean z = u96.g(list) == i;
            long j = i;
            String strC = sw5Var.c();
            String str = strC == null ? "" : strC;
            String strE = sw5Var.e();
            String str2 = strE == null ? "" : strE;
            String strD = sw5Var.d();
            String str3 = strD == null ? "" : strD;
            String strA = sw5Var.a();
            String str4 = strA == null ? "" : strA;
            if (z) {
                String strB = sw5Var.b();
                aVar = new a41.a(strB != null ? strB : "");
            } else {
                aVar = a41.b.a;
            }
            arrayList.add(new zj3(j, str, str2, str3, str4, aVar));
            i = i2;
        }
    }
}
