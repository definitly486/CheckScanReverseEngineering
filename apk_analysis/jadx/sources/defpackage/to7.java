package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class to7 {
    public final d16 a;

    public to7(d16 d16Var) {
        this.a = d16Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0076, code lost:
    
        if (r6.c(r2, r0) == r1) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(f02 f02Var) {
        so7 so7Var;
        if (f02Var instanceof so7) {
            so7Var = (so7) f02Var;
            int i = so7Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                so7Var.n = i - Integer.MIN_VALUE;
            } else {
                so7Var = new so7(this, f02Var);
            }
        } else {
            so7Var = new so7(this, f02Var);
        }
        Object objB = so7Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = so7Var.n;
        d16 d16Var = this.a;
        if (i2 == 0) {
            r57.b(objB);
            so7Var.n = 1;
            objB = d16Var.b(so7Var);
            if (objB != a32Var) {
            }
            return a32Var;
        }
        if (i2 == 1) {
            r57.b(objB);
        } else {
            if (i2 != 2) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objB);
        }
        return j59.a;
        List list = (List) objB;
        if (list.isEmpty()) {
            return j59.a;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (d16Var.a((String) obj)) {
                arrayList.add(obj);
            }
        }
        so7Var.n = 2;
    }
}
