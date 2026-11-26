package defpackage;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class ld8 {

    public static final class a<T> implements kd8<T>, Serializable {
        public transient Object b = new Object();
        public final kd8<T> c;
        public volatile transient boolean d;
        public transient T e;

        public a(kd8<T> kd8Var) {
            kd8Var.getClass();
            this.c = kd8Var;
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.b = new Object();
        }

        @Override // defpackage.kd8
        public final T get() {
            if (!this.d) {
                synchronized (this.b) {
                    try {
                        if (!this.d) {
                            T t = this.c.get();
                            this.e = t;
                            this.d = true;
                            return t;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return this.e;
        }

        public final String toString() {
            return l2.d(new StringBuilder("Suppliers.memoize("), this.d ? l2.d(new StringBuilder("<supplier that returned "), this.e, ">") : this.c, ")");
        }
    }

    public static final class b<T> implements kd8<T> {
        public final Object b = new Object();
        public volatile kd8<T> c;
        public T d;

        public b(kd8<T> kd8Var) {
            kd8Var.getClass();
            this.c = kd8Var;
        }

        @Override // defpackage.kd8
        public final T get() {
            if (this.c != null) {
                synchronized (this.b) {
                    try {
                        if (this.c != null) {
                            T t = this.c.get();
                            this.d = t;
                            this.c = null;
                            return t;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return this.d;
        }

        public final String toString() {
            Object objD = this.c;
            StringBuilder sb = new StringBuilder("Suppliers.memoize(");
            if (objD == null) {
                objD = l2.d(new StringBuilder("<supplier that returned "), this.d, ">");
            }
            return l2.d(sb, objD, ")");
        }
    }

    public static final class c<T> implements kd8<T>, Serializable {
        public final T b;

        public c(T t) {
            this.b = t;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof c) {
                return this.b.equals(((c) obj).b);
            }
            return false;
        }

        @Override // defpackage.kd8
        public final T get() {
            return this.b;
        }

        public final int hashCode() {
            return Objects.hash(this.b);
        }

        public final String toString() {
            return l2.d(new StringBuilder("Suppliers.ofInstance("), this.b, ")");
        }
    }

    public static <T> kd8<T> a(kd8<T> kd8Var) {
        if ((kd8Var instanceof b) || (kd8Var instanceof a)) {
            return kd8Var;
        }
        return kd8Var instanceof Serializable ? new a(kd8Var) : new b(kd8Var);
    }
}
