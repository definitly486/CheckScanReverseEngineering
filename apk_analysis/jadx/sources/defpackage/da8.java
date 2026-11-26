package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class da8<Output> implements y36<Output> {
    public final xh5.a a;
    public final String b;
    public final a c = new a(null);

    public static final class b<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return pp1.a((String) ((b36) t).b, (String) ((b36) t2).b);
        }
    }

    public da8(Collection collection, xh5.a aVar, String str) {
        this.a = aVar;
        this.b = str;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            if (str2.length() <= 0) {
                c9.f("Found an empty string in ".concat(this.b));
                throw null;
            }
            a aVar2 = this.c;
            int length = str2.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = str2.charAt(i);
                List<b36<String, a>> list = aVar2.a;
                int iB = u96.b(list, list.size(), new mu2(String.valueOf(cCharAt), 2));
                if (iB < 0) {
                    a aVar3 = new a(null);
                    list.add((-iB) - 1, new b36<>(String.valueOf(cCharAt), aVar3));
                    aVar2 = aVar3;
                } else {
                    aVar2 = list.get(iB).c;
                }
            }
            if (aVar2.b) {
                c9.f(me0.c("The string '", str2, "' was passed several times"));
                throw null;
            }
            aVar2.b = true;
        }
        b(this.c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void b(a aVar) {
        List<b36<String, a>> list = aVar.a;
        Iterator<b36<String, a>> it = list.iterator();
        while (it.hasNext()) {
            b(it.next().c);
        }
        ArrayList arrayList = new ArrayList();
        for (b36<String, a> b36Var : list) {
            String str = b36Var.b;
            a aVar2 = b36Var.c;
            boolean z = aVar2.b;
            List<b36<String, a>> list2 = aVar2.a;
            if (z || list2.size() != 1) {
                arrayList.add(new b36(str, aVar2));
            } else {
                b36 b36Var2 = (b36) qn1.k0(list2);
                String str2 = (String) b36Var2.b;
                arrayList.add(new b36(ni0.c(str, str2), (a) b36Var2.c));
            }
        }
        list.clear();
        list.addAll(qn1.n0(arrayList, new b()));
    }

    @Override // defpackage.y36
    public final Object a(m02 m02Var, CharSequence charSequence, int i) {
        String str;
        a aVar;
        CharSequence charSequence2;
        boolean zS;
        p07 p07Var = new p07();
        p07Var.b = i;
        a aVar2 = this.c;
        Integer numValueOf = null;
        loop0: while (p07Var.b <= charSequence.length()) {
            if (aVar2.b) {
                numValueOf = Integer.valueOf(p07Var.b);
            }
            Iterator<b36<String, a>> it = aVar2.a.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break loop0;
                }
                b36<String, a> next = it.next();
                str = next.b;
                aVar = next.c;
                int i2 = p07Var.b;
                str.getClass();
                if (charSequence instanceof String) {
                    zS = ra8.B(i2, (String) charSequence, str, false);
                    charSequence2 = charSequence;
                } else {
                    charSequence2 = charSequence;
                    zS = ta8.S(charSequence2, i2, str, 0, str.length(), false);
                }
                if (zS) {
                    break;
                }
                charSequence = charSequence2;
            }
            p07Var.b = str.length() + p07Var.b;
            aVar2 = aVar;
            charSequence = charSequence2;
        }
        CharSequence charSequence3 = charSequence;
        if (numValueOf == null) {
            return new o36(i, new ea8(this, charSequence3, i, p07Var));
        }
        String string = charSequence3.subSequence(i, numValueOf.intValue()).toString();
        xh5.a aVar3 = this.a;
        Object objC = aVar3.c(m02Var, string);
        return objC == null ? numValueOf : new o36(i, new z36(objC, string, aVar3));
    }

    public static final class a {
        public final List<b36<String, a>> a;
        public boolean b;

        public a(Object obj) {
            this.a = new ArrayList();
            this.b = false;
        }

        public a() {
            this(null);
        }
    }
}
