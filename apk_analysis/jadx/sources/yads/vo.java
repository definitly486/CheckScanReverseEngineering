package yads;

import android.util.Base64;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes6.dex */
public final class vo {
    public static String a(String str) {
        Charset charset = defpackage.ha1.b;
        byte[] bytes = str.getBytes(charset);
        bytes.getClass();
        try {
            return new String(Base64.decode(bytes, 0), charset);
        } catch (Exception unused) {
            return new String(bytes, defpackage.ha1.b);
        }
    }

    public static String b(String str) {
        Charset charset = defpackage.ha1.b;
        byte[] bytes = str.getBytes(charset);
        bytes.getClass();
        try {
            return new String(Base64.decode(bytes, 0), charset);
        } catch (Exception unused) {
            return null;
        }
    }
}
