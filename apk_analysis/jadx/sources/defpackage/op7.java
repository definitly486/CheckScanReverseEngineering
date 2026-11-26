package defpackage;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class op7 implements mp7, ay0 {
    public final String a;
    public final sp7 b;
    public final int c;
    public final List<Annotation> d;
    public final HashSet e;
    public final String[] f;
    public final mp7[] g;
    public final List<Annotation>[] h;
    public final boolean[] i;
    public final Map<String, Integer> j;
    public final mp7[] k;
    public final fh8 l;

    public op7(String str, sp7 sp7Var, int i, List<? extends mp7> list, al1 al1Var) {
        sp7Var.getClass();
        this.a = str;
        this.b = sp7Var;
        this.c = i;
        this.d = al1Var.b;
        ArrayList arrayList = al1Var.c;
        HashSet hashSet = new HashSet(m05.b(kn1.q(arrayList, 12)));
        qn1.q0(arrayList, hashSet);
        this.e = hashSet;
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        this.f = strArr;
        this.g = m96.d(al1Var.e);
        this.h = (List[]) al1Var.f.toArray(new List[0]);
        this.i = qn1.p0(al1Var.g);
        strArr.getClass();
        k44 k44Var = new k44(new ze(strArr, 1));
        ArrayList arrayList2 = new ArrayList(kn1.q(k44Var, 10));
        Iterator it = k44Var.iterator();
        while (true) {
            l44 l44Var = (l44) it;
            if (!l44Var.b.hasNext()) {
                this.j = n05.k(arrayList2);
                this.k = m96.d(list);
                this.l = new fh8(new cw3(this, 2));
                return;
            }
            j44 j44Var = (j44) l44Var.next();
            arrayList2.add(new b36(j44Var.b, Integer.valueOf(j44Var.a)));
        }
    }

    @Override // defpackage.ay0
    public final Set<String> a() {
        return this.e;
    }

    @Override // defpackage.mp7
    public final int c(String str) {
        str.getClass();
        Integer num = this.j.get(str);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    @Override // defpackage.mp7
    public final mp7 d(int i) {
        return this.g[i];
    }

    @Override // defpackage.mp7
    public final int e() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof op7) {
            mp7 mp7Var = (mp7) obj;
            if (this.a.equals(mp7Var.h()) && Arrays.equals(this.k, ((op7) obj).k)) {
                int iE = mp7Var.e();
                int i = this.c;
                if (i == iE) {
                    for (int i2 = 0; i2 < i; i2++) {
                        mp7[] mp7VarArr = this.g;
                        if (aa4.e(mp7VarArr[i2].h(), mp7Var.d(i2).h()) && aa4.e(mp7VarArr[i2].getKind(), mp7Var.d(i2).getKind())) {
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
        return this.f[i];
    }

    @Override // defpackage.mp7
    public final List<Annotation> g(int i) {
        return this.h[i];
    }

    @Override // defpackage.mp7
    public final List<Annotation> getAnnotations() {
        return this.d;
    }

    @Override // defpackage.mp7
    public final sp7 getKind() {
        return this.b;
    }

    @Override // defpackage.mp7
    public final String h() {
        return this.a;
    }

    public final int hashCode() {
        return ((Number) this.l.getValue()).intValue();
    }

    @Override // defpackage.mp7
    public final boolean i(int i) {
        return this.i[i];
    }

    public final String toString() {
        return x97.b(this);
    }
}
