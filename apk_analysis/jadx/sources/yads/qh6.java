package yads;

import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class qh6 {
    public static final Map a = defpackage.n05.e(new defpackage.b36(e66.NO_AD_VIEW, "No ad view"), new defpackage.b36(e66.NO_VISIBLE_ADS, "No valid ads in ad unit"), new defpackage.b36(e66.NOT_VISIBLE_FOR_PERCENT, "Ad is not visible for percent"), new defpackage.b36(e66.REQUIRED_ASSET_CAN_NOT_BE_VISIBLE, "Required asset %s is not visible in ad view"), new defpackage.b36(e66.SUPERVIEW_NULL, "Ad view is null"), new defpackage.b36(e66.SUPERVIEW_HIDDEN, "Ad view is hidden"), new defpackage.b36(e66.VISIBLE_AREA_TOO_SMALL, "Visible area of an ad view is too small"));

    public static String a(f66 f66Var) {
        if (f66Var == null) {
            return "Unknown error, that shouldn't happen";
        }
        String str = f66Var.b;
        String str2 = (String) a.get(f66Var.a);
        return str2 != null ? String.format(str2, Arrays.copyOf(new Object[]{str}, 1)) : "Visibility error";
    }
}
