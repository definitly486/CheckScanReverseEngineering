package yads;

import defpackage.ta8;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class u64 {
    public static h75 a(x54 x54Var) {
        h75 h75Var = new h75(new LinkedHashMap(), 2);
        String str = x54Var.b;
        h75Var.b(str, "adapter");
        h75Var.b(x54Var.c, "adapter_parameters");
        CharSequence charSequence = (CharSequence) x54Var.c.get("bidding_data");
        boolean z = false;
        h75Var.b(Boolean.valueOf(!(charSequence == null || ta8.M(charSequence))), "mediation_bidder");
        if (ta8.D(str, "LevelPlay", true)) {
            try {
                Class.forName("com.yandex.ads.mobile.ads.mediation.extras.BuildConfig");
                z = true;
            } catch (ClassNotFoundException unused) {
            }
            h75Var.b(Boolean.valueOf(z), "has_extras");
        }
        return h75Var;
    }
}
