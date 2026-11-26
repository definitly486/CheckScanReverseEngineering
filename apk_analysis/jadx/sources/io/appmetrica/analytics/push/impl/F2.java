package io.appmetrica.analytics.push.impl;

import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import io.appmetrica.analytics.push.logger.internal.PublicLogger;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.net.URL;
import java.net.URLConnection;

/* JADX INFO: loaded from: classes5.dex */
public final class F2 implements C0 {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0033: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:17:0x0033 */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v15, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r6v22 */
    /* JADX WARN: Type inference failed for: r6v23 */
    /* JADX WARN: Type inference failed for: r6v24 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    @Override // io.appmetrica.analytics.push.impl.C0
    public final byte[] a(String str) throws Throwable {
        OutOfMemoryError e;
        ?? r6;
        Exception e2;
        ?? r7;
        Closeable closeable;
        ByteArrayOutputStream byteArrayOutputStream;
        ?? r8;
        ?? r9;
        ?? r10;
        Closeable closeable2 = null;
        byteArray = null;
        byte[] byteArray = null;
        closeable2 = null;
        try {
            try {
                str = ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection())).getInputStream();
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int i = str.read(bArr);
                            if (i == -1) {
                                break;
                            }
                            byteArrayOutputStream.write(bArr, 0, i);
                        }
                        byteArray = byteArrayOutputStream.toByteArray();
                        r10 = str;
                    } catch (Exception e3) {
                        e2 = e3;
                        r9 = str;
                        PublicLogger.INSTANCE.error(e2, e2.getMessage(), new Object[0]);
                        r10 = r9;
                    } catch (OutOfMemoryError e4) {
                        e = e4;
                        r8 = str;
                        PublicLogger.INSTANCE.error(e, e.getMessage(), new Object[0]);
                        r10 = r8;
                    }
                } catch (Exception e5) {
                    e2 = e5;
                    r7 = str;
                    byteArrayOutputStream = null;
                    r9 = r7;
                    PublicLogger.INSTANCE.error(e2, e2.getMessage(), new Object[0]);
                    r10 = r9;
                    G2.a((Closeable) r10);
                    G2.a(byteArrayOutputStream);
                    return byteArray;
                } catch (OutOfMemoryError e6) {
                    e = e6;
                    r6 = str;
                    byteArrayOutputStream = null;
                    r8 = r6;
                    PublicLogger.INSTANCE.error(e, e.getMessage(), new Object[0]);
                    r10 = r8;
                    G2.a((Closeable) r10);
                    G2.a(byteArrayOutputStream);
                    return byteArray;
                } catch (Throwable th) {
                    th = th;
                    G2.a((Closeable) str);
                    G2.a(closeable2);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                closeable2 = closeable;
            }
        } catch (Exception e7) {
            e2 = e7;
            r7 = 0;
        } catch (OutOfMemoryError e8) {
            e = e8;
            r6 = 0;
        } catch (Throwable th3) {
            th = th3;
            str = 0;
        }
        G2.a((Closeable) r10);
        G2.a(byteArrayOutputStream);
        return byteArray;
    }
}
