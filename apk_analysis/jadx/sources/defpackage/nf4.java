package defpackage;

import androidx.webkit.ProxyConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class nf4 {
    public static final nf4 c = new nf4("COMPOSITION");
    public final List<String> a;
    public of4 b;

    public nf4(nf4 nf4Var) {
        this.a = new ArrayList(nf4Var.a);
        this.b = nf4Var.b;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x007e A[RETURN] */
    public final boolean a(int i, String str) {
        List<String> list = this.a;
        if (i < list.size()) {
            boolean z = i == list.size() - 1;
            String str2 = list.get(i);
            if (!str2.equals("**")) {
                boolean z2 = str2.equals(str) || str2.equals(ProxyConfig.MATCH_ALL_SCHEMES);
                if ((z || (i == list.size() - 2 && ((String) xy.d(1, list)).equals("**"))) && z2) {
                    return true;
                }
            } else {
                if (z || !list.get(i + 1).equals(str)) {
                    if (!z) {
                        int i2 = i + 1;
                        if (i2 >= list.size() - 1) {
                            return list.get(i2).equals(str);
                        }
                    }
                    return true;
                }
                if (i == list.size() - 2 || (i == list.size() - 3 && ((String) xy.d(1, list)).equals("**"))) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int b(int i, String str) {
        if ("__container".equals(str)) {
            return 0;
        }
        List<String> list = this.a;
        if (list.get(i).equals("**")) {
            return (i != list.size() - 1 && list.get(i + 1).equals(str)) ? 2 : 0;
        }
        return 1;
    }

    public final boolean c(int i, String str) {
        if ("__container".equals(str)) {
            return true;
        }
        List<String> list = this.a;
        if (i >= list.size()) {
            return false;
        }
        return list.get(i).equals(str) || list.get(i).equals("**") || list.get(i).equals(ProxyConfig.MATCH_ALL_SCHEMES);
    }

    public final boolean d(int i, String str) {
        if ("__container".equals(str)) {
            return true;
        }
        List<String> list = this.a;
        return i < list.size() - 1 || list.get(i).equals("**");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && nf4.class == obj.getClass()) {
            nf4 nf4Var = (nf4) obj;
            if (!this.a.equals(nf4Var.a)) {
                return false;
            }
            of4 of4Var = this.b;
            of4 of4Var2 = nf4Var.b;
            if (of4Var != null) {
                return of4Var.equals(of4Var2);
            }
            if (of4Var2 == null) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        of4 of4Var = this.b;
        return iHashCode + (of4Var != null ? of4Var.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("KeyPath{keys=");
        sb.append(this.a);
        sb.append(",resolved=");
        return sg.d(sb, this.b != null, '}');
    }

    public nf4(String... strArr) {
        this.a = Arrays.asList(strArr);
    }
}
