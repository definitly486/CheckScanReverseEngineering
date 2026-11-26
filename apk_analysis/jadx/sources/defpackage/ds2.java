package defpackage;

import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;

/* JADX INFO: loaded from: classes2.dex */
public final class ds2 {
    public static final void a(Drawable drawable, int i) {
        if (Build.VERSION.SDK_INT < 29) {
            if (drawable != null) {
                drawable.setColorFilter(i, PorterDuff.Mode.SRC_ATOP);
            }
        } else {
            if (drawable == null) {
                return;
            }
            oj0.a();
            drawable.setColorFilter(new BlendModeColorFilter(i, BlendMode.SRC_ATOP));
        }
    }
}
