package com.my.tracker.obfuscated;

import android.content.Intent;
import android.net.Uri;

/* JADX INFO: loaded from: classes4.dex */
public final class b0 {
    private final i0 a;

    private b0(i0 i0Var) {
        this.a = i0Var;
    }

    public String a(Intent intent) {
        b3.a("DeeplinkHandler: handling deeplink");
        if (intent == null) {
            b3.a("DeeplinkHandler: intent is null");
            return null;
        }
        try {
            Uri data = intent.getData();
            if (data == null) {
                b3.a("DeeplinkHandler: intent data is null");
                return null;
            }
            b3.a("DeeplinkHandler: intent data: " + data);
            String queryParameter = data.getQueryParameter("mt_deeplink");
            String queryParameter2 = data.getQueryParameter("mt_click_id");
            if (queryParameter != null) {
                b3.a("DeeplinkHandler: found mt_deeplink in intent");
            } else {
                b3.a("DeeplinkHandler: mt_deeplink not found in intent");
                queryParameter = data.toString();
            }
            b3.a("DeeplinkHandler: deeplink " + queryParameter);
            b3.a("DeeplinkHandler: clickId " + queryParameter2);
            this.a.a(queryParameter, queryParameter2);
            return queryParameter;
        } catch (Throwable th) {
            b3.b("DeeplinkHandler error: ", th);
            return null;
        }
    }

    public static b0 a(i0 i0Var) {
        return new b0(i0Var);
    }
}
