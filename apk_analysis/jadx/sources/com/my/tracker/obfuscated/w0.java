package com.my.tracker.obfuscated;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.my.tracker.MyTrackerConfig;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes4.dex */
public abstract class w0 {

    public interface a {
        String a();

        void a(OutputStream outputStream);
    }

    public static final class b {
        boolean a;
        Object b;
        String c;

        private b() {
        }

        public static b d() {
            return new b();
        }

        public String a() {
            return this.c;
        }

        public Object b() {
            return this.b;
        }

        public boolean c() {
            return this.a;
        }
    }

    public static boolean a(Context context) {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
            return false;
        }
        return activeNetworkInfo.isConnected();
    }

    public abstract b a(String str);

    public static w0 a(a aVar, MyTrackerConfig.OkHttpClientProvider okHttpClientProvider, boolean z) {
        if (okHttpClientProvider != null) {
            try {
                return new o1(aVar, okHttpClientProvider, z);
            } catch (Throwable th) {
                b3.a("HttpRequest error: error while creating OkHttpPostRequest", th);
            }
        }
        return new v0(aVar, z);
    }

    public static w0 a(MyTrackerConfig.OkHttpClientProvider okHttpClientProvider) {
        if (okHttpClientProvider != null) {
            try {
                return new n1(okHttpClientProvider);
            } catch (Throwable th) {
                b3.a("HttpRequest error: error while creating OkHttpPostRequest", th);
            }
        }
        return new u0();
    }
}
