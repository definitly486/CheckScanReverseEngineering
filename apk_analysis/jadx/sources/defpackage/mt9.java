package defpackage;

import android.net.TrafficStats;
import androidx.media3.common.PlaybackException;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.tapjoy.TJAdUnitConstants;
import java.io.File;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes4.dex */
public final class mt9 {
    public final ArrayList a;

    public mt9(ArrayList arrayList) {
        this.a = arrayList;
    }

    public final void a() {
        if (w4a.b()) {
            y14.u(null, "VideoLoaderUtils: Method load called from main thread");
            return;
        }
        CountDownLatch countDownLatch = new CountDownLatch(this.a.size());
        for (ifa ifaVar : this.a) {
            rn9 rn9Var = (rn9) ifaVar.a;
            final String str = rn9Var.a;
            final a aVar = new a(rn9Var, countDownLatch, ifaVar, str);
            final sr9 sr9Var = sr9.b;
            if (sr9Var == null) {
                synchronized (sr9.class) {
                    try {
                        sr9Var = sr9.b;
                        if (sr9Var == null) {
                            sr9Var = new sr9();
                            sr9.b = sr9Var;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            w4a.a.execute(new Runnable() { // from class: rr9
                @Override // java.lang.Runnable
                public final void run() {
                    String absolutePath;
                    HttpURLConnection httpURLConnection;
                    sr9 sr9Var2 = sr9Var;
                    String str2 = str;
                    if (sr9Var2.b(str2, aVar)) {
                        y14.r(null, "VideoLoader: can't load. Video already loading");
                        return;
                    }
                    vda vdaVar = new vda();
                    uy9 uy9VarB = kt9.b();
                    if (uy9VarB != null) {
                        synchronized (uy9VarB) {
                            uy9VarB.k();
                            File fileC = uy9VarB.c(str2, ".mp4");
                            if (fileC.exists()) {
                                y14.r(null, "DiskCache: Get path - " + fileC.getPath());
                                try {
                                    absolutePath = fileC.getAbsolutePath();
                                } catch (Throwable th2) {
                                    y14.t("DiskCache: exception - " + th2);
                                    absolutePath = null;
                                }
                            }
                            absolutePath = null;
                        }
                        vdaVar.c = absolutePath;
                        if (absolutePath == null) {
                            try {
                                y14.r(null, "HttpVideoRequest: Send video request - " + str2);
                                TrafficStats.setThreadStatsTag(98543098);
                                httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str2).openConnection()));
                                try {
                                    httpURLConnection.setReadTimeout(10000);
                                    httpURLConnection.setConnectTimeout(10000);
                                    httpURLConnection.setInstanceFollowRedirects(true);
                                    httpURLConnection.setRequestProperty("connection", TJAdUnitConstants.String.CLOSE);
                                    y14.m(httpURLConnection);
                                    httpURLConnection.connect();
                                    int responseCode = httpURLConnection.getResponseCode();
                                    vdaVar.b = responseCode;
                                    if (responseCode == 200) {
                                        File fileE = uy9VarB.e(httpURLConnection.getInputStream(), str2);
                                        if (fileE != null) {
                                            vdaVar.c = fileE.getAbsolutePath();
                                        } else {
                                            vdaVar.a = false;
                                            vdaVar.d = "Video request error - can't save video to disk cache";
                                            y14.r(null, "HttpVideoRequest: " + vdaVar.d);
                                        }
                                    } else {
                                        vdaVar.a = false;
                                        vdaVar.d = "Video request error - response code " + responseCode;
                                        y14.r(null, "HttpVideoRequest: " + vdaVar.d);
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    vdaVar.a = false;
                                    vdaVar.d = th.getMessage();
                                    i01.d(new StringBuilder("HttpVideoRequest: Video request error - "), vdaVar.d, null);
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                httpURLConnection = null;
                            }
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                        }
                    } else {
                        y14.r(null, "HttpVideoRequest: Unable to open disk cache and load/save video " + str2);
                        vdaVar.a = false;
                    }
                    sr9Var2.a(str2, (String) vdaVar.c);
                }
            });
        }
        try {
            countDownLatch.await();
            y14.r(null, "VideoLoaderUtils: success media loading");
        } catch (InterruptedException unused) {
            y14.r(null, "VideoLoaderUtils: awaiting media files load failed");
        }
    }

    public class a implements lma.a {
        public final /* synthetic */ rn9 a;
        public final /* synthetic */ CountDownLatch b;
        public final /* synthetic */ ifa c;
        public final /* synthetic */ String d;

        public a(rn9 rn9Var, CountDownLatch countDownLatch, ifa ifaVar, String str) {
            this.a = rn9Var;
            this.b = countDownLatch;
            this.c = ifaVar;
            this.d = str;
        }

        @Override // lma.a
        public final void a() {
            this.a.d = null;
            this.b.countDown();
            this.c.b.d(0, PlaybackException.ERROR_CODE_DECODER_INIT_FAILED, "videoUrl=" + this.d);
        }

        @Override // lma.a
        public final void a(Object obj) {
            this.a.d = (String) obj;
            this.b.countDown();
        }
    }
}
