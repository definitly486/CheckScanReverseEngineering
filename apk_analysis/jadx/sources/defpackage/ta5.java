package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ta5 {
    public static ta5 e;
    public final Object a = new Object();
    public final HashSet b = new HashSet();
    public sa5[] c = new sa5[5];
    public int d;

    public static synchronized ta5 a() {
        ta5 ta5Var;
        ta5Var = e;
        if (ta5Var == null) {
            ta5Var = new ta5();
            e = ta5Var;
        }
        return ta5Var;
    }

    public final List<sa5> b() {
        List<sa5> listUnmodifiableList;
        synchronized (this.a) {
            listUnmodifiableList = Collections.unmodifiableList(Arrays.asList((sa5[]) Arrays.copyOfRange(this.c, 0, this.d)));
        }
        return listUnmodifiableList;
    }

    public final vv4 c(String str, String str2, String str3, ArrayList arrayList, ArrayList arrayList2) {
        vv4 vv4Var;
        o8.f(!i13.b(str), "missing metric name");
        synchronized (this.a) {
            try {
                if (this.b.contains(str)) {
                    throw new IllegalStateException("Metric with name " + str + " already exists");
                }
                int i = this.d;
                int i2 = i + 1;
                sa5[] sa5VarArr = this.c;
                if (i2 == sa5VarArr.length) {
                    this.c = (sa5[]) Arrays.copyOf(sa5VarArr, sa5VarArr.length + 5);
                }
                vv4Var = new vv4(i, str, arrayList, arrayList2);
                this.c[i] = vv4Var;
                this.b.add(str);
                this.d++;
            } catch (Throwable th) {
                throw th;
            }
        }
        return vv4Var;
    }
}
