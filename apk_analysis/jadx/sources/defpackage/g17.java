package defpackage;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class g17 implements Serializable {
    public final Pattern b;

    public static final class a implements Serializable {
        public final String b;
        public final int c;

        public a(String str, int i) {
            this.b = str;
            this.c = i;
        }

        private final Object readResolve() {
            Pattern patternCompile = Pattern.compile(this.b, this.c);
            patternCompile.getClass();
            return new g17(patternCompile);
        }
    }

    public g17(String str, k17 k17Var) {
        str.getClass();
        k17Var.getClass();
        int iA = k17Var.a();
        Pattern patternCompile = Pattern.compile(str, (iA & 2) != 0 ? iA | 64 : iA);
        patternCompile.getClass();
        this.b = patternCompile;
    }

    public static s15 a(g17 g17Var, String str) {
        g17Var.getClass();
        str.getClass();
        Matcher matcher = g17Var.b.matcher(str);
        matcher.getClass();
        return eg9.b(matcher, 0, str);
    }

    public static ep3 b(g17 g17Var, CharSequence charSequence) {
        g17Var.getClass();
        int i = 0;
        if (charSequence.length() < 0) {
            bj.d(charSequence.length(), n7.c(0, "Start index out of bounds: ", ", input length: "));
            return null;
        }
        f17 f17Var = new f17(i, g17Var, charSequence);
        h17 h17Var = h17.c;
        h17Var.getClass();
        return new ep3(f17Var, h17Var);
    }

    private final void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    private final Object writeReplace() {
        Pattern pattern = this.b;
        String strPattern = pattern.pattern();
        strPattern.getClass();
        return new a(strPattern, pattern.flags());
    }

    public final s15 d(String str) {
        str.getClass();
        Matcher matcher = this.b.matcher(str);
        matcher.getClass();
        if (matcher.matches()) {
            return new s15(matcher, str);
        }
        return null;
    }

    public final boolean e(CharSequence charSequence) {
        charSequence.getClass();
        return this.b.matcher(charSequence).matches();
    }

    public final String f(String str, nl3 nl3Var) {
        str.getClass();
        nl3Var.getClass();
        Matcher matcher = this.b.matcher(str);
        matcher.getClass();
        int i = 0;
        s15 s15VarB = eg9.b(matcher, 0, str);
        if (s15VarB == null) {
            return str.toString();
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        do {
            sb.append((CharSequence) str, i, s15VarB.getRange().b);
            sb.append((CharSequence) nl3Var.invoke(s15VarB));
            i = s15VarB.getRange().c + 1;
            s15VarB = s15VarB.next();
            if (i >= length) {
                break;
            }
        } while (s15VarB != null);
        if (i < length) {
            sb.append((CharSequence) str, i, length);
        }
        return sb.toString();
    }

    public final String g(String str, CharSequence charSequence) {
        charSequence.getClass();
        String strReplaceAll = this.b.matcher(charSequence).replaceAll(str);
        strReplaceAll.getClass();
        return strReplaceAll;
    }

    public final String toString() {
        String string = this.b.toString();
        string.getClass();
        return string;
    }

    public g17(String str) {
        str.getClass();
        Pattern patternCompile = Pattern.compile(str);
        patternCompile.getClass();
        this.b = patternCompile;
    }

    public g17(Pattern pattern) {
        this.b = pattern;
    }
}
