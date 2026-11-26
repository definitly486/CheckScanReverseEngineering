package yads;

import android.util.Base64;
import defpackage.k57;
import java.io.ByteArrayInputStream;
import java.util.zip.GZIPInputStream;

/* JADX INFO: loaded from: classes6.dex */
public final class zo {
    public static final zo a = new zo();

    public static final byte[] a(String str) {
        Object aVar;
        try {
            if (str == null) {
                str = "";
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(Base64.decode(str, 0));
            try {
                GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
                try {
                    aVar = defpackage.ex0.d(gZIPInputStream);
                    gZIPInputStream.close();
                    byteArrayInputStream.close();
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        defpackage.m96.c(gZIPInputStream, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    defpackage.m96.c(byteArrayInputStream, th3);
                    throw th4;
                }
            }
        } catch (Throwable th5) {
            aVar = new k57.a(th5);
        }
        if (k57.a(aVar) != null) {
            aVar = new byte[0];
        }
        return (byte[]) aVar;
    }

    public static final String b(String str) {
        Object aVar;
        try {
            aVar = new String(a(str), defpackage.ha1.b);
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (k57.a(aVar) != null) {
            aVar = "";
        }
        return (String) aVar;
    }
}
