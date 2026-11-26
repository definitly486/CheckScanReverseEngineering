package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes5.dex */
public final class jv3 implements Iterable<b36<? extends String, ? extends String>>, re4 {
    public final String[] b;

    public static final class a {
        public final ArrayList a = new ArrayList(20);

        public final void a(String str, String str2) {
            str.getClass();
            str2.getClass();
            b.a(str);
            b.b(str2, str);
            c(str, str2);
        }

        public final void b(String str) {
            int iJ = ta8.J(':', 1, 4, str);
            if (iJ != -1) {
                c(str.substring(0, iJ), str.substring(iJ + 1));
            } else if (str.charAt(0) == ':') {
                c("", str.substring(1));
            } else {
                c("", str);
            }
        }

        public final void c(String str, String str2) {
            str.getClass();
            str2.getClass();
            ArrayList arrayList = this.a;
            arrayList.add(str);
            arrayList.add(ta8.f0(str2).toString());
        }

        public final void d(String str, String str2) {
            str.getClass();
            str2.getClass();
            if (str.length() <= 0) {
                fg.c("name is empty");
                return;
            }
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                if ('!' > cCharAt || cCharAt >= 127) {
                    c9.f(gb9.h("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i), str));
                    return;
                }
            }
            c(str, str2);
        }

        public final jv3 e() {
            return new jv3((String[]) this.a.toArray(new String[0]));
        }

        public final String f(String str) {
            str.getClass();
            ArrayList arrayList = this.a;
            int size = arrayList.size() - 2;
            int iA = nh5.a(size, 0, -2);
            if (iA > size) {
                return null;
            }
            while (!str.equalsIgnoreCase((String) arrayList.get(size))) {
                if (size == iA) {
                    return null;
                }
                size -= 2;
            }
            return (String) arrayList.get(size + 1);
        }

        public final void g(String str) {
            str.getClass();
            int i = 0;
            while (true) {
                ArrayList arrayList = this.a;
                if (i >= arrayList.size()) {
                    return;
                }
                if (str.equalsIgnoreCase((String) arrayList.get(i))) {
                    arrayList.remove(i);
                    arrayList.remove(i);
                    i -= 2;
                }
                i += 2;
            }
        }
    }

    public static final class b {
        public static void a(String str) {
            if (str.length() <= 0) {
                fg.c("name is empty");
                return;
            }
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                if ('!' > cCharAt || cCharAt >= 127) {
                    c9.f(gb9.h("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i), str));
                    return;
                }
            }
        }

        public static void b(String str, String str2) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                if (cCharAt != '\t' && (' ' > cCharAt || cCharAt >= 127)) {
                    c9.f(gb9.h("Unexpected char %#04x at %d in %s value", Integer.valueOf(cCharAt), Integer.valueOf(i), str2).concat(gb9.p(str2) ? "" : ": ".concat(str)));
                    return;
                }
            }
        }

        public static jv3 c(String... strArr) {
            if (strArr.length % 2 != 0) {
                fg.c("Expected alternating header names and values");
                return null;
            }
            String[] strArr2 = (String[]) strArr.clone();
            int length = strArr2.length;
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                String str = strArr2[i2];
                if (str == null) {
                    fg.c("Headers cannot be null");
                    return null;
                }
                strArr2[i2] = ta8.f0(str).toString();
            }
            int iA = nh5.a(0, strArr2.length - 1, 2);
            if (iA >= 0) {
                while (true) {
                    String str2 = strArr2[i];
                    String str3 = strArr2[i + 1];
                    a(str2);
                    b(str3, str2);
                    if (i == iA) {
                        break;
                    }
                    i += 2;
                }
            }
            return new jv3(strArr2);
        }
    }

    public jv3(String[] strArr) {
        this.b = strArr;
    }

    public final String a(String str) {
        str.getClass();
        String[] strArr = this.b;
        int length = strArr.length - 2;
        int iA = nh5.a(length, 0, -2);
        if (iA > length) {
            return null;
        }
        while (!ra8.v(str, strArr[length], true)) {
            if (length == iA) {
                return null;
            }
            length -= 2;
        }
        return strArr[length + 1];
    }

    public final String b(int i) {
        return this.b[i * 2];
    }

    public final Set<String> c() {
        Comparator comparator = String.CASE_INSENSITIVE_ORDER;
        comparator.getClass();
        TreeSet treeSet = new TreeSet(comparator);
        int size = size();
        for (int i = 0; i < size; i++) {
            treeSet.add(b(i));
        }
        Set<String> setUnmodifiableSet = Collections.unmodifiableSet(treeSet);
        setUnmodifiableSet.getClass();
        return setUnmodifiableSet;
    }

    public final a d() {
        a aVar = new a();
        nn1.u(aVar.a, this.b);
        return aVar;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof jv3) {
            return Arrays.equals(this.b, ((jv3) obj).b);
        }
        return false;
    }

    public final String g(int i) {
        return this.b[(i * 2) + 1];
    }

    public final List<String> h(String str) {
        str.getClass();
        int size = size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            if (str.equalsIgnoreCase(b(i))) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(g(i));
            }
        }
        if (arrayList == null) {
            return kx2.b;
        }
        List<String> listUnmodifiableList = Collections.unmodifiableList(arrayList);
        listUnmodifiableList.getClass();
        return listUnmodifiableList;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b);
    }

    @Override // java.lang.Iterable
    public final Iterator<b36<? extends String, ? extends String>> iterator() {
        int size = size();
        b36[] b36VarArr = new b36[size];
        for (int i = 0; i < size; i++) {
            b36VarArr[i] = new b36(b(i), g(i));
        }
        return new jr(b36VarArr);
    }

    public final int size() {
        return this.b.length / 2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int size = size();
        for (int i = 0; i < size; i++) {
            String strB = b(i);
            String strG = g(i);
            sb.append(strB);
            sb.append(": ");
            if (gb9.p(strB)) {
                strG = "██";
            }
            sb.append(strG);
            sb.append("\n");
        }
        return sb.toString();
    }
}
