package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ao5 extends y03 {

    public static class a extends ao5 {
        @Override // defpackage.y03
        public final int a() {
            return 4;
        }

        public final String toString() {
            return ":blank";
        }
    }

    public static class b extends ao5 {
        public final String a;

        public b(String str) {
            this.a = mo5.a(ja8.j(str));
        }

        @Override // defpackage.y03
        public final int a() {
            return 6;
        }

        public final String toString() {
            return me0.c(":contains(", this.a, ")");
        }
    }

    public static class c extends ao5 {
        public final String a;

        public c(String str) {
            this.a = "::".concat(str);
        }

        @Override // defpackage.y03
        public final int a() {
            return 1;
        }

        public final String toString() {
            return this.a;
        }
    }

    public static class d extends ao5 {
        public final i17 a;

        public d(i17 i17Var) {
            this.a = i17Var;
        }

        @Override // defpackage.y03
        public final int a() {
            return 8;
        }

        public final String toString() {
            return String.format(":matches(%s)", this.a);
        }
    }

    @Override // defpackage.y03
    public final boolean b() {
        return true;
    }
}
