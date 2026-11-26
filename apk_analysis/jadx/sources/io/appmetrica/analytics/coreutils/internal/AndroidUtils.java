package io.appmetrica.analytics.coreutils.internal;

import android.os.Build;

/* JADX INFO: loaded from: classes5.dex */
public final class AndroidUtils {
    public static final AndroidUtils INSTANCE = new AndroidUtils();

    private AndroidUtils() {
    }

    public static final boolean isApiAchieved(int i) {
        return Build.VERSION.SDK_INT >= i;
    }
}
