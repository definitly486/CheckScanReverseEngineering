package yads;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public abstract class uk6 {
    public static final /* synthetic */ int a = 0;

    static {
        Pattern.compile("^NOTE([ \t].*)?$");
    }

    public static long a(String str) {
        int i = u56.a;
        String[] strArrSplit = str.split("\\.", 2);
        long j = 0;
        for (String str2 : strArrSplit[0].split(StringUtils.PROCESS_POSTFIX_DELIMITER, -1)) {
            j = (j * 60) + Long.parseLong(str2);
        }
        long j2 = j * 1000;
        if (strArrSplit.length == 2) {
            j2 += Long.parseLong(strArrSplit[1]);
        }
        return j2 * 1000;
    }

    public static void a(os4 os4Var) throws xs4 {
        int i = os4Var.b;
        String strB = os4Var.b();
        if (strB == null || !strB.startsWith("WEBVTT")) {
            os4Var.e(i);
            throw new xs4("Expected WEBVTT. Got " + os4Var.b(), null, true, 1);
        }
    }
}
