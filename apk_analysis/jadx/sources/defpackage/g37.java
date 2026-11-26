package defpackage;

import java.nio.charset.Charset;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public abstract class g37 {

    public static final class a {
        public static f37 a(String str, j95 j95Var) {
            str.getClass();
            Charset charset = ha1.b;
            Pattern pattern = j95.e;
            Charset charsetA = j95Var.a(null);
            if (charsetA == null) {
                try {
                    j95Var = j95.a.a(j95Var + "; charset=utf-8");
                } catch (IllegalArgumentException unused) {
                    j95Var = null;
                }
            } else {
                charset = charsetA;
            }
            byte[] bytes = str.getBytes(charset);
            bytes.getClass();
            int length = bytes.length;
            gb9.c(bytes.length, 0L, length);
            return new f37(j95Var, length, bytes);
        }
    }

    public long a() {
        return -1L;
    }

    public abstract j95 b();

    public abstract void c(vu0 vu0Var);
}
