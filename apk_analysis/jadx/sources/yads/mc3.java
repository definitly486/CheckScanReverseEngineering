package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class mc3 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ sc3 c;
    public final /* synthetic */ Set d;
    public final /* synthetic */ ce3 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mc3(sc3 sc3Var, Set set, ce3 ce3Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = sc3Var;
        this.d = set;
        this.e = ce3Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new mc3(this.c, this.d, this.e, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((mc3) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            sc3 sc3Var = this.c;
            Set set = this.d;
            this.b = 1;
            sc3Var.getClass();
            obj = defpackage.z22.c(new jc3(sc3Var, set, null), this);
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
        List<ac3> list = (List) obj;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = ((ac3) it.next()).a;
        }
        ce3 ce3Var = this.e;
        this.c.getClass();
        int iB = defpackage.m05.b(defpackage.kn1.q(list, 10));
        if (iB < 16) {
            iB = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iB);
        for (ac3 ac3Var : list) {
            linkedHashMap.put(ac3Var.a, ac3Var.b);
        }
        ce3Var.a(linkedHashMap);
        return j59.a;
    }
}
