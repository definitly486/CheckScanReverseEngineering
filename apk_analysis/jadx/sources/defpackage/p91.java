package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class p91<T> {
    public static final b b = new b();
    public final Object a;

    public static final class a extends b {
        public final Throwable a;

        public a(Throwable th) {
            this.a = th;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof a) {
                return aa4.e(this.a, ((a) obj).a);
            }
            return false;
        }

        public final int hashCode() {
            Throwable th = this.a;
            if (th != null) {
                return th.hashCode();
            }
            return 0;
        }

        @Override // p91.b
        public final String toString() {
            return "Closed(" + this.a + ')';
        }
    }

    public static class b {
        public String toString() {
            return "Failed";
        }
    }

    public /* synthetic */ p91(Object obj) {
        this.a = obj;
    }

    public static final Throwable a(Object obj) {
        a aVar = obj instanceof a ? (a) obj : null;
        if (aVar != null) {
            return aVar.a;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final T b(Object obj) {
        if (obj instanceof b) {
            return null;
        }
        return obj;
    }

    public static final void c(Object obj) {
        if (obj instanceof b) {
            if (!(obj instanceof a)) {
                ah.f("Trying to call 'getOrThrow' on a failed result of a non-closed channel");
                return;
            }
            Throwable th = ((a) obj).a;
            if (th != null) {
                throw th;
            }
            ah.f("Trying to call 'getOrThrow' on a channel closed without a cause");
        }
    }

    public static String d(Object obj) {
        if (obj instanceof a) {
            return ((a) obj).toString();
        }
        return "Value(" + obj + ')';
    }

    public final boolean equals(Object obj) {
        if (obj instanceof p91) {
            return aa4.e(this.a, ((p91) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public final String toString() {
        return d(this.a);
    }
}
