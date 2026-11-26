package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.u96;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class vm4 extends pg8 implements defpackage.bm3 {
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ List d;
    public final /* synthetic */ wm4 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vm4(List list, wm4 wm4Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.d = list;
        this.e = wm4Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        vm4 vm4Var = new vm4(this.d, this.e, e02Var);
        vm4Var.c = obj;
        return vm4Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((vm4) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            defpackage.y22 y22Var = (defpackage.y22) this.c;
            List<ja6> list = this.d;
            wm4 wm4Var = this.e;
            ArrayList arrayList = new ArrayList(defpackage.kn1.q(list, 10));
            for (ja6 ja6Var : list) {
                arrayList.add(ja6Var.b.a ? defpackage.av0.a(y22Var, null, null, new um4(wm4Var, ja6Var, null), 3) : defpackage.ga1.a(u96.h(ja6Var)));
            }
            this.b = 1;
            obj = defpackage.oz.a(arrayList, this);
            if (obj == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return defpackage.kn1.r((Iterable) obj);
    }
}
