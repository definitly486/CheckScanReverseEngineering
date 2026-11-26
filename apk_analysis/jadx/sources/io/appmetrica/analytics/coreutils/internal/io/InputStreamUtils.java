package io.appmetrica.analytics.coreutils.internal.io;

import defpackage.j59;
import defpackage.ll3;
import defpackage.m96;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public final class InputStreamUtils {
    public static final InputStreamUtils INSTANCE = new InputStreamUtils();

    private InputStreamUtils() {
    }

    public final byte[] readSafelyApprox(int i, ll3<? extends InputStream> ll3Var) {
        try {
            InputStream inputStreamInvoke = ll3Var.invoke();
            if (inputStreamInvoke != null) {
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        try {
                            byte[] bArr = new byte[8192];
                            int i2 = 0;
                            while (true) {
                                int i3 = inputStreamInvoke.read(bArr);
                                if (-1 == i3 || i2 > i) {
                                    break;
                                    break;
                                }
                                if (i3 > 0) {
                                    byteArrayOutputStream.write(bArr, 0, i3);
                                    i2 += i3;
                                }
                            }
                            byte[] byteArray = byteArrayOutputStream.toByteArray();
                            byteArrayOutputStream.close();
                            inputStreamInvoke.close();
                            return byteArray;
                        } catch (Throwable unused) {
                            j59 j59Var = j59.a;
                            byteArrayOutputStream.close();
                            inputStreamInvoke.close();
                            return new byte[0];
                        }
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            m96.c(byteArrayOutputStream, th);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        m96.c(inputStreamInvoke, th3);
                        throw th4;
                    }
                }
            }
        } catch (Throwable unused2) {
        }
        return new byte[0];
    }
}
