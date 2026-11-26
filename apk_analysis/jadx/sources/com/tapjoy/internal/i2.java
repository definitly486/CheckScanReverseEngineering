package com.tapjoy.internal;

import android.content.Context;
import android.content.SharedPreferences;
import com.tapjoy.TapjoyConnectCore;
import com.tapjoy.TapjoyConstants;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class i2 {
    public static final i2 c = new i2();
    public final m0 a = new m0();
    public Context b;

    public final void a(Long l) {
        try {
            HashMap map = new HashMap();
            map.put("placement_request_content_retry_timeout", l);
            map.put("placement_request_content_retry_backoff", Arrays.asList(0L, 500L, 10000L, Double.valueOf(2.0d)));
            this.a.a(map);
            StringWriter stringWriter = new StringWriter();
            d0 d0Var = new d0(stringWriter);
            try {
                d0Var.a(l);
                try {
                    d0Var.a.flush();
                    this.b.getSharedPreferences(TapjoyConstants.TJC_PREFERENCE, 0).edit().putString(TapjoyConstants.PREF_SERVER_PROVIDED_CONFIGURATIONS, stringWriter.toString()).apply();
                } catch (IOException e) {
                    x1.a(e, Error.class);
                    x1.a(e, RuntimeException.class);
                    throw new RuntimeException(e);
                }
            } catch (IOException e2) {
                x1.a(e2, Error.class);
                x1.a(e2, RuntimeException.class);
                throw new RuntimeException(e2);
            }
        } catch (Exception unused) {
        }
    }

    public final synchronized void a() {
        try {
            Context context = TapjoyConnectCore.getInstance().getContext();
            this.b = context;
            SharedPreferences sharedPreferences = context.getSharedPreferences(TapjoyConstants.TJC_PREFERENCE, 0);
            String string = this.b.getSharedPreferences(TapjoyConstants.TJC_PREFERENCE, 0).getString(TapjoyConstants.PREF_SERVER_PROVIDED_CONFIGURATIONS, null);
            if (string != null) {
                try {
                    if (w.a == null) {
                        w.a = z.n;
                    }
                    z zVar = new z(new StringReader(string));
                    try {
                        LinkedHashMap linkedHashMapA = zVar.a();
                        zVar.close();
                        this.a.a(linkedHashMapA);
                    } catch (Throwable th) {
                        zVar.close();
                        throw th;
                    }
                } catch (Exception unused) {
                    sharedPreferences.edit().remove(TapjoyConstants.PREF_SERVER_PROVIDED_CONFIGURATIONS).apply();
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
