package yads;

import android.content.Context;
import android.util.TypedValue;

/* JADX INFO: loaded from: classes6.dex */
public final class ip0 {
    public static int a(Context context, float f) {
        return defpackage.w65.b(TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics()));
    }

    public static int a(Context context, int i) {
        return defpackage.w65.b(i / context.getResources().getDisplayMetrics().density);
    }
}
