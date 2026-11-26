package defpackage;

import android.content.Context;
import android.content.ServiceConnection;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class ny1 {
    public static final void a(Context context, ServiceConnection serviceConnection) {
        if (serviceConnection != null) {
            try {
                context.unbindService(serviceConnection);
            } catch (Throwable th) {
                Log.e("ServiceExt", "unbindServiceSafely", th);
            }
        }
    }
}
