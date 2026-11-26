package defpackage;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public abstract class n03<T> {

    public static final class a extends n03<Object> implements Serializable {
        public static final a b = new a();

        private Object readResolve() {
            return b;
        }

        @Override // defpackage.n03
        public final boolean a(Object obj, Object obj2) {
            return obj.equals(obj2);
        }

        @Override // defpackage.n03
        public final int b(Object obj) {
            return obj.hashCode();
        }
    }

    public static final class b extends n03<Object> implements Serializable {
        public static final b b = new b();

        private Object readResolve() {
            return b;
        }

        @Override // defpackage.n03
        public final boolean a(Object obj, Object obj2) {
            return false;
        }

        @Override // defpackage.n03
        public final int b(Object obj) {
            return System.identityHashCode(obj);
        }
    }

    public abstract boolean a(T t, T t2);

    public abstract int b(T t);

    public final boolean d(T t, T t2) {
        if (t == t2) {
            return true;
        }
        if (t == null || t2 == null) {
            return false;
        }
        return a(t, t2);
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }
}
