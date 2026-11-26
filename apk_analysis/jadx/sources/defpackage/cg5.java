package defpackage;

import android.content.Context;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class cg5<T> implements s19<T> {
    public final List b;

    @SafeVarargs
    public cg5(s19<T>... s19VarArr) {
        if (s19VarArr.length != 0) {
            this.b = Arrays.asList(s19VarArr);
        } else {
            fg.c("MultiTransformation must contain at least one Transformation");
            throw null;
        }
    }

    @Override // defpackage.kf4
    public final void a(MessageDigest messageDigest) {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((s19) it.next()).a(messageDigest);
        }
    }

    @Override // defpackage.s19
    public final e47<T> b(Context context, e47<T> e47Var, int i, int i2) {
        Iterator it = this.b.iterator();
        e47<T> e47Var2 = e47Var;
        while (it.hasNext()) {
            e47<T> e47VarB = ((s19) it.next()).b(context, e47Var2, i, i2);
            if (e47Var2 != null && !e47Var2.equals(e47Var) && !e47Var2.equals(e47VarB)) {
                e47Var2.recycle();
            }
            e47Var2 = e47VarB;
        }
        return e47Var2;
    }

    @Override // defpackage.kf4
    public final boolean equals(Object obj) {
        if (obj instanceof cg5) {
            return this.b.equals(((cg5) obj).b);
        }
        return false;
    }

    @Override // defpackage.kf4
    public final int hashCode() {
        return this.b.hashCode();
    }
}
