package yads;

import defpackage.kv2;
import defpackage.ta8;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Calendar;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ed0 {
    public static String a(Calendar calendar) {
        String strValueOf = String.valueOf(calendar.get(1));
        String strR = ta8.R(2, String.valueOf(calendar.get(2) + 1));
        String strR2 = ta8.R(2, String.valueOf(calendar.get(5)));
        String strR3 = ta8.R(2, String.valueOf(calendar.get(11)));
        String strR4 = ta8.R(2, String.valueOf(calendar.get(12)));
        String strR5 = ta8.R(2, String.valueOf(calendar.get(13)));
        StringBuilder sb = new StringBuilder();
        sb.append(strValueOf);
        sb.append("-");
        sb.append(strR);
        sb.append("-");
        sb.append(strR2);
        kv2.c(sb, " ", strR3, StringUtils.PROCESS_POSTFIX_DELIMITER, strR4);
        return defpackage.me0.d(sb, StringUtils.PROCESS_POSTFIX_DELIMITER, strR5);
    }
}
