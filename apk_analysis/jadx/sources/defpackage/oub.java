package defpackage;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.internal.appset.zzl;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;

/* JADX INFO: loaded from: classes4.dex */
public final class oub implements Runnable {
    public final /* synthetic */ zzl b;

    @Override // java.lang.Runnable
    public final void run() {
        Context context = this.b.a;
        long j = zzl.a(context).getLong("app_set_id_last_used_time", -1L);
        long j2 = j != -1 ? j + 33696000000L : -1L;
        if (j2 == -1 || DefaultClock.getInstance().currentTimeMillis() <= j2) {
            return;
        }
        if (!zzl.a(context).edit().remove(CommonUrlParts.APP_SET_ID).commit()) {
            String strValueOf = String.valueOf(context.getPackageName());
            Log.e("AppSet", strValueOf.length() != 0 ? "Failed to clear app set ID generated for App ".concat(strValueOf) : new String("Failed to clear app set ID generated for App "));
        }
        if (context.getSharedPreferences("app_set_id_storage", 0).edit().remove("app_set_id_last_used_time").commit()) {
            return;
        }
        String strValueOf2 = String.valueOf(context.getPackageName());
        Log.e("AppSet", strValueOf2.length() != 0 ? "Failed to clear app set ID last used time for App ".concat(strValueOf2) : new String("Failed to clear app set ID last used time for App "));
    }
}
