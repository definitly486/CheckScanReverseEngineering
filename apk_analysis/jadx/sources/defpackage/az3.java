package defpackage;

import com.google.firebase.perf.FirebasePerformance;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class az3 {
    static {
        gx0 gx0Var = gx0.e;
        gx0.a.c("\"\\");
        gx0.a.c("\t ,=");
    }

    public static final boolean a(z47 z47Var) {
        if (aa4.e(z47Var.b.b, FirebasePerformance.HttpMethod.HEAD)) {
            return false;
        }
        int i = z47Var.e;
        return (((i >= 100 && i < 200) || i == 204 || i == 304) && gb9.j(z47Var) == -1 && !"chunked".equalsIgnoreCase(z47.n(z47Var, "Transfer-Encoding"))) ? false : true;
    }

    public static final void b(l02 l02Var, fz3 fz3Var, jv3 jv3Var) {
        List<j02> listUnmodifiableList;
        l02Var.getClass();
        fz3Var.getClass();
        jv3Var.getClass();
        if (l02Var == l02.a) {
            return;
        }
        Pattern pattern = j02.j;
        List<String> listH = jv3Var.h("Set-Cookie");
        int size = listH.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            j02 j02VarB = j02.a.b(fz3Var, listH.get(i));
            if (j02VarB != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(j02VarB);
            }
        }
        if (arrayList != null) {
            listUnmodifiableList = Collections.unmodifiableList(arrayList);
            listUnmodifiableList.getClass();
        } else {
            listUnmodifiableList = kx2.b;
        }
        if (listUnmodifiableList.isEmpty()) {
            return;
        }
        l02Var.b(fz3Var, listUnmodifiableList);
    }
}
