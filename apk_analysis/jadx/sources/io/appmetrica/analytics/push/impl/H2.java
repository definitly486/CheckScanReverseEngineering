package io.appmetrica.analytics.push.impl;

import android.content.Context;
import defpackage.n7;
import defpackage.u96;
import io.appmetrica.analytics.AppMetrica;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import io.appmetrica.analytics.push.lazypush.LazyPushTransformRule;
import io.appmetrica.analytics.push.logger.internal.PublicLogger;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class H2 implements LazyPushTransformRule {
    public final Context a;

    public H2(Context context) {
        this.a = context;
    }

    @Override // io.appmetrica.analytics.push.lazypush.LazyPushTransformRule
    public final String getNewValue(String str) {
        try {
            String uuid = AppMetrica.getUuid(this.a);
            return uuid == null ? "" : uuid;
        } catch (Throwable th) {
            PublicLogger publicLogger = PublicLogger.INSTANCE;
            StringBuilder sbD = n7.d("Cannot get ", str, " for AppMetrica version: ");
            sbD.append(AppMetrica.getLibraryVersion());
            publicLogger.error(th, sbD.toString(), new Object[0]);
            return "";
        }
    }

    @Override // io.appmetrica.analytics.push.lazypush.LazyPushTransformRule
    public final List getPatternList() {
        return u96.h(CommonUrlParts.UUID);
    }
}
