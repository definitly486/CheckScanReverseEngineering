package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public interface ly5 {

    public interface a extends ly5 {

        /* JADX INFO: renamed from: ly5$a$a, reason: collision with other inner class name */
        public static final class C0302a implements a {
            public static final C0302a a = new C0302a();
        }

        public static final class b implements a {
            public static final b a = new b();
        }

        public static final class c implements a {
            public final String a;

            public c(String str) {
                this.a = str;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof c) && this.a.equals(((c) obj).a);
            }

            public final int hashCode() {
                return this.a.hashCode();
            }

            public final String toString() {
                return me0.c("Yandex(packageName=", this.a, ")");
            }
        }
    }

    public static final class b implements ly5 {
        public static final b a = new b();
    }
}
