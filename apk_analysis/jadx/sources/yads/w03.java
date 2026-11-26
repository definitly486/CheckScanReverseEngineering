package yads;

import android.app.Activity;
import android.content.Intent;
import com.yandex.mobile.ads.common.AdActivity;

/* JADX INFO: loaded from: classes6.dex */
public final class w03 {
    public w03(eo6 eo6Var) {
    }

    public final Intent a(Activity activity, long j) {
        Intent intent = new Intent(activity, (Class<?>) AdActivity.class);
        intent.putExtra("window_type", "window_type_fullscreen");
        intent.putExtra("data_identifier", j);
        if (activity == null) {
            intent.addFlags(402653184);
        }
        return intent;
    }
}
