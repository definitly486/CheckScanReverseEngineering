package io.appmetrica.analytics.push.coreutils.internal.model;

import android.os.Bundle;
import io.appmetrica.analytics.push.coreutils.internal.CoreConstants;
import io.appmetrica.analytics.push.logger.internal.PublicLogger;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class BasePushMessage {
    private final String a;
    private final JSONObject b;
    private final boolean c;

    public BasePushMessage(Bundle bundle) {
        String string = bundle.getString(CoreConstants.PushMessage.ROOT_ELEMENT);
        this.a = string;
        JSONObject jSONObject = null;
        if (string != null) {
            try {
                jSONObject = new JSONObject(string);
            } catch (Throwable unused) {
                PublicLogger.INSTANCE.warning("Ignore parse push message exception", new Object[0]);
            }
        }
        this.b = jSONObject;
        this.c = jSONObject != null;
    }

    public final JSONObject getRoot() {
        return this.b;
    }

    public final String getRootString() {
        return this.a;
    }

    public final boolean isOwnPush() {
        return this.c;
    }
}
