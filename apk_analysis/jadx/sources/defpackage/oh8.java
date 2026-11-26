package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONException;
import org.json.JSONObject;
import ru.rustore.sdk.metrics.MetricsException;

/* JADX INFO: loaded from: classes2.dex */
public final class oh8 {
    public final th5 a;
    public final n97 b;

    public oh8(th5 th5Var, n97 n97Var) {
        this.a = th5Var;
        this.b = n97Var;
    }

    public final ef9 a() throws JSONException, IOException {
        String str;
        String string;
        nz3 nz3Var = (nz3) this.a.b;
        String strI = na8.i("\n            SELECT * FROM metrics_event_table\n            LIMIT 10\n        ");
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQuery = ((SQLiteDatabase) nz3Var.b.getValue()).rawQuery(strI, new String[0]);
        try {
            int columnIndexOrThrow = cursorRawQuery.getColumnIndexOrThrow(CommonUrlParts.UUID);
            int columnIndexOrThrow2 = cursorRawQuery.getColumnIndexOrThrow("metrics_event");
            while (cursorRawQuery.moveToNext()) {
                String string2 = cursorRawQuery.getString(columnIndexOrThrow);
                string2.getClass();
                byte[] blob = cursorRawQuery.getBlob(columnIndexOrThrow2);
                blob.getClass();
                arrayList.add(new ab4(string2, blob));
            }
            j59 j59Var = j59.a;
            cursorRawQuery.close();
            List<ab4> listT0 = qn1.t0(arrayList);
            new yt3(listT0);
            ArrayList<m72> arrayList2 = new ArrayList(kn1.q(listT0, 10));
            for (ab4 ab4Var : listT0) {
                ab4Var.getClass();
                String str2 = ab4Var.a;
                JSONObject jSONObject = new JSONObject(ra8.t(ab4Var.b));
                String string3 = jSONObject.getString("name");
                string3.getClass();
                JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                jSONObject2.getClass();
                ArrayList arrayList3 = new ArrayList();
                Iterator<String> itKeys = jSONObject2.keys();
                itKeys.getClass();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    arrayList3.add(new b36(next, jSONObject2.get(next).toString()));
                }
                arrayList2.add(new m72(str2, new ya5(string3, n05.k(arrayList3), jSONObject.getLong("time"))));
            }
            if (arrayList2.isEmpty()) {
                return ef9.a.a;
            }
            n97 n97Var = this.b;
            String packageName = ((Context) n97Var.b.a).getPackageName();
            packageName.getClass();
            xn9 xn9Var = n97Var.a;
            SharedPreferences sharedPreferences = (SharedPreferences) xn9Var.a.a;
            sharedPreferences.getClass();
            HttpsURLConnection httpsURLConnection = null;
            String string4 = sharedPreferences.getString("USER_ID_KEY", null);
            if (string4 == null) {
                string4 = null;
            }
            if (string4 == null) {
                synchronized (xn9.b) {
                    SharedPreferences sharedPreferences2 = (SharedPreferences) xn9Var.a.a;
                    sharedPreferences2.getClass();
                    string = sharedPreferences2.getString("USER_ID_KEY", null);
                    if (string == null) {
                        string = null;
                    }
                    if (string == null) {
                        string = UUID.randomUUID().toString();
                        string.getClass();
                        SharedPreferences sharedPreferences3 = (SharedPreferences) xn9Var.a.a;
                        sharedPreferences3.getClass();
                        SharedPreferences.Editor editorEdit = sharedPreferences3.edit();
                        editorEdit.putString("USER_ID_KEY", string);
                        editorEdit.apply();
                    }
                }
                str = string;
            } else {
                str = string4;
            }
            is9 is9Var = (is9) n97Var.d.b.getValue();
            String str3 = is9Var != null ? is9Var.a : null;
            ArrayList arrayList4 = new ArrayList(kn1.q(arrayList2, 10));
            for (m72 m72Var : arrayList2) {
                arrayList4.add(new x06(packageName, m72Var.a, str, str3, m72Var.b));
            }
            f8a f8aVar = (f8a) n97Var.c.b;
            try {
                String strA = f8a.a(arrayList4);
                try {
                    HttpsURLConnection httpsURLConnectionB = f8aVar.b();
                    OutputStream outputStream = httpsURLConnectionB.getOutputStream();
                    try {
                        byte[] bytes = strA.getBytes(ha1.b);
                        bytes.getClass();
                        outputStream.write(bytes);
                        outputStream.flush();
                        j59 j59Var2 = j59.a;
                        outputStream.close();
                        try {
                            new h6a(httpsURLConnectionB.getURL(), httpsURLConnectionB.getResponseCode(), strA, httpsURLConnectionB.getRequestProperty("X-Metrics-Request-Time"));
                            httpsURLConnectionB.disconnect();
                            return new ef9.b(arrayList2);
                        } catch (Throwable th) {
                            th = th;
                            httpsURLConnection = httpsURLConnectionB;
                            try {
                                new m7a(th);
                                throw new MetricsException.NetworkError("Http request was failed", th);
                            } catch (Throwable th2) {
                                if (httpsURLConnection == null) {
                                    throw th2;
                                }
                                httpsURLConnection.disconnect();
                                throw th2;
                            }
                        }
                    } catch (Throwable th3) {
                        try {
                            throw th3;
                        } catch (Throwable th4) {
                            m96.c(outputStream, th3);
                            throw th4;
                        }
                    }
                } catch (Throwable th5) {
                    th = th5;
                }
            } catch (Throwable th6) {
                th = th6;
            }
        } catch (Throwable th7) {
            try {
                throw th7;
            } catch (Throwable th8) {
                m96.c(cursorRawQuery, th7);
                throw th8;
            }
        }
    }
}
