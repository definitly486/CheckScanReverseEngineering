package yads;

import defpackage.ta8;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class cv3 {
    public static final void a(zu3 zu3Var, String str, List list) {
        String strA0 = null;
        if (list != null) {
            List list2 = !list.isEmpty() ? list : null;
            if (list2 != null) {
                strA0 = defpackage.qn1.a0(list2, StringUtils.COMMA, null, null, 0, null, 62);
            }
        }
        ((av3) zu3Var).a(str, strA0);
    }

    public static final List a(zu3 zu3Var, String str) {
        String strC = ((av3) zu3Var).c(str);
        if (strC != null) {
            return ta8.Y(strC, new String[]{StringUtils.COMMA});
        }
        return null;
    }
}
