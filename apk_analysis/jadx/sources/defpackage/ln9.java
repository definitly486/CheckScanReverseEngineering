package defpackage;

import java.net.CookieManager;
import java.net.HttpURLConnection;
import java.net.URI;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ln9 {
    public final CookieManager a;

    public ln9(CookieManager cookieManager) {
        this.a = cookieManager;
    }

    public static void b(HttpURLConnection httpURLConnection, Map map) {
        Iterator it = map.entrySet().iterator();
        for (boolean zHasNext = it.hasNext(); zHasNext; zHasNext = it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            Iterator it2 = ((List) entry.getValue()).iterator();
            for (boolean zHasNext2 = it2.hasNext(); zHasNext2; zHasNext2 = it2.hasNext()) {
                httpURLConnection.addRequestProperty(str, (String) it2.next());
            }
        }
    }

    public final void a(HttpURLConnection httpURLConnection) {
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        try {
            this.a.put(URI.create(httpURLConnection.getURL().toString()), headerFields);
        } catch (Throwable th) {
            fg.e(null, new StringBuilder("MyTargetCookieManager: Unable to set cookies from urlconnection - "), th);
        }
    }

    public final void c(HttpURLConnection httpURLConnection) {
        HashMap map = new HashMap();
        try {
            b(httpURLConnection, this.a.get(URI.create(httpURLConnection.getURL().toString()), map));
        } catch (Throwable th) {
            fg.e(null, new StringBuilder("MyTargetCookieManager: Unable to set cookies to urlconnection - "), th);
        }
    }
}
