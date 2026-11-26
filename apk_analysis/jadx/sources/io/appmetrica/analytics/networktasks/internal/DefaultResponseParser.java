package io.appmetrica.analytics.networktasks.internal;

import androidx.core.app.NotificationCompat;
import defpackage.me0;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class DefaultResponseParser {

    public static class Response {
        public final String mStatus;

        public Response(String str) {
            this.mStatus = str;
        }

        public String toString() {
            return me0.d(new StringBuilder("Response{mStatus='"), this.mStatus, "'}");
        }
    }

    public Response parse(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            if (bArr.length > 0) {
                return new Response(new JSONObject(new String(bArr, "UTF-8")).optString(NotificationCompat.CATEGORY_STATUS));
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }
}
