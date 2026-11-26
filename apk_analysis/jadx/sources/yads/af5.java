package yads;

import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes6.dex */
public final class af5 extends fl0 {
    public final SSLSocketFactory p;

    public af5(String str, ma3 ma3Var, SSLSocketFactory sSLSocketFactory) {
        super(str, 8000, 8000, ma3Var);
        this.p = sSLSocketFactory;
    }

    @Override // yads.fl0
    public final HttpURLConnection a(URL url) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
        SSLSocketFactory sSLSocketFactory = this.p;
        if (sSLSocketFactory != null && (httpURLConnection instanceof HttpsURLConnection)) {
            ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(sSLSocketFactory);
        }
        return httpURLConnection;
    }
}
