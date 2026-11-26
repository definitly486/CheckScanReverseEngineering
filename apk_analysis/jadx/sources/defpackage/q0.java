package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public abstract class q0<T> extends y69<T> {
    public a b = a.NOT_READY;
    public T c;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a DONE;
        public static final a FAILED;
        public static final a NOT_READY;
        public static final a READY;

        static {
            a aVar = new a("READY", 0);
            READY = aVar;
            a aVar2 = new a("NOT_READY", 1);
            NOT_READY = aVar2;
            a aVar3 = new a("DONE", 2);
            DONE = aVar3;
            a aVar4 = new a("FAILED", 3);
            FAILED = aVar4;
            $VALUES = new a[]{aVar, aVar2, aVar3, aVar4};
        }

        public a() {
            throw null;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) $VALUES.clone();
        }
    }

    public abstract T a();

    @Override // java.util.Iterator
    public final boolean hasNext() {
        a aVar = this.b;
        a aVar2 = a.FAILED;
        o8.r(aVar != aVar2);
        int iOrdinal = this.b.ordinal();
        if (iOrdinal == 0) {
            return true;
        }
        if (iOrdinal != 2) {
            this.b = aVar2;
            this.c = a();
            if (this.b != a.DONE) {
                this.b = a.READY;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (!hasNext()) {
            qz0.e();
            return null;
        }
        this.b = a.NOT_READY;
        T t = this.c;
        this.c = null;
        return t;
    }
}
