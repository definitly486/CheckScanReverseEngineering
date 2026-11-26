package com.my.tracker.obfuscated;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import com.my.tracker.MyTracker;
import com.my.tracker.MyTrackerAttribution;
import defpackage.t85;
import java.net.URLDecoder;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class n {
    final AtomicBoolean a = new AtomicBoolean(false);
    final c3 b;
    final Context c;

    public n(c3 c3Var, Context context) {
        this.b = c3Var;
        this.c = context.getApplicationContext();
    }

    public void a(JSONObject jSONObject) {
        String strOptString = jSONObject.optString("deeplink");
        if (TextUtils.isEmpty(strOptString)) {
            b3.a("AttributionHandler: deeplink is empty");
            return;
        }
        if (!this.a.compareAndSet(false, true)) {
            b3.a("AttributionHandler: attribution has already been received");
            return;
        }
        t1 t1VarA = t1.a(this.c);
        if (!TextUtils.isEmpty(t1VarA.h())) {
            b3.a("AttributionHandler: attribution has already been received");
            return;
        }
        t1VarA.i(jSONObject.toString());
        MyTracker.AttributionListener attributionListenerD = this.b.d();
        if (attributionListenerD == null) {
            return;
        }
        Handler handlerC = this.b.c();
        if (handlerC == null) {
            handlerC = m.a;
        }
        try {
            handlerC.post(new t85(2, attributionListenerD, MyTrackerAttribution.newAttribution(strOptString)));
        } catch (Throwable th) {
            b3.b("AttributionHandler error: exception occurred while post runnable", th);
        }
    }

    public void b(String str) {
        if (a()) {
            b3.a("AttributionHandler: attribution has already been received");
            return;
        }
        try {
            JSONObject jSONObjectOptJSONObject = new JSONObject(str).optJSONObject("attribution");
            if (jSONObjectOptJSONObject == null) {
                b3.a("AttributionHandler: empty attribution object has been returned");
                return;
            }
            if (!jSONObjectOptJSONObject.has("error")) {
                a(jSONObjectOptJSONObject);
                return;
            }
            b3.a("AttributionHandler: attribution response returned error " + jSONObjectOptJSONObject.optInt("error"));
        } catch (Throwable th) {
            b3.b("AttributionHandler error: handling server attribution failed with error: ", th);
        }
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            b3.a("AttributionHandler: referrer is empty");
            return;
        }
        if (a()) {
            b3.a("AttributionHandler: attribution has already been received");
            return;
        }
        try {
            String queryParameter = Uri.parse("https://my.com/?" + URLDecoder.decode(str, "UTF-8")).getQueryParameter("mt_deeplink");
            if (TextUtils.isEmpty(queryParameter)) {
                b3.a("AttributionHandler: deeplink is empty");
            } else {
                a(new JSONObject().put("deeplink", queryParameter));
            }
        } catch (Throwable th) {
            b3.b("AttributionHandler error: handling referrer failed with error: ", th);
        }
    }

    public boolean a() {
        if (this.a.get()) {
            return true;
        }
        return !TextUtils.isEmpty(t1.a(this.c).h());
    }

    public static n a(c3 c3Var, Context context) {
        return new n(c3Var, context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(MyTracker.AttributionListener attributionListener, MyTrackerAttribution myTrackerAttribution) {
        try {
            attributionListener.onReceiveAttribution(myTrackerAttribution);
        } catch (Throwable unused) {
            b3.b("AttributionHandler error: exception at AttributionListener::onReceiveAttribution()");
        }
    }
}
