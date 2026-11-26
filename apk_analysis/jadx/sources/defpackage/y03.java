package defpackage;

import androidx.webkit.ProxyConfig;

/* JADX INFO: loaded from: classes5.dex */
public abstract class y03 {

    public static final class a extends y03 {
        @Override // defpackage.y03
        public final int a() {
            return 10;
        }

        public final String toString() {
            return ProxyConfig.MATCH_ALL_SCHEMES;
        }
    }

    public static final class a0 extends d0 {
        @Override // y03.q
        public final String toString() {
            return ":last-of-type";
        }
    }

    public static final class b extends y03 {
        public final String a;

        public b(String str) {
            this.a = str;
        }

        @Override // defpackage.y03
        public final int a() {
            return 2;
        }

        public final String toString() {
            return me0.c("[", this.a, "]");
        }
    }

    public static final class b0 extends q {
        @Override // y03.q
        public final String c() {
            return "nth-child";
        }
    }

    public static abstract class c extends y03 {
        public final String a;
        public final String b;

        public c(String str, String str2) {
            yb9.c(str);
            this.a = mo5.b(str);
            if ((str2.startsWith("'") && str2.endsWith("'")) || (str2.startsWith("\"") && str2.endsWith("\""))) {
                yb9.a("Quoted value must have content", str2.length() > 1);
                str2 = str2.substring(1, str2.length() - 1);
            }
            this.b = mo5.a(str2);
        }
    }

    public static final class c0 extends q {
        @Override // y03.q
        public final String c() {
            return "nth-last-child";
        }
    }

    public static final class d extends y03 {
        public final String a;

        public d(String str) {
            this.a = mo5.a(str);
        }

        @Override // defpackage.y03
        public final int a() {
            return 6;
        }

        public final String toString() {
            return me0.c("[^", this.a, "]");
        }
    }

    public static class d0 extends q {
        @Override // y03.q
        public final String c() {
            return "nth-last-of-type";
        }
    }

    public static final class e extends c {
        @Override // defpackage.y03
        public final int a() {
            return 3;
        }

        public final String toString() {
            return n2.d("[", this.a, "=", this.b, "]");
        }
    }

    public static class e0 extends q {
        @Override // y03.q
        public final String c() {
            return "nth-of-type";
        }
    }

    public static final class f extends c {
        @Override // defpackage.y03
        public final int a() {
            return 6;
        }

        public final String toString() {
            return n2.d("[", this.a, "*=", this.b, "]");
        }
    }

    public static final class f0 extends y03 {
        public final String toString() {
            return ":only-child";
        }
    }

    public static final class g extends c {
        @Override // defpackage.y03
        public final int a() {
            return 4;
        }

        public final String toString() {
            return n2.d("[", this.a, "$=", this.b, "]");
        }
    }

    public static final class g0 extends y03 {
        public final String toString() {
            return ":only-of-type";
        }
    }

    public static final class h extends y03 {
        public final String a;
        public final i17 b;

        public h(String str, i17 i17Var) {
            this.a = mo5.b(str);
            this.b = i17Var;
        }

        @Override // defpackage.y03
        public final int a() {
            return 8;
        }

        public final String toString() {
            return n2.d("[", this.a, "~=", this.b.toString(), "]");
        }
    }

    public static final class h0 extends y03 {
        @Override // defpackage.y03
        public final int a() {
            return 1;
        }

        public final String toString() {
            return ":root";
        }
    }

    public static final class i extends c {
        @Override // defpackage.y03
        public final int a() {
            return 3;
        }

        public final String toString() {
            return n2.d("[", this.a, "!=", this.b, "]");
        }
    }

    @Deprecated
    public static final class i0 extends y03 {
        public static boolean a = false;

        @Override // defpackage.y03
        public final int a() {
            return -1;
        }

        public final String toString() {
            return ":matchText";
        }
    }

    public static final class j extends c {
        @Override // defpackage.y03
        public final int a() {
            return 4;
        }

        public final String toString() {
            return n2.d("[", this.a, "^=", this.b, "]");
        }
    }

    public static final class j0 extends y03 {
        public final i17 a;

