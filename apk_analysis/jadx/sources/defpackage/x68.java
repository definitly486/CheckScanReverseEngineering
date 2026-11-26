package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class x68<T> {
    public final List<T> a;

    public static final class a<T> extends x68<T> {
        public final List<T> b;

        /* JADX WARN: Multi-variable type inference failed */
        public a(List<? extends T> list) {
            super(list);
            this.b = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && this.b.equals(((a) obj).b);
        }

        public final int hashCode() {
            return this.b.hashCode();
        }

        public final String toString() {
            return rs2.c("Data(data=", this.b, ")");
        }
    }

    public static final class b<T> extends x68<T> {
        public final List<T> b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(List<? extends T> list) {
            super(list);
            list.getClass();
            this.b = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && aa4.e(this.b, ((b) obj).b);
        }

        public final int hashCode() {
            return this.b.hashCode();
        }

        public final String toString() {
            return rs2.c("Error(data=", this.b, ")");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public x68(List<? extends T> list) {
        this.a = list;
    }

    public static final class c<T> extends x68<T> {
        public final List<T> b;

        /* JADX WARN: Multi-variable type inference failed */
        public c(List<? extends T> list) {
            super(list);
            this.b = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c) && aa4.e(this.b, ((c) obj).b);
        }

        public final int hashCode() {
            return this.b.hashCode();
        }

        public final String toString() {
            return rs2.c("Initial(data=", this.b, ")");
        }

        public /* synthetic */ c(int i) {
            this(kx2.b);
        }
    }
}
