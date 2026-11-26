package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public interface dq5 {

    public static final class a implements dq5 {
        public final Object a;

        public a(Object obj) {
            this.a = obj;
        }

        @Override // defpackage.dq5
        public final String a() {
            return vg.d(new StringBuilder("attempted to overwrite the existing value '"), this.a, '\'');
        }
    }

    public static final class b implements dq5 {
        public static final b a = new b();

        @Override // defpackage.dq5
        public final String a() {
            return "expected an Int value";
        }
    }

    public static final class c implements dq5 {
        public final int a;

        public c(int i) {
            this.a = i;
        }

        @Override // defpackage.dq5
        public final String a() {
            return l2.e(new StringBuilder("expected at least "), " digits", this.a);
        }
    }

    public static final class d implements dq5 {
        public final int a;

        public d(int i) {
            this.a = i;
        }

        @Override // defpackage.dq5
        public final String a() {
            return l2.e(new StringBuilder("expected at most "), " digits", this.a);
        }
    }

    public static final class e implements dq5 {
        public final String a;

        public e(String str) {
            this.a = str;
        }

        @Override // defpackage.dq5
        public final String a() {
            return xp.e(new StringBuilder("expected '"), this.a, '\'');
        }
    }

    String a();
}
