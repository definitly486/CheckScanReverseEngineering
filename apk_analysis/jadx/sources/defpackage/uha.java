package defpackage;

import android.util.Base64OutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.DeflaterOutputStream;

/* JADX INFO: loaded from: classes4.dex */
public abstract class uha {
    public static String a(HashMap map) throws IOException {
        String strEncode;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(new Base64OutputStream(byteArrayOutputStream, 2));
            try {
                boolean z = true;
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getValue();
                    if (str != null) {
                        String str2 = (String) entry.getKey();
                        try {
                            strEncode = URLEncoder.encode(str, "UTF-8");
                        } catch (Throwable th) {
                            y14.r(null, "UrlResolver: Unable to encode url - " + th.getMessage());
                            strEncode = "";
                        }
                        if (z) {
                            z = false;
                        } else {
                            deflaterOutputStream.write(38);
                        }
                        deflaterOutputStream.write(str2.getBytes());
                        deflaterOutputStream.write(61);
                        deflaterOutputStream.write(strEncode.getBytes());
                    }
                }
                deflaterOutputStream.close();
                String string = byteArrayOutputStream.toString();
                deflaterOutputStream.close();
                byteArrayOutputStream.close();
                return string;
            } catch (Throwable th2) {
                try {
                    deflaterOutputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (Throwable th4) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th5) {
                th4.addSuppressed(th5);
            }
            throw th4;
        }
    }
}
