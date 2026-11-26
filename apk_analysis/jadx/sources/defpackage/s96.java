package defpackage;

import java.lang.annotation.Annotation;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public class s96 implements mp7, ay0 {
    public final String a;
    public final dp3<?> b;
    public final int c;
    public int d = -1;
    public final String[] e;
    public final List<Annotation>[] f;
    public final boolean[] g;
    public Map<String, Integer> h;
    public final cl4 i;
    public final cl4 j;
    public final cl4 k;

    public s96(String str, dp3<?> dp3Var, int i) {
        this.a = str;
        this.b = dp3Var;
        this.c = i;
        String[] strArr = new String[i];
        for (int i2 = 0; i2 < i; i2++) {
            strArr[i2] = "[UNINITIALIZED]";
        }
        this.e = strArr;
        int i3 = this.c;
        this.f = new List[i3];
        this.g = new boolean[i3];
        this.h = mx2.b;
        po4 po4Var = po4.PUBLICATION;
        this.i = nm4.a(po4Var, new k51(this, 3));
        int i4 = 1;
        this.j = nm4.a(po4Var, new vi5(this, i4));
        this.k = nm4.a(po4Var, new u12(this, i4));
    }

    @Override // defpackage.ay0
    public final Set<String> a() {
        return this.h.keySet();
    }

    @Override // defpackage.mp7
    public final int c(String str) {
        str.getClass();
        Integer num = this.h.get(str);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    @Override // defpackage.mp7
    public mp7 d(int i) {
        return ((df4[]) this.i.getValue())[i].getDescriptor();
    }

    @Override // defpackage.mp7
    public final int e() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof s96) {
            mp7 mp7Var = (mp7) obj;
            if (this.a.equals(mp7Var.h()) && Arrays.equals((mp7[]) this.j.getValue(), (mp7[]) ((s96) obj).j.getValue())) {
                int iE = mp7Var.e();
                int i = this.c;
                if (i == iE) {
                    for (int i2 = 0; i2 < i; i2++) {
                        if (aa4.e(d(i2).h(), mp7Var.d(i2).h()) && aa4.e(d(i2).getKind(), mp7Var.d(i2).getKind())) {
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    @Override // defpackage.mp7
    public final String f(int i) {
        return this.e[i];
    }

    @Override // defpackage.mp7
    public final List<Annotation> g(int i) {
        List<Annotation> list = this.f[i];
        return list == null ? kx2.b : list;
    }

    @Override // defpackage.mp7
    public final List<Annotation> getAnnotations() {
        return kx2.b;
    }

    @Override // defpackage.mp7
    public sp7 getKind() {
        return eb8.a.a;
    }

    @Override // defpackage.mp7
    public final String h() {
        return this.a;
    }

    public int hashCode() {
        return ((Number) this.k.getValue()).intValue();
    }

    @Override // defpackage.mp7
    public final boolean i(int i) {
        return this.g[i];
    }

    public final void j(String str, boolean z) {
        str.getClass();
        int i = this.d + 1;
        this.d = i;
        String[] strArr = this.e;
        strArr[i] = str;
        this.g[i] = z;
        this.f[i] = null;
        if (i == this.c - 1) {
            HashMap map = new HashMap();
            int length = strArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                map.put(strArr[i2], Integer.valueOf(i2));
            }
            this.h = map;
        }
    }

    public String toString() {
        return x97.b(this);
    }
}
