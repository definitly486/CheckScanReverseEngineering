package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class qx implements l02 {
    public final ix8 b;

    public qx(ix8 ix8Var) {
        this.b = ix8Var;
    }

    @Override // defpackage.l02
    public final List<j02> a(fz3 fz3Var) {
        fz3Var.getClass();
        ArrayList arrayList = new ArrayList();
        String token = this.b.getToken();
        if (ta8.M(token)) {
            token = null;
        }
        if (token != null) {
            Pattern pattern = j02.j;
            j02 j02VarB = j02.a.b(fz3Var, token);
            if (j02VarB != null) {
                arrayList.add(j02VarB);
            }
        }
        return arrayList;
    }

    @Override // defpackage.l02
    public final void b(fz3 fz3Var, List<j02> list) {
        fz3Var.getClass();
    }
}
