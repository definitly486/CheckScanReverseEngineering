package defpackage;

import java.io.Serializable;
import java.lang.Comparable;

/* JADX INFO: loaded from: classes4.dex */
public abstract class l72<C extends Comparable> implements Comparable<l72<C>>, Serializable {
    public final C b;

    public static final class a extends l72<Comparable<?>> {
        public static final a c = new a("");

        private Object readResolve() {
            return c;
        }

        @Override // defpackage.l72
        /* JADX INFO: renamed from: a */
        public final int compareTo(l72<Comparable<?>> l72Var) {
            return l72Var == this ? 0 : 1;
        }

        @Override // defpackage.l72, java.lang.Comparable
        public final int compareTo(Object obj) {
            return ((l72) obj) == this ? 0 : 1;
        }

        @Override // defpackage.l72
        public final void d(StringBuilder sb) {
            throw new AssertionError();
        }

        @Override // defpackage.l72
        public final void e(StringBuilder sb) {
            sb.append("+∞)");
        }

        @Override // defpackage.l72
        public final Comparable<?> f() {
            throw new IllegalStateException("range unbounded on this side");
        }

        @Override // defpackage.l72
        public final boolean g(Comparable<?> comparable) {
            return false;
        }

        @Override // defpackage.l72
        public final int hashCode() {
            return System.identityHashCode(this);
        }

        public final String toString() {
            return "+∞";
        }
    }

    public static final class b<C extends Comparable> extends l72<C> {
        @Override // defpackage.l72, java.lang.Comparable
        public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
            return compareTo((l72) obj);
        }

        @Override // defpackage.l72
        public final void d(StringBuilder sb) {
            sb.append('(');
            sb.append(this.b);
        }

        @Override // defpackage.l72
        public final void e(StringBuilder sb) {
            sb.append(this.b);
            sb.append(']');
        }

        @Override // defpackage.l72
        public final boolean g(C c) {
            gx6<Comparable> gx6Var = gx6.d;
            return this.b.compareTo(c) < 0;
        }

        @Override // defpackage.l72
        public final int hashCode() {
            return ~this.b.hashCode();
        }

        public final String toString() {
            return "/" + this.b + "\\";
        }
    }

    public static final class c extends l72<Comparable<?>> {
        public static final c c = new c("");

        private Object readResolve() {
            return c;
        }

        @Override // defpackage.l72
        /* JADX INFO: renamed from: a */
        public final int compareTo(l72<Comparable<?>> l72Var) {
            return l72Var == this ? 0 : -1;
        }

        @Override // defpackage.l72, java.lang.Comparable
        public final int compareTo(Object obj) {
            return ((l72) obj) == this ? 0 : -1;
        }

        @Override // defpackage.l72
        public final void d(StringBuilder sb) {
            sb.append("(-∞");
        }

        @Override // defpackage.l72
        public final void e(StringBuilder sb) {
            throw new AssertionError();
        }

        @Override // defpackage.l72
        public final Comparable<?> f() {
            throw new IllegalStateException("range unbounded on this side");
        }

        @Override // defpackage.l72
        public final boolean g(Comparable<?> comparable) {
            return true;
        }

        @Override // defpackage.l72
        public final int hashCode() {
            return System.identityHashCode(this);
        }

        public final String toString() {
            return "-∞";
        }
    }

    public static final class d<C extends Comparable> extends l72<C> {
        @Override // defpackage.l72, java.lang.Comparable
        public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
            return compareTo((l72) obj);
        }

        @Override // defpackage.l72
        public final void d(StringBuilder sb) {
            sb.append('[');
            sb.append(this.b);
        }

        @Override // defpackage.l72
        public final void e(StringBuilder sb) {
            sb.append(this.b);
            sb.append(')');
        }

        @Override // defpackage.l72
        public final boolean g(C c) {
            gx6<Comparable> gx6Var = gx6.d;
            return this.b.compareTo(c) <= 0;
        }

        @Override // defpackage.l72
        public final int hashCode() {
            return this.b.hashCode();
        }

        public final String toString() {
            return "\\" + this.b + "/";
        }
    }

    public l72(C c2) {
        this.b = c2;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(l72<C> l72Var) {
        if (l72Var == c.c) {
            return 1;
        }
        if (l72Var == a.c) {
            return -1;
        }
        C c2 = l72Var.b;
        gx6<Comparable> gx6Var = gx6.d;
        int iCompareTo = this.b.compareTo(c2);
        return iCompareTo != 0 ? iCompareTo : Boolean.compare(this instanceof b, l72Var instanceof b);
    }

    public abstract void d(StringBuilder sb);

    public abstract void e(StringBuilder sb);

    public final boolean equals(Object obj) {
        if (obj instanceof l72) {
            try {
                if (compareTo((l72) obj) == 0) {
                    return true;
                }
            } catch (ClassCastException unused) {
            }
        }
        return false;
    }

    public C f() {
        return this.b;
    }

    public abstract boolean g(C c2);

    public abstract int hashCode();
}
