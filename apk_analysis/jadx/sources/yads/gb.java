package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import defpackage.v39;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class gb implements ju4 {
    public final f75 a;
    public final String b;

    public gb(f75 f75Var, String str) {
        this.a = f75Var;
        this.b = str;
    }

    @Override // yads.ju4
    public final Map a(long j) {
        Map linkedHashMap = defpackage.mx2.b;
        if (!v39.e(linkedHashMap)) {
            linkedHashMap = null;
        }
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap();
        }
        String str = this.b;
        if (str == null) {
            linkedHashMap.put("adapter", StringUtils.UNDEFINED);
        } else {
            linkedHashMap.put("adapter", str);
        }
        String str2 = this.a.b;
        if (str2 == null) {
            linkedHashMap.put(NotificationCompat.CATEGORY_STATUS, StringUtils.UNDEFINED);
        } else {
            linkedHashMap.put(NotificationCompat.CATEGORY_STATUS, str2);
        }
        linkedHashMap.put(TypedValues.TransitionType.S_DURATION, Long.valueOf(j));
        return linkedHashMap;
    }
}
