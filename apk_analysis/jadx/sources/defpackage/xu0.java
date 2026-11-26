package defpackage;

import android.os.Build;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class xu0 {
    public static /* synthetic */ int a() {
        int i = Build.VERSION.SDK_INT;
        return i < 36 ? i * 100000 : Build.VERSION.SDK_INT_FULL;
    }
}
