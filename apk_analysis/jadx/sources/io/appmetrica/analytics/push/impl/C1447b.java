package io.appmetrica.analytics.push.impl;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import io.appmetrica.analytics.push.AppMetricaPush;
import io.appmetrica.analytics.push.coreutils.internal.utils.CoreUtils;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1447b {
    public static Intent a(Context context, String str) {
        Intent intent;
        if (CoreUtils.isEmpty(str)) {
            intent = null;
            try {
                Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
                if (launchIntentForPackage != null && launchIntentForPackage.getComponent() != null) {
                    try {
                        intent = new Intent(context, Class.forName(launchIntentForPackage.getComponent().getClassName()));
                    } catch (ClassNotFoundException unused) {
                        intent = launchIntentForPackage;
                    }
                    intent.setAction(AppMetricaPush.OPEN_DEFAULT_ACTIVITY_ACTION);
                }
            } catch (Exception unused2) {
            }
        } else {
            intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        }
        if (intent != null) {
            intent.addFlags(268435456);
            intent.addFlags(67108864);
        }
        return intent;
    }
}
