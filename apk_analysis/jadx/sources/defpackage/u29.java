package defpackage;

import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class u29 implements t29 {
    public final Set<iy2> a;
    public final hz b;
    public final d39 c;

    public u29(Set set, hz hzVar, d39 d39Var) {
        this.a = set;
        this.b = hzVar;
        this.c = d39Var;
    }

    @Override // defpackage.t29
    public final w29 a(String str, iy2 iy2Var, d29 d29Var) {
        Set<iy2> set = this.a;
        if (set.contains(iy2Var)) {
            return new w29(this.b, str, iy2Var, d29Var, this.c);
        }
        nz0.d("%s is not supported byt this factory. Supported encodings are: %s.", new Object[]{iy2Var, set});
        return null;
    }

    @Override // defpackage.t29
    public final w29 b(dc dcVar) {
        return a("FIREBASE_INAPPMESSAGING", new iy2("proto"), dcVar);
    }
}
