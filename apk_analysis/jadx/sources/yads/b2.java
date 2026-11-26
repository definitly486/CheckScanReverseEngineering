package yads;

import android.content.Intent;
import android.view.Window;
import android.widget.RelativeLayout;
import com.yandex.mobile.ads.common.AdActivity;

/* JADX INFO: loaded from: classes6.dex */
public final class b2 implements o2 {
    @Override // yads.o2
    public final n2 a(AdActivity adActivity, RelativeLayout relativeLayout, x2 x2Var, i2 i2Var, Window window, f2 f2Var) {
        Intent intent = adActivity.getIntent();
        String stringExtra = intent != null ? intent.getStringExtra("extra_browser_url") : null;
        if (stringExtra != null && stringExtra.length() > 0) {
            try {
                return new a2(adActivity, relativeLayout, x2Var, window, stringExtra);
            } catch (bk6 unused) {
            }
        }
        return null;
    }
}
