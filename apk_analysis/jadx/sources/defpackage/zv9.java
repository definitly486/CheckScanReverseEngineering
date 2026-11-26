package defpackage;

import com.google.firebase.dynamiclinks.DynamicLink;
import java.net.HttpCookie;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class zv9 {
    public static String a(HttpCookie httpCookie) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", httpCookie.getName());
            jSONObject.putOpt("value", httpCookie.getValue());
            jSONObject.putOpt("comment", httpCookie.getComment());
            jSONObject.putOpt("commentUrl", httpCookie.getCommentURL());
            jSONObject.putOpt(DynamicLink.Builder.KEY_DOMAIN, httpCookie.getDomain());
            jSONObject.putOpt("maxage", Long.valueOf(httpCookie.getMaxAge()));
            jSONObject.putOpt("path", httpCookie.getPath());
            jSONObject.putOpt("portlist", httpCookie.getPortlist());
            jSONObject.putOpt("version", Integer.valueOf(httpCookie.getVersion()));
            jSONObject.putOpt("secure", Boolean.valueOf(httpCookie.getSecure()));
            jSONObject.putOpt("discard", Boolean.valueOf(httpCookie.getDiscard()));
            jSONObject.putOpt("httpOnly", Boolean.valueOf(httpCookie.isHttpOnly()));
            return jSONObject.toString();
        } catch (Throwable th) {
            fg.e(null, new StringBuilder("MyTargetJSONCookie: Exception encoding cookie - "), th);
            return null;
        }
    }

    public static HttpCookie b(String str) {
        Throwable th;
        HttpCookie httpCookie;
        try {
            JSONObject jSONObject = new JSONObject(str);
            httpCookie = new HttpCookie(jSONObject.getString("name"), jSONObject.optString("value"));
            try {
                httpCookie.setComment(jSONObject.optString("comment"));
                httpCookie.setCommentURL(jSONObject.optString("commentUrl"));
                httpCookie.setDomain(jSONObject.optString(DynamicLink.Builder.KEY_DOMAIN));
                httpCookie.setMaxAge(jSONObject.optInt("maxage"));
                httpCookie.setPath(jSONObject.optString("path"));
                httpCookie.setPortlist(jSONObject.optString("portlist"));
                httpCookie.setVersion(jSONObject.optInt("version"));
                httpCookie.setSecure(jSONObject.optBoolean("secure"));
                httpCookie.setDiscard(jSONObject.optBoolean("discard"));
                httpCookie.setHttpOnly(jSONObject.optBoolean("httpOnly"));
                return httpCookie;
            } catch (Throwable th2) {
                th = th2;
                fg.e(null, new StringBuilder("MyTargetJSONCookie: Exception decoding cookie - "), th);
                return httpCookie;
            }
        } catch (Throwable th3) {
            th = th3;
            httpCookie = null;
        }
    }
}
