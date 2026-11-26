package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public abstract class y91 implements bf6<Character> {

    public static final class a extends y91 {
        public final y91 b;
        public final y91 c;

        public a(y91 y91Var, y91 y91Var2) {
            this.b = y91Var;
            y91Var2.getClass();
            this.c = y91Var2;
        }

        @Override // defpackage.bf6
        @Deprecated
        public final boolean apply(Character ch) {
            return c(ch.charValue());
        }

        @Override // defpackage.y91
        public final boolean c(char c) {
            return this.b.c(c) && this.c.c(c);
        }

        public final String toString() {
            return this.b + ".and(" + this.c + ")";
        }
    }

    public static final class b extends j {
        public static final b c = new b("CharMatcher.any()");

        @Override // defpackage.y91
        public final int b(CharSequence charSequence) {
            return charSequence.length();
        }

        @Override // defpackage.y91
        public final boolean c(char c2) {
            return true;
        }

        @Override // y91.e, defpackage.y91
        public final y91 d() {
            return m.c;
        }
    }

    public static final class c extends y91 {
        public final char[] b;

        public c(String str) {
            char[] charArray = str.toString().toCharArray();
            this.b = charArray;
            Arrays.sort(charArray);
        }

        @Override // defpackage.bf6
        @Deprecated
        public final boolean apply(Character ch) {
            return c(ch.charValue());
        }

        @Override // defpackage.y91
        public final boolean c(char c) {
            return Arrays.binarySearch(this.b, c) >= 0;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("CharMatcher.anyOf(\"");
            for (char c : this.b) {
                sb.append(y91.e(c));
            }
            sb.append("\")");
            return sb.toString();
        }
    }

    public static final class d extends j {
        public static final d c = new d("CharMatcher.ascii()");

        @Override // defpackage.y91
        public final boolean c(char c2) {
            return c2 <= 127;
        }
    }

    public static abstract class e extends y91 {
        @Override // defpackage.bf6
        @Deprecated
        public final boolean apply(Character ch) {
            return c(ch.charValue());
        }

        @Override // defpackage.y91
        public y91 d() {
            return new l(this);
        }
    }

    public static final class f extends e {
        public final char b;

        public f(char c) {
            this.b = c;
        }

        @Override // defpackage.y91
        public final boolean c(char c) {
            return c == this.b;
        }

        @Override // y91.e, defpackage.y91
        public final y91 d() {
            return new h(this.b);
        }

        public final String toString() {
            return "CharMatcher.is('" + y91.e(this.b) + "')";
        }
    }

    public static final class g extends e {
        public final char b;
        public final char c;

        public g(char c, char c2) {
            this.b = c;
            this.c = c2;
        }

        @Override // defpackage.y91
        public final boolean c(char c) {
            return c == this.b || c == this.c;
        }

        public final String toString() {
            return "CharMatcher.anyOf(\"" + y91.e(this.b) + y91.e(this.c) + "\")";
        }
    }

    public static final class h extends e {
        public final char b;

        public h(char c) {
            this.b = c;
        }

        @Override // defpackage.y91
        public final boolean c(char c) {
            return c != this.b;
        }

        @Override // y91.e, defpackage.y91
        public final y91 d() {
            return new f(this.b);
        }

        public final String toString() {
            return "CharMatcher.isNot('" + y91.e(this.b) + "')";
        }
    }

    public static final class i extends j {
        public static final i c = new i("CharMatcher.javaIsoControl()");

        @Override // defpackage.y91
        public final boolean c(char c2) {
            if (c2 > 31) {
                return c2 >= 127 && c2 <= 159;
            }
            return true;
        }
    }

    public static abstract class j extends e {
        public final String b;

        public j(String str) {
            this.b = str;
        }

        public final String toString() {
            return this.b;
        }
    }

    public static class k extends y91 {
        public final y91 b;

        public k(y91 y91Var) {
            this.b = y91Var;
        }

        @Override // defpackage.bf6
        @Deprecated
        public final boolean apply(Character ch) {
            return c(ch.charValue());
        }

        @Override // defpackage.y91
        public final int b(CharSequence charSequence) {
            return charSequence.length() - this.b.b(charSequence);
        }

        @Override // defpackage.y91
        public final boolean c(char c) {
            return !this.b.c(c);
        }

        @Override // defpackage.y91
        public final y91 d() {
            return this.b;
        }

        public final String toString() {
            return this.b + ".negate()";
        }
    }

    public static class l extends k {
    }

    public static final class m extends j {
        public static final m c = new m("CharMatcher.none()");

        @Override // defpackage.y91
        public final int b(CharSequence charSequence) {
            charSequence.getClass();
            return 0;
        }

        @Override // defpackage.y91
        public final boolean c(char c2) {
            return false;
        }

        @Override // y91.e, defpackage.y91
        public final y91 d() {
            return b.c;
        }
    }

    public static final class n extends j {
        public static final int c = Integer.numberOfLeadingZeros(31);
        public static final n d = new n("CharMatcher.whitespace()");

        @Override // defpackage.y91
        public final boolean c(char c2) {
            return "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001  \f\u2009\u3000\u2004\u3000\u3000\u2028\n \u3000".charAt((48906 * c2) >>> c) == c2;
        }
    }

    public static y91 a(String str) {
        int length = str.length();
        if (length == 0) {
            return m.c;
        }
        if (length != 1) {
            return length != 2 ? new c(str) : new g(str.charAt(0), str.charAt(1));
        }
        return new f(str.charAt(0));
    }

    public static String e(char c2) {
        char[] cArr = new char[6];
        cArr[0] = '\\';
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            cArr[5 - i2] = "0123456789ABCDEF".charAt(c2 & 15);
            c2 = (char) (c2 >> 4);
        }
        return String.copyValueOf(cArr);
    }

    public int b(CharSequence charSequence) {
        int i2 = 0;
        for (int i3 = 0; i3 < charSequence.length(); i3++) {
            if (c(charSequence.charAt(i3))) {
                i2++;
            }
        }
        return i2;
    }

    public abstract boolean c(char c2);

    public y91 d() {
        return new k(this);
    }
}
