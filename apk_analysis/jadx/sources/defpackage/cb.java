package defpackage;

import java.io.Serializable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class cb implements za {
    public final db a;

    public cb(db dbVar) {
        this.a = dbVar;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.za
    public final Serializable a(f02 f02Var) {
        bb bbVar;
        if (f02Var instanceof bb) {
            bbVar = (bb) f02Var;
            int i = bbVar.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                bbVar.n = i - Integer.MIN_VALUE;
            } else {
                bbVar = new bb(this, f02Var);
            }
        } else {
            bbVar = new bb(this, f02Var);
        }
        Object objB = bbVar.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = bbVar.n;
        if (i2 == 0) {
            r57.b(objB);
            bbVar.n = 1;
            objB = this.a.b(bbVar);
            if (objB == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objB);
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : (Iterable) objB) {
            if (!(((fx5) obj) instanceof qo5)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.za
    public final Serializable b(f02 f02Var) {
        ab abVar;
        if (f02Var instanceof ab) {
            abVar = (ab) f02Var;
            int i = abVar.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                abVar.n = i - Integer.MIN_VALUE;
            } else {
                abVar = new ab(this, f02Var);
            }
        } else {
            abVar = new ab(this, f02Var);
        }
        Object objA = abVar.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = abVar.n;
        if (i2 == 0) {
            r57.b(objA);
            abVar.n = 1;
            objA = this.a.a(abVar);
            if (objA == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objA);
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : (Iterable) objA) {
            if (!(((fx5) obj) instanceof qo5)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }
}
