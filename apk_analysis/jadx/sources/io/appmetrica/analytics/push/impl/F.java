package io.appmetrica.analytics.push.impl;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import io.appmetrica.analytics.push.coreutils.internal.utils.TrackersHub;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public abstract class F {
    public static void a(String str, long j, String str2, String str3) {
        HashMap map = new HashMap();
        map.put("action", str);
        map.put("service_type", str3);
        if (j != -1) {
            map.put(TypedValues.TransitionType.S_DURATION, Long.valueOf(System.currentTimeMillis() - j));
        }
        if (str2 != null) {
            map.put("push_id", str2);
        }
        TrackersHub.getInstance().reportEvent("ActionDuration", map);
    }
}
