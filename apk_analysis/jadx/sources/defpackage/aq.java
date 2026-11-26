package defpackage;

import android.content.Context;
import androidx.core.content.ContextCompat;

/* JADX INFO: loaded from: classes5.dex */
public final class aq {
    public static final boolean a(Context context) {
        return ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_COARSE_LOCATION") == 0 || ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_FINE_LOCATION") == 0;
    }
}
