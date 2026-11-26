package yads;

import android.content.Context;
import com.yandex.mobile.ads.R$string;

/* JADX INFO: loaded from: classes6.dex */
public final class q64 {
    public final Context a;

    public q64(Context context) {
        this.a = context;
    }

    public final String a(o64 o64Var) {
        int i = o64Var == null ? -1 : p64.a[o64Var.ordinal()];
        if (i != -1) {
            if (i == 1) {
                return this.a.getString(R$string.debug_panel_invalid_mediation_adapter_version);
            }
            defpackage.me0.e();
        }
        return null;
    }
}
