package io.appmetrica.analytics.impl;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.dynamiclinks.DynamicLink;
import io.appmetrica.analytics.coreapi.internal.data.IBinaryDataHelper;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class Rg extends Ug {
    public Rg(C0989i5 c0989i5) {
        super(c0989i5);
    }

    public final boolean a(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                String queryParameter = Uri.parse(str).getQueryParameter("referrer");
                if (!TextUtils.isEmpty(queryParameter)) {
                    B2 b2 = this.a.t().y;
                    for (String str2 : Uri.decode(queryParameter).split("&")) {
                        String strDecode = Uri.decode(str2);
                        int iIndexOf = strDecode.indexOf("=");
                        if (iIndexOf >= 0 && a(Uri.decode(strDecode.substring(0, iIndexOf)), Uri.decode(strDecode.substring(iIndexOf + 1)), b2)) {
                            return true;
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public final void b() {
        Go go = this.a.t;
        synchronized (go) {
            go.a(go.a() + 1);
        }
        this.a.z();
        Y8 y8 = this.a.l;
        if (y8.c == null) {
            y8.a();
        }
        C0786a9 c0786a9 = y8.c;
        c0786a9.getClass();
        c0786a9.b = new HashSet();
        c0786a9.d = 0;
        C0786a9 c0786a10 = y8.c;
        c0786a10.a = true;
        C0864d9 c0864d9 = y8.b;
        IBinaryDataHelper iBinaryDataHelper = c0864d9.c;
        C0838c9 c0838c9 = c0864d9.b;
        c0864d9.a.getClass();
        iBinaryDataHelper.insert("event_hashes", c0838c9.toByteArray(C0812b9.a(c0786a10)));
    }

    @Override // io.appmetrica.analytics.impl.Ug
    public final boolean a(C0783a6 c0783a6) {
        String value = c0783a6.getValue();
        if (TextUtils.isEmpty(value)) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(value);
            if (!TtmlNode.TEXT_EMPHASIS_MARK_OPEN.equals(jSONObject.optString(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY))) {
                return false;
            }
            Go go = this.a.t;
            synchronized (go) {
                go.c(go.b() + 1);
            }
            if (!a(jSONObject.optString(DynamicLink.Builder.KEY_LINK))) {
                return false;
            }
            c0783a6.n = Boolean.TRUE;
            b();
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean a(String str, String str2, B2 b2) {
        Object obj;
        if ("reattribution".equals(str) && "1".equals(str2)) {
            return true;
        }
        if (b2 == null) {
            return false;
        }
        for (Pair pair : b2.a) {
            if (xo.a(pair.first, str) && ((obj = pair.second) == null || ((A2) obj).a.equals(str2))) {
                return true;
            }
        }
        return false;
    }
}