        public j0(i17 i17Var) {
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

    public static final class k extends y03 {
        public final String a;

        public k(String str) {
            this.a = str;
        }

        @Override // defpackage.y03
        public final int a() {
            return 8;
        }

        public final String toString() {
            return bj.c(".", this.a);
        }
    }

    public static final class k0 extends y03 {
        public final i17 a;

        public k0(i17 i17Var) {
            this.a = i17Var;
        }

        @Override // defpackage.y03
        public final int a() {
            return 7;
        }

        public final String toString() {
            return String.format(":matchesOwn(%s)", this.a);
        }
    }

    public static final class l extends y03 {
        public final String a;

        public l(String str) {
            this.a = mo5.a(str);
        }

        public final String toString() {
            return me0.c(":containsData(", this.a, ")");
        }
    }

    public static final class l0 extends y03 {
        public final i17 a;

        public l0(i17 i17Var) {
            this.a = i17Var;
        }

        @Override // defpackage.y03
        public final int a() {
            return 7;
        }

        public final String toString() {
            return String.format(":matchesWholeOwnText(%s)", this.a);
        }
    }

    public static final class m extends y03 {
        public final String a;

        public m(String str) {
            this.a = mo5.a(ja8.j(str));
        }

        public final String toString() {
            return me0.c(":containsOwn(", this.a, ")");
        }
    }

    public static final class m0 extends y03 {
        public final i17 a;

        public m0(i17 i17Var) {
            this.a = i17Var;
        }

        @Override // defpackage.y03
        public final int a() {
            return 8;
        }

        public final String toString() {
            return String.format(":matchesWholeText(%s)", this.a);
        }
    }

    public static final class n extends y03 {
        public final String a;

        public n(String str) {
            this.a = mo5.a(ja8.j(str));
        }

        @Override // defpackage.y03
        public final int a() {
            return 10;
        }

        public final String toString() {
            return me0.c(":contains(", this.a, ")");
        }
    }

    public static final class n0 extends y03 {
        public final String a;

        public n0(String str) {
            this.a = str;
        }

        @Override // defpackage.y03
        public final int a() {
            return 1;
        }

        public final String toString() {
            return this.a;
        }
    }

    public static final class o extends y03 {
        public final String a;

        public o(String str) {
            this.a = str;
        }

        public final String toString() {
            return me0.c(":containsWholeOwnText(", this.a, ")");
        }
    }

    public static final class o0 extends y03 {
        public final String a;

        public o0(String str) {
            this.a = str;
        }

        public final String toString() {
            return bj.c("*|", this.a);
        }
    }

    public static final class p extends y03 {
        public final String a;

        public p(String str) {
            this.a = str;
        }

        @Override // defpackage.y03
        public final int a() {
            return 10;
        }

        public final String toString() {
            return me0.c(":containsWholeText(", this.a, ")");
        }
    }

    public static final class p0 extends y03 {
        public final String a;

        public p0(String str) {
            this.a = str;
        }

        public final String toString() {
            return ni0.c(this.a, "|*");
        }
    }

    public static abstract class q extends y03 {
        public final int a;
        public final int b;

        public q(int i, int i2) {
            this.a = i;
            this.b = i2;
        }

        public abstract String c();

        public String toString() {
            String str;
            int i = this.b;
            int i2 = this.a;
            if (i2 == 0) {
                str = ":%s(%3$d)";
            } else {
                str = i == 0 ? ":%s(%2$dn)" : ":%s(%2$dn%3$+d)";
            }
            return String.format(str, c(), Integer.valueOf(i2), Integer.valueOf(i));
        }
    }

    public static final class r extends y03 {
        public final String a;

        public r(String str) {
            this.a = str;
        }

        @Override // defpackage.y03
        public final int a() {
            return 2;
        }

        public final String toString() {
            return bj.c("#", this.a);
        }
    }

    public static final class s extends t {
        public final String toString() {
            return String.format(":eq(%d)", Integer.valueOf(this.a));
        }
    }

    public static abstract class t extends y03 {
        public final int a;

        public t(int i) {
            this.a = i;
        }
    }

    public static final class u extends t {
        public final String toString() {
            return String.format(":gt(%d)", Integer.valueOf(this.a));
        }
    }

    public static final class v extends t {
        public final String toString() {
            return String.format(":lt(%d)", Integer.valueOf(this.a));
        }
    }

    public static final class w extends y03 {
        public final String toString() {
            return ":empty";
        }
    }

    public static final class x extends y03 {
        public final String toString() {
            return ":first-child";
        }
    }

    public static final class y extends e0 {
        @Override // y03.q
        public final String toString() {
            return ":first-of-type";
        }
    }

    public static final class z extends y03 {
        public final String toString() {
            return ":last-child";
        }
    }

    public int a() {
        return 5;
    }

    public boolean b() {
        return false;
    }
}
