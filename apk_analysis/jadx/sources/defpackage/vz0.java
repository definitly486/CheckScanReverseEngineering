package defpackage;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.TrafficStats;
import androidx.camera.camera2.impl.CameraCallbackMap;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.core.impl.CameraCaptureCallback;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.tapjoy.TJAdUnitConstants;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class vz0 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ vz0(Object obj, Object obj2, Object obj3, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        vda vdaVar;
        vda vdaVar2;
        HttpURLConnection httpURLConnection;
        Bitmap bitmapDecodeFile;
        switch (this.b) {
            case 0:
                CameraCallbackMap.onStarted_uGKBvU4$lambda$1((CameraCaptureCallback) this.c, (CameraCallbackMap) this.d, (RequestMetadata) this.e);
                return;
            default:
                mz9 mz9Var = (mz9) this.c;
                String str = (String) this.d;
                if (mz9Var.b(str, (s0a.a) this.e)) {
                    y14.r(null, "ImageLoader: can't load. Image already loading");
                    return;
                }
                o7a o7aVar = new o7a();
                uy9 uy9VarB = kt9.b();
                try {
                    try {
                        if (uy9VarB != null) {
                            vda vdaVar3 = o7aVar.o;
                            synchronized (uy9VarB) {
                                try {
                                    uy9VarB.k();
                                    File fileC = uy9VarB.c(str, ".img");
                                    if (fileC.exists()) {
                                        y14.r(null, "DiskCache: Get image - " + fileC.getPath());
                                        try {
                                            if (fileC.exists()) {
                                                bitmapDecodeFile = BitmapFactory.decodeFile(fileC.getAbsolutePath());
                                            } else {
                                                y14.r(null, "DiskCache: File disappeared before reading: " + fileC.getPath());
                                            }
                                        } catch (OutOfMemoryError e) {
                                            System.gc();
                                            y14.t("DiskCache: OutOfMemoryError, trying once again");
                                            try {
                                                BitmapFactory.Options options = new BitmapFactory.Options();
                                                options.inSampleSize = 2;
                                                bitmapDecodeFile = BitmapFactory.decodeFile(fileC.getAbsolutePath(), options);
                                            } catch (OutOfMemoryError unused) {
                                                y14.t("DiskCache: OutOfMemoryError, called twice - " + e);
                                                bitmapDecodeFile = null;
                                            }
                                            break;
                                        } catch (Throwable th) {
                                            y14.t("DiskCache: exception - " + th);
                                        }
                                    }
                                    bitmapDecodeFile = null;
                                } catch (Throwable th2) {
                                    throw th2;
                                }
                            }
                            vdaVar3.c = bitmapDecodeFile;
                            vdaVar = o7aVar.o;
                            if (vdaVar.c == null) {
                            }
                            mz9Var.a(str, (Bitmap) vdaVar.c);
                            return;
                        }
                        y14.r(null, "HttpImageRequest: Unable to open disk cache and get image - " + str);
                        httpURLConnection.setReadTimeout(10000);
                        httpURLConnection.setConnectTimeout(10000);
                        httpURLConnection.setInstanceFollowRedirects(true);
                        httpURLConnection.setRequestProperty("connection", TJAdUnitConstants.String.CLOSE);
                        y14.m(httpURLConnection);
                        httpURLConnection.connect();
                        int responseCode = httpURLConnection.getResponseCode();
                        vdaVar2.b = responseCode;
                        if (responseCode == 200) {
                            InputStream inputStream = httpURLConnection.getInputStream();
                            if (uy9VarB != null) {
                                o7aVar.U(uy9VarB, inputStream, str);
                            } else {
                                BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 8192);
                                vdaVar2.c = BitmapFactory.decodeStream(bufferedInputStream);
                                try {
                                    bufferedInputStream.close();
                                } catch (Throwable th3) {
                                    y14.r(null, "HttpImageRequest: Load in memory error - " + th3.getMessage());
                                }
                            }
                        } else {
                            vdaVar2.a = false;
                            vdaVar2.d = "Image request error - response code " + responseCode;
                            y14.r(null, "HttpImageRequest: " + vdaVar2.d);
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        vdaVar2.a = false;
                        vdaVar2.d = th.getMessage();
                        i01.d(new StringBuilder("HttpImageRequest: Image request error - "), vdaVar2.d, null);
                    }
                    y14.r(null, "HttpImageRequest: Send image request - " + str);
                    TrafficStats.setThreadStatsTag(98543098);
                    httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
                    break;
                } catch (Throwable th5) {
                    th = th5;
                    httpURLConnection = null;
                }
                vdaVar2 = o7aVar.o;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                vdaVar = o7aVar.o;
                mz9Var.a(str, (Bitmap) vdaVar.c);
                return;
        }
    }
}
