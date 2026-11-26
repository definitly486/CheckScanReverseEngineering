package defpackage;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public abstract class dx6 {
    public static final a b = new a();
    public static final j1 c;

    public static final class a extends dx6 implements Serializable {

        /* JADX INFO: renamed from: dx6$a$a, reason: collision with other inner class name */
        public static final class C0181a implements Serializable {
            public static final C0181a b = new C0181a();

            private final Object readResolve() {
                return dx6.b;
            }
        }

        private final void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
            throw new InvalidObjectException("Deserialization is supported via proxy only");
        }

        private final Object writeReplace() {
            return C0181a.b;
        }

        @Override // defpackage.dx6
        public final int a(int i) {
            return dx6.c.a(i);
        }
    }

    static {
        f96.a.getClass();
        Integer num = cb4.a.a;
        c = (num == null || num.intValue() >= 34) ? new l96() : new k53();
    }

    public abstract int a(int i);
}
