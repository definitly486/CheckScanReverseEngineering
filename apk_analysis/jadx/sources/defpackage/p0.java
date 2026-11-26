package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class p0<T> implements Iterator<T> {
    public a b;
    public String c;

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

    @Override // java.util.Iterator
    public final boolean hasNext() {
        String string;
        int iA;
        y91 y91Var;
        a aVar = this.b;
        a aVar2 = a.FAILED;
        o8.r(aVar != aVar2);
        int iOrdinal = this.b.ordinal();
        if (iOrdinal == 0) {
            return true;
        }
        if (iOrdinal != 2) {
            this.b = aVar2;
            k68.a aVar3 = (k68.a) this;
            int i = aVar3.g;
            while (true) {
                int i2 = aVar3.g;
                if (i2 == -1) {
                    aVar3.b = a.DONE;
                    string = null;
                    break;
                }
                int iB = aVar3.b(i2);
                CharSequence charSequence = aVar3.d;
                if (iB == -1) {
                    iB = charSequence.length();
                    aVar3.g = -1;
                    iA = -1;
                } else {
                    iA = aVar3.a(iB);
                    aVar3.g = iA;
                }
                if (iA == i) {
                    int i3 = iA + 1;
                    aVar3.g = i3;
                    if (i3 > charSequence.length()) {
                        aVar3.g = -1;
                    }
                } else {
                    while (true) {
                        y91Var = aVar3.e;
                        if (i >= iB || !y91Var.c(charSequence.charAt(i))) {
                            break;
                        }
                        i++;
                    }
                    while (iB > i && y91Var.c(charSequence.charAt(iB - 1))) {
                        iB--;
                    }
                    if (!aVar3.f || i != iB) {
                        int i4 = aVar3.h;
                        if (i4 == 1) {
                            iB = charSequence.length();
                            aVar3.g = -1;
                            while (iB > i && y91Var.c(charSequence.charAt(iB - 1))) {
                                iB--;
                            }
                        } else {
                            aVar3.h = i4 - 1;
                        }
                        string = charSequence.subSequence(i, iB).toString();
                        break;
                    }
                    i = aVar3.g;
                }
            }
            this.c = string;
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
        T t = (T) this.c;
        this.c = null;
        return t;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
