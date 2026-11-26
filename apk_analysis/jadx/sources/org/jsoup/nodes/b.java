package org.jsoup.nodes;

import defpackage.ja8;
import defpackage.nw6;
import defpackage.qz0;
import defpackage.ti0;
import defpackage.yb9;
import java.io.Serializable;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import org.jsoup.helper.ValidationException;

/* JADX INFO: loaded from: classes5.dex */
public final class b implements Iterable<org.jsoup.nodes.a>, Cloneable {
    public int b = 0;
    public String[] c = new String[3];
    public Object[] d = new Object[3];

    public class a implements Iterator<org.jsoup.nodes.a> {
        public int b;
        public int c = 0;

        public a() {
            this.b = b.this.b;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            b bVar = b.this;
            if (bVar.b != this.b) {
                throw new ConcurrentModificationException("Use Iterator#remove() instead to remove attributes while iterating.");
            }
            while (true) {
                int i = this.c;
                if (i >= bVar.b || !b.q(bVar.c[i])) {
                    break;
                }
                this.c++;
            }
            return this.c < bVar.b;
        }

        @Override // java.util.Iterator
        public final org.jsoup.nodes.a next() {
            b bVar = b.this;
            int i = bVar.b;
            if (i != this.b) {
                throw new ConcurrentModificationException("Use Iterator#remove() instead to remove attributes while iterating.");
            }
            int i2 = this.c;
            if (i2 >= i) {
                qz0.e();
                return null;
            }
            String str = bVar.c[i2];
            String str2 = (String) bVar.d[this.c];
            org.jsoup.nodes.a aVar = new org.jsoup.nodes.a();
            yb9.e(str);
            String strTrim = str.trim();
            yb9.c(strTrim);
            aVar.b = strTrim;
            aVar.c = str2;
            aVar.d = bVar;
            this.c++;
            return aVar;
        }

        @Override // java.util.Iterator
        public final void remove() {
            int i = this.c - 1;
            this.c = i;
            b.this.s(i);
            this.b--;
        }
    }

    public static String d(Object obj) {
        return obj == null ? "" : (String) obj;
    }

    public static boolean q(String str) {
        return str.length() > 1 && str.charAt(0) == '/';
    }

    public final void b(String str, Serializable serializable) {
        c(this.b + 1);
        String[] strArr = this.c;
        int i = this.b;
        strArr[i] = str;
        this.d[i] = serializable;
        this.b = i + 1;
    }

    public final void c(int i) {
        yb9.b(i >= this.b);
        String[] strArr = this.c;
        int length = strArr.length;
        if (length >= i) {
            return;
        }
        int i2 = length >= 3 ? this.b * 2 : 3;
        if (i <= i2) {
            i = i2;
        }
        this.c = (String[]) Arrays.copyOf(strArr, i);
        this.d = Arrays.copyOf(this.d, i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && b.class == obj.getClass()) {
            b bVar = (b) obj;
            if (this.b == bVar.b) {
                for (int i = 0; i < this.b; i++) {
                    int iL = bVar.l(this.c[i]);
                    if (iL != -1 && Objects.equals(this.d[i], bVar.d[iL])) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public final b clone() {
        try {
            b bVar = (b) super.clone();
            bVar.b = this.b;
            bVar.c = (String[]) Arrays.copyOf(this.c, this.b);
            bVar.d = Arrays.copyOf(this.d, this.b);
            int iL = l("/jsoup.userdata");
            if (iL != -1) {
                this.d[iL] = new HashMap((Map) this.d[iL]);
            }
            return bVar;
        } catch (CloneNotSupportedException e) {
            ti0.f(e);
            return null;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(this.d) + (((this.b * 31) + Arrays.hashCode(this.c)) * 31);
    }

    public final String i(String str) {
        int iL = l(str);
        return iL == -1 ? "" : d(this.d[iL]);
    }

    @Override // java.lang.Iterable
    public final Iterator<org.jsoup.nodes.a> iterator() {
        return new a();
    }

    public final boolean j(String str) {
        return l(str) != -1;
    }

    public final void k(nw6 nw6Var, f.a aVar) {
        String strB;
        int i = this.b;
        for (int i2 = 0; i2 < i; i2++) {
            String str = this.c[i2];
            if (!q(str) && (strB = org.jsoup.nodes.a.b(str, aVar.g)) != null) {
                org.jsoup.nodes.a.c(strB, (String) this.d[i2], nw6Var.a(' '), aVar);
            }
        }
    }

    public final int l(String str) {
        yb9.e(str);
        for (int i = 0; i < this.b; i++) {
            if (str.equals(this.c[i])) {
                return i;
            }
        }
        return -1;
    }

    public final int p(String str) {
        yb9.e(str);
        for (int i = 0; i < this.b; i++) {
            if (str.equalsIgnoreCase(this.c[i])) {
                return i;
            }
        }
        return -1;
    }

    public final void r(String str, String str2) {
        yb9.e(str);
        int iL = l(str);
        if (iL != -1) {
            this.d[iL] = str2;
        } else {
            b(str, str2);
        }
    }

    public final void s(int i) {
        int i2 = this.b;
        if (i >= i2) {
            throw new ValidationException("Must be false");
        }
        int i3 = (i2 - i) - 1;
        if (i3 > 0) {
            String[] strArr = this.c;
            int i4 = i + 1;
            System.arraycopy(strArr, i4, strArr, i, i3);
            Object[] objArr = this.d;
            System.arraycopy(objArr, i4, objArr, i, i3);
        }
        int i5 = this.b - 1;
        this.b = i5;
        this.c[i5] = null;
        this.d[i5] = null;
    }

    public final int size() {
        if (this.b == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < this.b; i2++) {
            if (!q(this.c[i2])) {
                i++;
            }
        }
        return i;
    }

    public final String toString() {
        StringBuilder sbA = ja8.a();
        k(nw6.d(sbA), new f.a());
        return ja8.k(sbA);
    }
}
