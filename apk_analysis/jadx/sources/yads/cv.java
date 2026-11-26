package yads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.yandex.mobile.ads.common.AdActivity;

/* JADX INFO: loaded from: classes6.dex */
public final class cv {
    public cv(eo6 eo6Var) {
    }

    public final Intent a(Context context, String str, long j) {
        Intent intent = new Intent(context, (Class<?>) AdActivity.class);
        intent.putExtra("window_type", "window_type_browser");
        intent.putExtra("extra_browser_url", str);
        if (!(context instanceof Activity)) {
            intent.addFlags(402653184);
        }
        intent.putExtra("data_identifier", j);
        return intent;
    }
}
