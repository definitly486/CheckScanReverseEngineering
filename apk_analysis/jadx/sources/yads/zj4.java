package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.zya;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class zj4 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ ck4 c;
    public final /* synthetic */ ee4 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zj4(ck4 ck4Var, ee4 ee4Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = ck4Var;
        this.d = ee4Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new zj4(this.c, this.d, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new zj4(this.c, this.d, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00aa A[EDGE_INSN: B:33:0x00aa->B:34:0x00af BREAK  A[LOOP:2: B:28:0x0089->B:48:?]] */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            rk4 rk4Var = this.c.c;
            ee4 ee4Var = this.d;
            this.b = 1;
            rk4Var.getClass();
            defpackage.c31 c31Var = new defpackage.c31(1, zya.b(this));
            c31Var.u();
            if (rk4Var.a == null) {
                c31Var.resumeWith(j59.a);
                break;
            }
            rk4Var.b.getClass();
            List list = ee4Var.a.a;
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                defpackage.nn1.s(x14.a((sd4) it.next()), arrayList);
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                r96 r96Var = ((v14) it2.next()).b;
                List list2 = r96Var != null ? r96Var.a : null;
                if (list2 == null) {
                    list2 = defpackage.kx2.b;
                }
                defpackage.nn1.s(list2, arrayList2);
            }
            if (!arrayList2.isEmpty()) {
                Iterator it3 = arrayList2.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        c31Var.resumeWith(j59.a);
                        break;
                    }
                    if (!((ja6) it3.next()).b.n.isEmpty()) {
                        rk4Var.a.a(new qk4(c31Var));
                        break;
                    }
                }
            } else {
                c31Var.resumeWith(j59.a);
                break;
            }
            Object objS = c31Var.s();
            if (objS != defpackage.a32.COROUTINE_SUSPENDED) {
                objS = j59.a;
            }
            if (objS == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return j59.a;
    }
}
