package yads;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;

/* JADX INFO: loaded from: classes6.dex */
public final class l2 {
    public static final String b = "com.yandex.mobile.ads.common.AdActivity";
    public static final String c = "There is no presence of com.yandex.mobile.ads.common.AdActivity activity in AndroidManifest file.";
    public final c2 a = new c2();

    public final void a(Context context) {
        try {
            ActivityInfo activityInfo = context.getPackageManager().getActivityInfo(new ComponentName(context.getPackageName(), b), 0);
            this.a.getClass();
            c2.a(activityInfo);
        } catch (PackageManager.NameNotFoundException unused) {
            throw new vm3(c);
        }
    }
}
