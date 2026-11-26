package defpackage;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.load.HttpException;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class gz3 implements s82<InputStream> {
    public final cr3 b;
    public final int c;
    public HttpURLConnection d;
    public InputStream e;
    public volatile boolean f;

    public static class a {
    }

    public gz3(cr3 cr3Var, int i) {
        this.b = cr3Var;
        this.c = i;
    }

    public static int d(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode();
        } catch (IOException e) {
            if (!Log.isLoggable("HttpUrlFetcher", 3)) {
                return -1;
            }
            Log.d("HttpUrlFetcher", "Failed to get a response code", e);
            return -1;
        }
    }

    @Override // defpackage.s82
    public final Class<InputStream> a() {
        return InputStream.class;
    }

    @Override // defpackage.s82
    public final void b() {
        InputStream inputStream = this.e;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.d;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.d = null;
    }

    @Override // defpackage.s82
    public final y82 c() {
        return y82.REMOTE;
    }

    @Override // defpackage.s82
    public final void cancel() {
        this.f = true;
    }

    public final InputStream e(URL url, int i, URL url2, Map<String, String> map) throws HttpException {
        if (i >= 5) {
            throw new HttpException("Too many (> 5) redirects!", null, -1);
        }
        if (url2 != null) {
            try {
                if (url.toURI().equals(url2.toURI())) {
                    throw new HttpException("In re-direct loop", null, -1);
                }
            } catch (URISyntaxException unused) {
            }
        }
        int i2 = this.c;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
            for (Map.Entry<String, String> entry : map.entrySet()) {
                httpURLConnection.addRequestProperty(entry.getKey(), entry.getValue());
            }
            httpURLConnection.setConnectTimeout(i2);
            httpURLConnection.setReadTimeout(i2);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setInstanceFollowRedirects(false);
            this.d = httpURLConnection;
            try {
                httpURLConnection.connect();
                this.e = this.d.getInputStream();
                if (this.f) {
                    return null;
                }
                int iD = d(this.d);
                int i3 = iD / 100;
                if (i3 != 2) {
                    if (i3 != 3) {
                        if (iD == -1) {
                            throw new HttpException("Http request failed", null, iD);
                        }
                        try {
                            throw new HttpException(this.d.getResponseMessage(), null, iD);
                        } catch (IOException e) {
                            throw new HttpException("Failed to get a response message", e, iD);
                        }
                    }
                    String headerField = this.d.getHeaderField("Location");
                    if (TextUtils.isEmpty(headerField)) {
                        throw new HttpException("Received empty or null redirect url", null, iD);
                    }
                    try {
                        URL url3 = new URL(url, headerField);
                        b();
                        return e(url3, i + 1, url, map);
                    } catch (MalformedURLException e2) {
                        throw new HttpException(bj.c("Bad redirect url: ", headerField), e2, iD);
                    }
                }
                HttpURLConnection httpURLConnection2 = this.d;
                try {
                    if (TextUtils.isEmpty(httpURLConnection2.getContentEncoding())) {
                        yx1 yx1Var = new yx1(httpURLConnection2.getInputStream(), httpURLConnection2.getContentLength());
                        this.e = yx1Var;
                        return yx1Var;
                    }
                    if (Log.isLoggable("HttpUrlFetcher", 3)) {
                        Log.d("HttpUrlFetcher", "Got non empty content encoding: " + httpURLConnection2.getContentEncoding());
                    }
                    InputStream inputStream = httpURLConnection2.getInputStream();
                    this.e = inputStream;
                    return inputStream;
                } catch (IOException e3) {
                    throw new HttpException("Failed to obtain InputStream", e3, d(httpURLConnection2));
                }
            } catch (IOException e4) {
                throw new HttpException("Failed to connect or obtain data", e4, d(this.d));
            }
        } catch (IOException e5) {
            throw new HttpException("URL.openConnection threw", e5, 0);
        }
    }

    @Override // defpackage.s82
    public final void f(jg6 jg6Var, s82.a<? super InputStream> aVar) {
        cr3 cr3Var = this.b;
        int i = cv4.b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            aVar.d(e(cr3Var.d(), 0, null, cr3Var.b.a()));
        } catch (IOException e) {
            if (Log.isLoggable("HttpUrlFetcher", 3)) {
                Log.d("HttpUrlFetcher", "Failed to load data for url", e);
            }
            aVar.e(e);
        } finally {
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                Log.v("HttpUrlFetcher", "Finished http url fetcher fetch in " + cv4.a(jElapsedRealtimeNanos));
            }
        }
    }
}
