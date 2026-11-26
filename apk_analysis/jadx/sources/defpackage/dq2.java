package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class dq2 {
    public static final LinkedHashSet p = new LinkedHashSet(Arrays.asList(wj0.class, nv3.class, m63.class, qx3.class, dt8.class, yq4.class, g44.class));
    public static final Map<Class<? extends pj0>, vj0> q;
    public CharSequence a;
    public boolean d;
    public boolean h;
    public final ArrayList i;
    public final n54 j;
    public final ArrayList k;
    public final aq2 l;
    public final ArrayList n;
    public final LinkedHashSet o;
    public int b = 0;
    public int c = 0;
    public int e = 0;
    public int f = 0;
    public int g = 0;
    public final LinkedHashMap m = new LinkedHashMap();

    public static class a {
        public final uj0 a;

        public a(uj0 uj0Var) {
            this.a = uj0Var;
        }
    }

    static {
        HashMap map = new HashMap();
        map.put(wj0.class, new xj0.a());
        map.put(nv3.class, new ov3.a());
        map.put(m63.class, new n63.a());
        map.put(qx3.class, new rx3.a());
        map.put(dt8.class, new et8.a());
        map.put(yq4.class, new zq4.a());
        map.put(g44.class, new h44.a());
        q = Collections.unmodifiableMap(map);
    }

    public dq2(ArrayList arrayList, n54 n54Var, ArrayList arrayList2) {
        ArrayList arrayList3 = new ArrayList();
        this.n = arrayList3;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        this.o = linkedHashSet;
        this.i = arrayList;
        this.j = n54Var;
        this.k = arrayList2;
        aq2 aq2Var = new aq2();
        this.l = aq2Var;
        arrayList3.add(aq2Var);
        linkedHashSet.add(aq2Var);
    }

    public final void a(uj0 uj0Var) {
        while (!h().c(uj0Var.d())) {
            e(h());
        }
        h().d().b(uj0Var.d());
        this.n.add(uj0Var);
        this.o.add(uj0Var);
    }

    public final void b(e36 e36Var) {
        pq4 pq4Var = e36Var.b;
        pq4Var.a();
        for (oq4 oq4Var : pq4Var.c) {
            d36 d36Var = e36Var.a;
            d36Var.getClass();
            oq4Var.f();
            zn5 zn5Var = d36Var.d;
            oq4Var.d = zn5Var;
            if (zn5Var != null) {
                zn5Var.e = oq4Var;
            }
            oq4Var.e = d36Var;
            d36Var.d = oq4Var;
            zn5 zn5Var2 = d36Var.a;
            oq4Var.a = zn5Var2;
            if (oq4Var.d == null) {
                zn5Var2.b = oq4Var;
            }
            String str = oq4Var.f;
            LinkedHashMap linkedHashMap = this.m;
            if (!linkedHashMap.containsKey(str)) {
                linkedHashMap.put(str, oq4Var);
            }
        }
    }

    public final void c() {
        CharSequence charSequenceSubSequence;
        if (this.d) {
            int i = this.b + 1;
            CharSequence charSequence = this.a;
            CharSequence charSequenceSubSequence2 = charSequence.subSequence(i, charSequence.length());
            int i2 = 4 - (this.c % 4);
            StringBuilder sb = new StringBuilder(charSequenceSubSequence2.length() + i2);
            for (int i3 = 0; i3 < i2; i3++) {
                sb.append(' ');
            }
            sb.append(charSequenceSubSequence2);
            charSequenceSubSequence = sb.toString();
        } else {
            CharSequence charSequence2 = this.a;
            charSequenceSubSequence = charSequence2.subSequence(this.b, charSequence2.length());
        }
        h().e(charSequenceSubSequence);
    }

    public final void d() {
        char cCharAt = this.a.charAt(this.b);
        int i = this.b;
        if (cCharAt != '\t') {
            this.b = i + 1;
            this.c++;
        } else {
            this.b = i + 1;
            int i2 = this.c;
            this.c = (4 - (i2 % 4)) + i2;
        }
    }

    public final void e(uj0 uj0Var) {
        if (h() == uj0Var) {
            ArrayList arrayList = this.n;
            arrayList.remove(arrayList.size() - 1);
        }
        if (uj0Var instanceof e36) {
            b((e36) uj0Var);
        }
        uj0Var.h();
    }

    public final void f(List<uj0> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            e(list.get(size));
        }
    }

    public final void g() {
        int i = this.b;
        int i2 = this.c;
        this.h = true;
        int length = this.a.length();
        while (i < length) {
            char cCharAt = this.a.charAt(i);
            if (cCharAt == '\t') {
                i++;
                i2 += 4 - (i2 % 4);
            } else if (cCharAt != ' ') {
                this.h = false;
                break;
            } else {
                i++;
                i2++;
            }
        }
        this.e = i;
        this.f = i2;
        this.g = i2 - this.c;
    }

    public final uj0 h() {
        return (uj0) dd2.b(1, this.n);
    }

    public final void i(String str) {
        bk0 bk0VarA;
        int length = str.length();
        StringBuilder sb = null;
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == 0) {
                if (sb == null) {
                    sb = new StringBuilder(length);
                    sb.append((CharSequence) str, 0, i);
                }
                sb.append((char) 65533);
            } else if (sb != null) {
                sb.append(cCharAt);
            }
        }
        if (sb != null) {
            str = sb.toString();
        }
        this.a = str;
        this.b = 0;
        this.c = 0;
        this.d = false;
        ArrayList arrayList = this.n;
        int i2 = 1;
        for (uj0 uj0Var : arrayList.subList(1, arrayList.size())) {
            g();
            rj0 rj0VarF = uj0Var.f(this);
            if (rj0VarF == null) {
                break;
            }
            if (rj0VarF.c) {
                e(uj0Var);
                return;
            }
            int i3 = rj0VarF.a;
            if (i3 != -1) {
                k(i3);
            } else {
                int i4 = rj0VarF.b;
                if (i4 != -1) {
                    j(i4);
                }
            }
            i2++;
        }
        ArrayList arrayList2 = new ArrayList(arrayList.subList(i2, arrayList.size()));
        uj0Var = (uj0) arrayList.get(i2 - 1);
        boolean zIsEmpty = arrayList2.isEmpty();
        boolean zA = (uj0Var.d() instanceof d36) || uj0Var.a();
        while (zA) {
            g();
            if (this.h || (this.g < 4 && Character.isLetter(Character.codePointAt(this.a, this.e)))) {
                k(this.e);
                break;
            }
            a aVar = new a(uj0Var);
            Iterator it = this.i.iterator();
            do {
                if (!it.hasNext()) {
                    bk0VarA = null;
                    break;
                }
                bk0VarA = ((vj0) it.next()).a(this, aVar);
            } while (bk0VarA == null);
            if (bk0VarA == null) {
                k(this.e);
                break;
            }
            if (!zIsEmpty) {
                f(arrayList2);
                zIsEmpty = true;
            }
            int i5 = bk0VarA.b;
            if (i5 != -1) {
                k(i5);
            } else {
                int i6 = bk0VarA.c;
                if (i6 != -1) {
                    j(i6);
                }
            }
            if (bk0VarA.d) {
                uj0 uj0VarH = h();
                arrayList.remove(arrayList.size() - 1);
                this.o.remove(uj0VarH);
                if (uj0VarH instanceof e36) {
                    b((e36) uj0VarH);
                }
                uj0VarH.d().f();
            }
            uj0[] uj0VarArr = bk0VarA.a;
            for (uj0 uj0Var2 : uj0VarArr) {
                a(uj0Var2);
                zA = uj0Var2.a();
            }
        }
        if (!zIsEmpty && !this.h && h().b()) {
            c();
            return;
        }
        if (!zIsEmpty) {
            f(arrayList2);
        }
        if (!uj0Var2.a()) {
            c();
        } else {
            if (this.h) {
                return;
            }
            a(new e36());
            c();
        }
    }

    public final void j(int i) {
        int i2;
        int i3 = this.f;
        if (i >= i3) {
            this.b = this.e;
            this.c = i3;
        }
        int length = this.a.length();
        while (true) {
            i2 = this.c;
            if (i2 >= i || this.b == length) {
                break;
            } else {
                d();
            }
        }
        if (i2 <= i) {
            this.d = false;
            return;
        }
        this.b--;
        this.c = i;
        this.d = true;
    }

    public final void k(int i) {
        int i2 = this.e;
        if (i >= i2) {
            this.b = i2;
            this.c = this.f;
        }
        int length = this.a.length();
        while (true) {
            int i3 = this.b;
            if (i3 >= i || i3 == length) {
                break;
            } else {
                d();
            }
        }
        this.d = false;
    }
}
