package androidx.compose.material3.internal;

import defpackage.eg9;
import defpackage.q15;
import defpackage.ra8;
import defpackage.s15;
import defpackage.ta8;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class CalendarModelKt {
    public static final int DaysInWeek = 7;
    public static final long MillisecondsIn24Hours = 86400000;

    public static final DateInputFormat datePatternAsInputFormat(String str) {
        Pattern patternCompile = Pattern.compile("[^dMy/\\-.]");
        patternCompile.getClass();
        str.getClass();
        String strReplaceAll = patternCompile.matcher(str).replaceAll("");
        strReplaceAll.getClass();
        Pattern patternCompile2 = Pattern.compile("d{1,2}");
        patternCompile2.getClass();
        String strReplaceAll2 = patternCompile2.matcher(strReplaceAll).replaceAll("dd");
        strReplaceAll2.getClass();
        Pattern patternCompile3 = Pattern.compile("M{1,2}");
        patternCompile3.getClass();
        String strReplaceAll3 = patternCompile3.matcher(strReplaceAll2).replaceAll("MM");
        strReplaceAll3.getClass();
        Pattern patternCompile4 = Pattern.compile("y{1,4}");
        patternCompile4.getClass();
        String strReplaceAll4 = patternCompile4.matcher(strReplaceAll3).replaceAll("yyyy");
        strReplaceAll4.getClass();
        String strU = ta8.U(ra8.y(strReplaceAll4, "My", "M/y"), ".");
        Pattern patternCompile5 = Pattern.compile("[/\\-.]");
        patternCompile5.getClass();
        Matcher matcher = patternCompile5.matcher(strU);
        matcher.getClass();
        s15 s15VarB = eg9.b(matcher, 0, strU);
        s15VarB.getClass();
        q15 q15VarB = s15VarB.c.b(0);
        q15VarB.getClass();
        return new DateInputFormat(strU, q15VarB.a.charAt(0));
    }
}
