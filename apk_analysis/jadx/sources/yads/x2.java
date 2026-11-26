package yads;

import android.os.Build;
import android.os.Bundle;
import com.yandex.mobile.ads.common.AdActivity;

/* JADX INFO: loaded from: classes6.dex */
public final class x2 {
    public final AdActivity a;
    public final h9 b;

    public x2(AdActivity adActivity, h9 h9Var) {
        this.a = adActivity;
        this.b = h9Var;
    }

    public final void a(int i) {
        try {
            if (Build.VERSION.SDK_INT != 26) {
                AdActivity adActivity = this.a;
                if (adActivity.getResources().getConfiguration().smallestScreenWidthDp >= 600) {
                    i = 14;
                }
                adActivity.setRequestedOrientation(i);
            }
        } catch (Exception unused) {
        }
    }

    public final void a(int i, Bundle bundle) {
        h9 h9Var = this.b;
        if (h9Var != null) {
            h9Var.a(i, bundle);
        }
    }
}
