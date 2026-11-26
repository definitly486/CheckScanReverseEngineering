package yads;

import androidx.core.app.NotificationCompat;
import defpackage.ta8;
import java.util.LinkedHashMap;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public abstract class sy4 {
    /* JADX WARN: Code duplicated, block: B:17:0x005d  */
    public static LinkedHashMap a(qy4 qy4Var) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("adapter", qy4Var.a);
        yy4 yy4Var = qy4Var.b;
        if (yy4Var != null) {
            linkedHashMap.put("winner_name", yy4Var.a);
            linkedHashMap.put("winner_ad_unit", yy4Var.b);
        }
        String lowerCase = qy4Var.d.a.name().toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        linkedHashMap.put(NotificationCompat.CATEGORY_STATUS, lowerCase);
        Integer num = qy4Var.d.c;
        if (num != null) {
            linkedHashMap.put("error_code", String.valueOf(num.intValue()));
        }
        iz4 iz4Var = qy4Var.d;
        if (iz4Var.a == kz4.ERROR) {
            String str = iz4Var.b;
            if (str == null) {
                str = "Unknown error";
            } else {
                if (ta8.M(str)) {
                    str = null;
                }
                if (str == null) {
                    str = "Unknown error";
                }
            }
            linkedHashMap.put("error_message", str);
        }
        return linkedHashMap;
    }
}
