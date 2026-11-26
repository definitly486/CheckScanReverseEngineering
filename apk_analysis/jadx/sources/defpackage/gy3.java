package defpackage;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public abstract class gy3 extends t.b {
    public static final la5.f v = n94.a(":status", new a());
    public h88 r;
    public la5 s;
    public Charset t;
    public boolean u;

    public class a implements n94.a<Integer> {
        @Override // la5.g
        public final byte[] a(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // la5.g
        public final Object b(byte[] bArr) {
            if (bArr.length < 3) {
                throw new NumberFormatException("Malformed status code ".concat(new String(bArr, n94.a)));
            }
            return Integer.valueOf((bArr[2] - 48) + ((bArr[1] - 48) * 10) + ((bArr[0] - 48) * 100));
        }
    }

    public static Charset k(la5 la5Var) {
        String str = (String) la5Var.c(vs3.i);
        if (str != null) {
            String[] strArrSplit = str.split("charset=", 2);
            try {
                return Charset.forName(strArrSplit[strArrSplit.length - 1].trim());
            } catch (Exception unused) {
            }
        }
        return StandardCharsets.UTF_8;
    }

    public static h88 l(la5 la5Var) {
        char cCharAt;
        Integer num = (Integer) la5Var.c(v);
        if (num == null) {
            return h88.l.h("Missing HTTP status code");
        }
        String str = (String) la5Var.c(vs3.i);
        if (str != null && 16 <= str.length()) {
            String lowerCase = str.toLowerCase(Locale.US);
            if (lowerCase.startsWith("application/grpc") && (lowerCase.length() == 16 || (cCharAt = lowerCase.charAt(16)) == '+' || cCharAt == ';')) {
                return null;
            }
        }
        h88 h88VarF = vs3.f(num.intValue());
        return str == null ? h88VarF.b("missing content-type in response headers") : h88VarF.b("invalid content-type: ".concat(str));
    }
}
