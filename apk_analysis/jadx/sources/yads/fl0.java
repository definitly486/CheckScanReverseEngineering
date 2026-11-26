package yads;

import android.net.Uri;
import android.text.TextUtils;
import com.google.firebase.perf.FirebasePerformance;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;

/* JADX INFO: loaded from: classes6.dex */
public class fl0 extends dq {
    public final int e;
    public final int f;
    public final String g;
    public final ma3 h;
    public final ma3 i;
    public HttpURLConnection j;
    public InputStream k;
    public boolean l;
    public int m;
    public long n;
    public long o;

    public fl0(String str, int i, int i2, ma3 ma3Var) {
        super(true);
        this.g = str;
        this.e = i;
        this.f = i2;
        this.h = ma3Var;
        this.i = new ma3();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x005e  */
    /* JADX WARN: Code duplicated, block: B:75:0x0184  */
    @Override // yads.wc0
    public final long a(bd0 bd0Var) throws ja3 {
        boolean z;
        long j;
        long j2;
        long jMax;
        String str;
        this.o = 0L;
        this.n = 0L;
        h();
        try {
            HttpURLConnection httpURLConnectionA = a(new URL(bd0Var.a.toString()), bd0Var.c, bd0Var.d, bd0Var.f, bd0Var.g, (bd0Var.i & 1) == 1, true, bd0Var.e);
            this.j = httpURLConnectionA;
            this.m = httpURLConnectionA.getResponseCode();
            httpURLConnectionA.getResponseMessage();
            int i = this.m;
            if (i < 200 || i > 299) {
                Map<String, List<String>> headerFields = httpURLConnectionA.getHeaderFields();
                if (this.m == 416) {
                    String headerField = httpURLConnectionA.getHeaderField("Content-Range");
                    Pattern pattern = va3.a;
                    if (TextUtils.isEmpty(headerField)) {
                        z = true;
                        j = -1;
                    } else {
                        Matcher matcher = va3.b.matcher(headerField);
                        if (matcher.matches()) {
                            z = true;
                            String strGroup = matcher.group(1);
                            strGroup.getClass();
                            j = Long.parseLong(strGroup);
                        } else {
                            z = true;
                            j = -1;
                        }
                    }
                    if (bd0Var.f == j) {
                        this.l = z;
                        b(bd0Var);
                        long j3 = bd0Var.g;
                        if (j3 != -1) {
                            return j3;
                        }
                        return 0L;
                    }
                }
                InputStream errorStream = httpURLConnectionA.getErrorStream();
                try {
                    if (errorStream != null) {
                        int i2 = u56.a;
                        byte[] bArr = new byte[4096];
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        while (true) {
                            int i3 = errorStream.read(bArr);
                            if (i3 == -1) {
                                break;
                            }
                            byteArrayOutputStream.write(bArr, 0, i3);
                        }
                        byteArrayOutputStream.toByteArray();
                    } else {
                        int i4 = u56.a;
                    }
                } catch (IOException unused) {
                    int i5 = u56.a;
                }
                i();
                throw new la3(this.m, this.m == 416 ? new xc0(2008) : null, headerFields);
            }
            httpURLConnectionA.getContentType();
            if (this.m == 200) {
                j2 = bd0Var.f;
                if (j2 == 0) {
                    j2 = 0;
                }
            } else {
                j2 = 0;
            }
            boolean zEqualsIgnoreCase = "gzip".equalsIgnoreCase(httpURLConnectionA.getHeaderField("Content-Encoding"));
            long j4 = bd0Var.g;
            if (zEqualsIgnoreCase || j4 != -1) {
                this.n = j4;
            } else {
                String headerField2 = httpURLConnectionA.getHeaderField("Content-Length");
                String headerField3 = httpURLConnectionA.getHeaderField("Content-Range");
                Pattern pattern2 = va3.a;
                if (TextUtils.isEmpty(headerField2)) {
                    jMax = -1;
                } else {
                    try {
                        jMax = Long.parseLong(headerField2);
                    } catch (NumberFormatException unused2) {
                        sv3.b("HttpUtil", "Unexpected Content-Length [" + headerField2 + "]");
                        jMax = -1;
                    }
                }
                if (!TextUtils.isEmpty(headerField3)) {
                    Matcher matcher2 = va3.a.matcher(headerField3);
                    if (matcher2.matches()) {
                        try {
                            String strGroup2 = matcher2.group(2);
                            strGroup2.getClass();
                            long j5 = Long.parseLong(strGroup2);
                            String strGroup3 = matcher2.group(1);
                            strGroup3.getClass();
                            str = "HttpUtil";
                            long j6 = (j5 - Long.parseLong(strGroup3)) + 1;
                            if (jMax < 0) {
                                jMax = j6;
                            } else if (jMax != j6) {
                                try {
                                    sv3.d(str, "Inconsistent headers [" + headerField2 + "] [" + headerField3 + "]");
                                    jMax = Math.max(jMax, j6);
                                } catch (NumberFormatException unused3) {
                                    sv3.b(str, "Unexpected Content-Range [" + headerField3 + "]");
                                }
                            }
                        } catch (NumberFormatException unused4) {
                            str = "HttpUtil";
                        }
                    }
                }
                this.n = jMax != -1 ? jMax - j2 : -1L;
            }
            try {
                this.k = httpURLConnectionA.getInputStream();
                if (zEqualsIgnoreCase) {
                    this.k = new GZIPInputStream(this.k);
                }
                this.l = true;
                b(bd0Var);
                try {
                    a(j2);
                    return this.n;
                } catch (IOException e) {
                    i();
                    if (e instanceof ja3) {
                        throw ((ja3) e);
                    }
                    throw new ja3(2000, 1, e);
                }
            } catch (IOException e2) {
                i();
                throw new ja3(2000, 1, e2);
            }
        } catch (IOException e3) {
            i();
            throw ja3.a(e3, 1);
        }
    }

    @Override // yads.wc0
    public final Map b() {
        HttpURLConnection httpURLConnection = this.j;
        return httpURLConnection == null ? p55.h : new el0(httpURLConnection.getHeaderFields());
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0028 A[Catch: IOException -> 0x0032, TRY_LEAVE, TryCatch #0 {IOException -> 0x0032, blocks: (B:5:0x0004, B:7:0x000d, B:10:0x0017, B:11:0x001d, B:14:0x0028), top: B:19:0x0004 }] */
    @Override // yads.tc0
    public final int c(byte[] bArr, int i, int i2) throws ja3 {
        int i3;
        if (i2 == 0) {
            return 0;
        }
        try {
            long j = this.n;
            if (j != -1) {
                long j2 = j - this.o;
                if (j2 != 0) {
                    i2 = (int) Math.min(i2, j2);
                    InputStream inputStream = this.k;
                    int i4 = u56.a;
                    i3 = inputStream.read(bArr, i, i2);
                    if (i3 != -1) {
                        this.o += (long) i3;
                        c(i3);
                        return i3;
                    }
                }
            } else {
                InputStream inputStream2 = this.k;
                int i5 = u56.a;
                i3 = inputStream2.read(bArr, i, i2);
                if (i3 != -1) {
                    this.o += (long) i3;
                    c(i3);
                    return i3;
                }
            }
            return -1;
        } catch (IOException e) {
            int i6 = u56.a;
            throw ja3.a(e, 2);
        }
    }

    @Override // yads.wc0
    public final void close() {
        try {
            InputStream inputStream = this.k;
            if (inputStream != null) {
                long j = this.n;
                long j2 = -1;
                if (j != -1) {
                    j2 = j - this.o;
                }
                a(this.j, j2);
                try {
                    inputStream.close();
                } catch (IOException e) {
                    int i = u56.a;
                    throw new ja3(2000, 3, e);
                }
            }
            this.k = null;
            i();
            if (this.l) {
                this.l = false;
                g();
            }
        } catch (Throwable th) {
            this.k = null;
            i();
            if (this.l) {
                this.l = false;
                g();
            }
            throw th;
        }
    }

    @Override // yads.wc0
    public final Uri d() {
        HttpURLConnection httpURLConnection = this.j;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    public final void i() {
        HttpURLConnection httpURLConnection = this.j;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                sv3.b("DefaultHttpDataSource", sv3.a("Unexpected error while disconnecting", e));
            }
            this.j = null;
        }
    }

    public final HttpURLConnection a(URL url, int i, byte[] bArr, long j, long j2, boolean z, boolean z2, Map map) throws IOException {
        String string;
        String str;
        Map mapUnmodifiableMap;
        HttpURLConnection httpURLConnectionA = a(url);
        httpURLConnectionA.setConnectTimeout(this.e);
        httpURLConnectionA.setReadTimeout(this.f);
        HashMap map2 = new HashMap();
        ma3 ma3Var = this.h;
        if (ma3Var != null) {
            synchronized (ma3Var) {
                mapUnmodifiableMap = ma3Var.b;
                if (mapUnmodifiableMap == null) {
                    mapUnmodifiableMap = Collections.unmodifiableMap(new HashMap(ma3Var.a));
                    ma3Var.b = mapUnmodifiableMap;
                }
            }
            map2.putAll(mapUnmodifiableMap);
        }
        map2.putAll(this.i.a());
        map2.putAll(map);
        for (Map.Entry entry : map2.entrySet()) {
            httpURLConnectionA.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        Pattern pattern = va3.a;
        if (j == 0 && j2 == -1) {
            string = null;
        } else {
            StringBuilder sbF = defpackage.xp.f(j, "bytes=", "-");
            if (j2 != -1) {
                sbF.append((j + j2) - 1);
            }
            string = sbF.toString();
        }
        if (string != null) {
            httpURLConnectionA.setRequestProperty("Range", string);
        }
        String str2 = this.g;
        if (str2 != null) {
            httpURLConnectionA.setRequestProperty("User-Agent", str2);
        }
        httpURLConnectionA.setRequestProperty("Accept-Encoding", z ? "gzip" : "identity");
        httpURLConnectionA.setInstanceFollowRedirects(z2);
        httpURLConnectionA.setDoOutput(bArr != null);
        int i2 = bd0.k;
        if (i == 1) {
            str = "GET";
        } else if (i == 2) {
            str = "POST";
        } else if (i == 3) {
            str = FirebasePerformance.HttpMethod.HEAD;
        } else {
            defpackage.ud.g();
            return null;
        }
        httpURLConnectionA.setRequestMethod(str);
        if (bArr != null) {
            httpURLConnectionA.setFixedLengthStreamingMode(bArr.length);
            httpURLConnectionA.connect();
            OutputStream outputStream = httpURLConnectionA.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
            return httpURLConnectionA;
        }
        httpURLConnectionA.connect();
        return httpURLConnectionA;
    }

    public HttpURLConnection a(URL url) {
        return (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
    }

    public final void a(long j) throws IOException {
        if (j == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j > 0) {
            int iMin = (int) Math.min(j, 4096L);
            InputStream inputStream = this.k;
            int i = u56.a;
            int i2 = inputStream.read(bArr, 0, iMin);
            if (Thread.currentThread().isInterrupted()) {
                throw new ja3(2000, 1, new InterruptedIOException());
            }
            if (i2 != -1) {
                j -= (long) i2;
                c(i2);
            } else {
                throw new ja3();
            }
        }
    }

    public static void a(HttpURLConnection httpURLConnection, long j) {
        int i;
        if (httpURLConnection == null || (i = u56.a) < 19 || i > 20) {
            return;
        }
        try {
            InputStream inputStream = httpURLConnection.getInputStream();
            if (j == -1) {
                if (inputStream.read() == -1) {
                    return;
                }
            } else if (j <= 2048) {
                return;
            }
            String name = inputStream.getClass().getName();
            if ("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream".equals(name) || "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream".equals(name)) {
                Class<? super Object> superclass = inputStream.getClass().getSuperclass();
                superclass.getClass();
                Method declaredMethod = superclass.getDeclaredMethod("unexpectedEndOfInput", null);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(inputStream, null);
            }
        } catch (Exception unused) {
        }
    }
}
