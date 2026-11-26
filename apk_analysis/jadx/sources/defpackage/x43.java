package defpackage;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public final class x43 {
    public final Context a;

    public interface a {

        /* JADX INFO: renamed from: x43$a$a, reason: collision with other inner class name */
        public static final class C0355a implements a {
            public static final C0355a a = new C0355a();
        }

        public static final class b implements a {
            public final String a;

            public b(String str) {
                this.a = str;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof b) && this.a.equals(((b) obj).a);
            }

            public final int hashCode() {
                return this.a.hashCode();
            }

            public final String toString() {
                return me0.c("Fallback(url=", this.a, ")");
            }
        }

        public static final class c implements a {
            public static final c a = new c();
        }
    }

    public x43(Context context) {
        this.a = context;
    }
}
