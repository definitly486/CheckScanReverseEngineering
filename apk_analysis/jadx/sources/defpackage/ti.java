package defpackage;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.logging.Logger;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes5.dex */
public final class ti {
    public static final CopyOnWriteArraySet<Logger> a = new CopyOnWriteArraySet<>();
    public static final Map<String, String> b;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Package r2 = OkHttpClient.class.getPackage();
        String name = r2 != null ? r2.getName() : null;
        if (name != null) {
            linkedHashMap.put(name, "OkHttp");
        }
        linkedHashMap.put(OkHttpClient.class.getName(), "okhttp.OkHttpClient");
        linkedHashMap.put(fy3.class.getName(), "okhttp.Http2");
        linkedHashMap.put(ho8.class.getName(), "okhttp.TaskRunner");
        linkedHashMap.put("okhttp3.mockwebserver.MockWebServer", "okhttp.MockWebServer");
        b = n05.l(linkedHashMap);
    }
}
