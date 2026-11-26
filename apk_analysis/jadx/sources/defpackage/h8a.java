package defpackage;

import android.net.TrafficStats;
import androidx.compose.ui.autofill.AutofillUtils_androidKt;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.tapjoy.TJAdUnitConstants;
import java.io.BufferedWriter;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.StandardCharsets;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class h8a extends y14 {
    public final vda U(String str, String str2, Map map) {
        HttpURLConnection httpURLConnection;
        vda vdaVar = new vda();
        if (str2 == null) {
            y14.r(null, "HttpLogRequest: Can't send log request - body is null");
            vdaVar.a = false;
            return vdaVar;
        }
        y14.r(null, "HttpLogRequest: Send log request");
        try {
            TrafficStats.setThreadStatsTag(98543098);
            httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
            try {
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setConnectTimeout(AutofillUtils_androidKt.MAX_AUTOFILL_TEXT_LENGTH);
                httpURLConnection.setReadTimeout(AutofillUtils_androidKt.MAX_AUTOFILL_TEXT_LENGTH);
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setRequestProperty("Content-Type", "text/html; charset=utf-8");
                httpURLConnection.setRequestProperty("connection", TJAdUnitConstants.String.CLOSE);
                y14.m(httpURLConnection);
                httpURLConnection.connect();
                OutputStream outputStream = httpURLConnection.getOutputStream();
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, StandardCharsets.UTF_8));
                bufferedWriter.write(str2);
                bufferedWriter.flush();
                bufferedWriter.close();
                outputStream.close();
                httpURLConnection.getInputStream().close();
                httpURLConnection.disconnect();
                return vdaVar;
            } catch (Throwable th) {
                th = th;
                try {
                    vdaVar.a = false;
                    vdaVar.d = th.getMessage();
                    y14.r(null, "HttpLogRequest: Log request error - " + vdaVar.d);
                    return vdaVar;
                } finally {
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            httpURLConnection = null;
        }
    }
}
