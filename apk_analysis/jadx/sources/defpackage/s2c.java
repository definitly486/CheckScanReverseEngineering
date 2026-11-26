package defpackage;

import androidx.media3.exoplayer.ExoPlayer;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzgs;
import com.google.android.gms.measurement.internal.zzgu;
import com.google.android.gms.measurement.internal.zzhz;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzlo;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes4.dex */
public final class s2c implements Runnable {
    public final URL b;
    public final byte[] c;
    public final m2c d;
    public final String e;
    public final Map f;
    public final /* synthetic */ zzlo g;

    public s2c(zzlo zzloVar, String str, URL url, byte[] bArr, HashMap map, m2c m2cVar) {
        Objects.requireNonNull(zzloVar);
        this.g = zzloVar;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(url);
        Preconditions.checkNotNull(m2cVar);
        this.b = url;
        this.c = bArr;
        this.d = m2cVar;
        this.e = str;
        this.f = map;
    }

    /* JADX WARN: Code duplicated, block: B:105:0x017b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:112:0x00f1 A[EDGE_INSN: B:112:0x00f1->B:42:0x00f1 BREAK  A[LOOP:1: B:37:0x00e5->B:39:0x00eb], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x00eb A[Catch: all -> 0x00ef, LOOP:1: B:37:0x00e5->B:39:0x00eb, LOOP_END, TryCatch #6 {all -> 0x00ef, blocks: (B:36:0x00e3, B:37:0x00e5, B:39:0x00eb, B:42:0x00f1), top: B:98:0x00e3 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x015d  */
    /* JADX WARN: Code duplicated, block: B:91:0x0191  */
    /* JADX WARN: Code duplicated, block: B:96:0x0147 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v3, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r11v4, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v9 */
    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        HttpURLConnection httpURLConnection;
        OutputStream outputStream;
        IOException iOException;
        OutputStream outputStream2;
        HttpURLConnection httpURLConnection2;
        final ?? r11;
        Throwable th;
        OutputStream outputStream3;
        final ?? r12;
        HttpURLConnection httpURLConnection3;
        zzhz zzhzVarZzaX;
        Runnable runnable;
        InputStream inputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        byte[] bArr;
        int i;
        String str = this.e;
        zzlo zzloVar = this.g;
        zzloVar.zzaY();
        zzic zzicVar = zzloVar.a;
        final int responseCode = 0;
        final Exception exc = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        try {
            try {
                try {
                    URLConnection uRLConnectionOpenConnection = this.b.openConnection();
                    if (!(uRLConnectionOpenConnection instanceof HttpURLConnection)) {
                        throw new IOException("Failed to obtain HTTP connection");
                    }
                    HttpURLConnection httpURLConnection4 = (HttpURLConnection) uRLConnectionOpenConnection;
                    httpURLConnection4.setDefaultUseCaches(false);
                    zzicVar.zzc();
                    httpURLConnection4.setConnectTimeout(ExoPlayer.DEFAULT_STUCK_PLAYING_NOT_ENDING_TIMEOUT_MS);
                    zzicVar.zzc();
                    httpURLConnection4.setReadTimeout(61000);
                    httpURLConnection4.setInstanceFollowRedirects(false);
                    httpURLConnection4.setDoInput(true);
                    try {
                        try {
                            Map map = this.f;
                            if (map != null) {
                                for (Map.Entry entry : map.entrySet()) {
                                    httpURLConnection4.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                                }
                            }
                            byte[] bArr2 = this.c;
                            if (bArr2 != null) {
                                try {
                                    zzicVar.zzaV();
                                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                                    GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream2);
                                    gZIPOutputStream.write(bArr2);
                                    gZIPOutputStream.close();
                                    byteArrayOutputStream2.close();
                                    byte[] byteArray = byteArrayOutputStream2.toByteArray();
                                    zzgs zzgsVarZzk = zzicVar.zzaW().zzk();
                                    int length = byteArray.length;
                                    zzgsVarZzk.zzb("Uploading data. size", Integer.valueOf(length));
                                    httpURLConnection4.setDoOutput(true);
                                    httpURLConnection4.addRequestProperty("Content-Encoding", "gzip");
                                    httpURLConnection4.setFixedLengthStreamingMode(length);
                                    httpURLConnection4.connect();
                                    OutputStream outputStream4 = httpURLConnection4.getOutputStream();
                                    try {
                                        outputStream4.write(byteArray);
                                        outputStream4.close();
                                        responseCode = httpURLConnection4.getResponseCode();
                                        try {
                                            try {
                                                final Map<String, List<String>> headerFields = httpURLConnection4.getHeaderFields();
                                                try {
                                                    byteArrayOutputStream = new ByteArrayOutputStream();
                                                    inputStream = httpURLConnection4.getInputStream();
                                                    try {
                                                        bArr = new byte[1024];
                                                        while (true) {
                                                            i = inputStream.read(bArr);
                                                            if (i > 0) {
                                                                break;
                                                            } else {
                                                                byteArrayOutputStream.write(bArr, 0, i);
                                                            }
                                                        }
                                                        final byte[] byteArray2 = byteArrayOutputStream.toByteArray();
                                                        inputStream.close();
                                                        httpURLConnection4.disconnect();
                                                        zzhzVarZzaX = zzloVar.a.zzaX();
                                                        runnable = new Runnable() { // from class: p2c
                                                            @Override // java.lang.Runnable
                                                            public final /* synthetic */ void run() {
                                                                s2c s2cVar = this.b;
                                                                s2cVar.d.a(s2cVar.e, responseCode, exc, byteArray2, headerFields);
                                                            }
                                                        };
                                                    } catch (Throwable th2) {
                                                        th = th2;
                                                        if (inputStream != null) {
                                                            inputStream.close();
                                                        }
                                                        throw th;
                                                    }
                                                } catch (Throwable th3) {
                                                    th = th3;
                                                    inputStream = null;
                                                }
                                            } catch (IOException e) {
                                                this = this;
                                                iOException = e;
                                                outputStream2 = null;
                                                httpURLConnection2 = httpURLConnection4;
                                                r11 = length;
                                                if (outputStream2 != null) {
                                                    try {
                                                        outputStream2.close();
                                                    } catch (IOException e2) {
                                                        zzicVar.zzaW().zzb().zzc("Error closing HTTP compressed POST connection output stream. appId", zzgu.d(str), e2);
                                                    }
                                                }
                                                if (httpURLConnection2 != null) {
                                                    httpURLConnection2.disconnect();
                                                }
                                                zzhzVarZzaX = zzloVar.a.zzaX();
                                                final IOException iOException2 = iOException;
                                                final boolean z4 = z3 ? 1 : 0;
                                                runnable = new Runnable() { // from class: p2c
                                                    @Override // java.lang.Runnable
                                                    public final /* synthetic */ void run() {
                                                        s2c s2cVar = this.b;
                                                        s2cVar.d.a(s2cVar.e, responseCode, iOException2, z4, r11);
                                                    }
                                                };
                                            } catch (Throwable th4) {
                                                th = th4;
                                                outputStream3 = null;
                                                httpURLConnection3 = httpURLConnection4;
                                                r12 = length;
                                                if (outputStream3 != null) {
                                                    try {
                                                        outputStream3.close();
                                                    } catch (IOException e3) {
                                                        zzicVar.zzaW().zzb().zzc("Error closing HTTP compressed POST connection output stream. appId", zzgu.d(str), e3);
                                                    }
                                                }
                                                if (httpURLConnection3 != null) {
                                                    httpURLConnection3.disconnect();
                                                }
                                                zzhz zzhzVarZzaX2 = zzloVar.a.zzaX();
                                                final boolean z5 = z2 ? 1 : 0;
                                                final boolean z6 = z ? 1 : 0;
                                                zzhzVarZzaX2.zzj(new Runnable() { // from class: p2c
                                                    @Override // java.lang.Runnable
                                                    public final /* synthetic */ void run() {
                                                        s2c s2cVar = this.b;
                                                        s2cVar.d.a(s2cVar.e, responseCode, z5, z6, r12);
                                                    }
                                                });
                                                throw th;
                                            }
                                        } catch (IOException e4) {
                                            iOException = e4;
                                            outputStream2 = null;
                                            r11 = 0;
                                            httpURLConnection2 = httpURLConnection4;
                                            if (outputStream2 != null) {
                                                outputStream2.close();
                                            }
                                            if (httpURLConnection2 != null) {
                                                httpURLConnection2.disconnect();
                                            }
                                            zzhzVarZzaX = zzloVar.a.zzaX();
                                            final Exception iOException3 = iOException;
                                            final byte[] z7 = z3 ? 1 : 0;
                                            runnable = new Runnable() { // from class: p2c
                                                @Override // java.lang.Runnable
                                                public final /* synthetic */ void run() {
                                                    s2c s2cVar = this.b;
                                                    s2cVar.d.a(s2cVar.e, responseCode, iOException3, z7, r11);
                                                }
                                            };
                                        } catch (Throwable th5) {
                                            th = th5;
                                            outputStream3 = null;
                                            r12 = 0;
                                            httpURLConnection3 = httpURLConnection4;
                                            if (outputStream3 != null) {
                                                outputStream3.close();
                                            }
                                            if (httpURLConnection3 != null) {
                                                httpURLConnection3.disconnect();
                                            }
                                            zzhz zzhzVarZzaX3 = zzloVar.a.zzaX();
                                            final Exception z8 = z2 ? 1 : 0;
                                            final byte[] z9 = z ? 1 : 0;
                                            zzhzVarZzaX3.zzj(new Runnable() { // from class: p2c
                                                @Override // java.lang.Runnable
                                                public final /* synthetic */ void run() {
                                                    s2c s2cVar = this.b;
                                                    s2cVar.d.a(s2cVar.e, responseCode, z8, z9, r12);
                                                }
                                            });
                                            throw th;
                                        }
                                    } catch (IOException e5) {
                                        this = this;
                                        iOException = e5;
                                        outputStream2 = outputStream4;
                                        r11 = 0;
                                        responseCode = 0;
                                        httpURLConnection2 = httpURLConnection4;
                                        if (outputStream2 != null) {
                                            outputStream2.close();
                                        }
                                        if (httpURLConnection2 != null) {
                                            httpURLConnection2.disconnect();
                                        }
                                        zzhzVarZzaX = zzloVar.a.zzaX();
                                        final Exception iOException4 = iOException;
                                        final byte[] z10 = z3 ? 1 : 0;
                                        runnable = new Runnable() { // from class: p2c
                                            @Override // java.lang.Runnable
                                            public final /* synthetic */ void run() {
                                                s2c s2cVar = this.b;
                                                s2cVar.d.a(s2cVar.e, responseCode, iOException4, z10, r11);
                                            }
                                        };
                                        zzhzVarZzaX.zzj(runnable);
                                    } catch (Throwable th6) {
                                        th = th6;
                                        outputStream3 = outputStream4;
                                        responseCode = 0;
                                        r12 = 0;
                                        httpURLConnection3 = httpURLConnection4;
                                        if (outputStream3 != null) {
                                            outputStream3.close();
                                        }
                                        if (httpURLConnection3 != null) {
                                            httpURLConnection3.disconnect();
                                        }
                                        zzhz zzhzVarZzaX4 = zzloVar.a.zzaX();
                                        final Exception z11 = z2 ? 1 : 0;
                                        final byte[] z12 = z ? 1 : 0;
                                        zzhzVarZzaX4.zzj(new Runnable() { // from class: p2c
                                            @Override // java.lang.Runnable
                                            public final /* synthetic */ void run() {
                                                s2c s2cVar = this.b;
                                                s2cVar.d.a(s2cVar.e, responseCode, z11, z12, r12);
                                            }
                                        });
                                        throw th;
                                    }
                                } catch (IOException e6) {
                                    zzicVar.zzaW().zzb().zzb("Failed to gzip post request content", e6);
                                    throw e6;
                                }
                            } else {
                                responseCode = httpURLConnection4.getResponseCode();
                                final Map headerFields2 = httpURLConnection4.getHeaderFields();
                                byteArrayOutputStream = new ByteArrayOutputStream();
                                inputStream = httpURLConnection4.getInputStream();
                                bArr = new byte[1024];
                                while (true) {
                                    i = inputStream.read(bArr);
                                    if (i > 0) {
                                        break;
                                        break;
                                    }
                                    byteArrayOutputStream.write(bArr, 0, i);
                                }
                                final byte[] byteArray3 = byteArrayOutputStream.toByteArray();
                                inputStream.close();
                                httpURLConnection4.disconnect();
                                zzhzVarZzaX = zzloVar.a.zzaX();
                                runnable = new Runnable() { // from class: p2c
                                    @Override // java.lang.Runnable
                                    public final /* synthetic */ void run() {
                                        s2c s2cVar = this.b;
                                        s2cVar.d.a(s2cVar.e, responseCode, exc, byteArray3, headerFields2);
                                    }
                                };
                            }
                        } catch (IOException e7) {
                            iOException = e7;
                            responseCode = 0;
                        }
                        zzhzVarZzaX.zzj(runnable);
                    } catch (Throwable th7) {
                        th = th7;
                        outputStream = null;
                        httpURLConnection = httpURLConnection4;
                        th = th;
                        outputStream3 = outputStream;
                        httpURLConnection3 = httpURLConnection;
                        r12 = outputStream;
                        if (outputStream3 != null) {
                            outputStream3.close();
                        }
                        if (httpURLConnection3 != null) {
                            httpURLConnection3.disconnect();
                        }
                        zzhz zzhzVarZzaX5 = zzloVar.a.zzaX();
                        final Exception z13 = z2 ? 1 : 0;
                        final byte[] z14 = z ? 1 : 0;
                        zzhzVarZzaX5.zzj(new Runnable() { // from class: p2c
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                s2c s2cVar = this.b;
                                s2cVar.d.a(s2cVar.e, responseCode, z13, z14, r12);
                            }
                        });
                        throw th;
                    }
                } catch (IOException e8) {
                    e = e8;
                    iOException = e;
                    responseCode = 0;
                    outputStream2 = null;
                    httpURLConnection2 = null;
                    r11 = 0;
                    if (outputStream2 != null) {
                        outputStream2.close();
                    }
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    zzhzVarZzaX = zzloVar.a.zzaX();
                    final Exception iOException5 = iOException;
                    final byte[] z15 = z3 ? 1 : 0;
                    runnable = new Runnable() { // from class: p2c
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            s2c s2cVar = this.b;
                            s2cVar.d.a(s2cVar.e, responseCode, iOException5, z15, r11);
                        }
                    };
                    zzhzVarZzaX.zzj(runnable);
                }
            } catch (IOException e9) {
                e = e9;
            }
        } catch (Throwable th8) {
            th = th8;
            httpURLConnection = null;
            outputStream = null;
        }
    }
}
