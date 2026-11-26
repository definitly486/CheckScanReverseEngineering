package com.my.tracker.obfuscated;

import android.text.TextUtils;
import com.my.tracker.MyTrackerConfig;
import defpackage.b37;
import defpackage.b57;
import defpackage.f37;
import defpackage.gb9;
import defpackage.j95;
import defpackage.jy6;
import defpackage.z47;
import java.io.ByteArrayOutputStream;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes4.dex */
public final class o1 extends w0 {
    static final j95 d;
    final w0.a a;
    final MyTrackerConfig.OkHttpClientProvider b;
    final boolean c;

    static {
        j95 j95VarA;
        Pattern pattern = j95.e;
        try {
            j95VarA = j95.a.a("application/octet-stream");
        } catch (IllegalArgumentException unused) {
            j95VarA = null;
        }
        d = j95VarA;
    }

    public o1(w0.a aVar, MyTrackerConfig.OkHttpClientProvider okHttpClientProvider, boolean z) {
        this.a = aVar;
        this.b = okHttpClientProvider;
        this.c = z;
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00fc A[Catch: all -> 0x0087, TRY_ENTER, TryCatch #3 {all -> 0x0087, blocks: (B:3:0x000f, B:21:0x0083, B:24:0x008b, B:55:0x00fc, B:57:0x0101, B:58:0x0104), top: B:73:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:57:0x0101 A[Catch: all -> 0x0087, TryCatch #3 {all -> 0x0087, blocks: (B:3:0x000f, B:21:0x0083, B:24:0x008b, B:55:0x00fc, B:57:0x0101, B:58:0x0104), top: B:73:0x000f }] */
    @Override // com.my.tracker.obfuscated.w0
    public w0.b a(String str) {
        z47 z47Var;
        ByteArrayOutputStream byteArrayOutputStream;
        GZIPOutputStream gZIPOutputStream;
        GZIPOutputStream gZIPOutputStream2;
        w0.b bVarD = w0.b.d();
        try {
            b3.a("OkHttpPostRequest: send request to " + str);
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    if (this.c) {
                        b3.a("OkHttpPostRequest: populating post request body using gzip");
                        gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                        try {
                            this.a.a(gZIPOutputStream);
                            gZIPOutputStream.finish();
                        } catch (Throwable th) {
                            th = th;
                            if (gZIPOutputStream != null) {
                                gZIPOutputStream.close();
                            }
                            if (byteArrayOutputStream != null) {
                                byteArrayOutputStream.close();
                            }
                            throw th;
                        }
                    } else {
                        b3.a("OkHttpPostRequest: populating post request body without using gzip");
                        this.a.a(byteArrayOutputStream);
                        byteArrayOutputStream.flush();
                        gZIPOutputStream = null;
                    }
                    try {
                        b37.a aVar = new b37.a();
                        aVar.e(str);
                        aVar.b("Content-Encoding", "gzip");
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        j95 j95Var = d;
                        try {
                            byteArray.getClass();
                            int length = byteArray.length;
                            gZIPOutputStream2 = gZIPOutputStream;
                            try {
                                gb9.c(byteArray.length, 0L, length);
                                aVar.c("POST", new f37(j95Var, length, byteArray));
                                b37 b37VarA = aVar.a();
                                if (gZIPOutputStream2 != null) {
                                    gZIPOutputStream2.close();
                                }
                                byteArrayOutputStream.close();
                                OkHttpClient okHttpClient = this.b.getOkHttpClient();
                                okHttpClient.getClass();
                                z47 z47VarExecute = new jy6(okHttpClient, b37VarA).execute();
                                try {
                                    int i = z47VarExecute.e;
                                    if (i == 200 || i == 204) {
                                        b3.a("OkHttpPostRequest: response successfully received");
                                        bVarD.a = true;
                                    } else {
                                        b3.a("OkHttpPostRequest error: response code " + i);
                                        bVarD.a = false;
                                    }
                                    if (i == 200) {
                                        b3.a("OkHttpPostRequest: processing server response");
                                        b57 b57Var = z47VarExecute.h;
                                        String strV = b57Var != null ? b57Var.v() : null;
                                        if (TextUtils.isEmpty(strV)) {
                                            b3.a("OkHttpPostRequest: response data is empty");
                                        } else {
                                            bVarD.b = strV;
                                        }
                                    }
                                    z47VarExecute.close();
                                    return bVarD;
                                } catch (Throwable th2) {
                                    th = th2;
                                    z47Var = z47VarExecute;
                                    try {
                                        b3.a("OkHttpPostRequest error: error while sending data", th);
                                        bVarD.a = false;
                                        bVarD.c = "OkHttpPostRequest error: error while sending data";
                                        return bVarD;
                                    } finally {
                                        if (z47Var != null) {
                                            z47Var.close();
                                        }
                                    }
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                gZIPOutputStream = gZIPOutputStream2;
                                if (gZIPOutputStream != null) {
                                    gZIPOutputStream.close();
                                }
                                if (byteArrayOutputStream != null) {
                                    byteArrayOutputStream.close();
                                }
                                throw th;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            gZIPOutputStream2 = gZIPOutputStream;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    gZIPOutputStream = null;
                    if (gZIPOutputStream != null) {
                        gZIPOutputStream.close();
                    }
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th7) {
                th = th7;
                byteArrayOutputStream = null;
            }
        } catch (Throwable th8) {
            th = th8;
            z47Var = null;
        }
    }
}
