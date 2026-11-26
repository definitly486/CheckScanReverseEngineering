package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Size;
import android.view.Display;
import android.view.WindowManager;
import android.view.WindowMetrics;

/* JADX INFO: loaded from: classes5.dex */
public final class ff7 {
    public static final a a;

    public static class a {
        public Size a(Context context) {
            DisplayMetrics displayMetrics;
            Display defaultDisplay = ((WindowManager) context.getSystemService(WindowManager.class)).getDefaultDisplay();
            if (defaultDisplay != null) {
                displayMetrics = new DisplayMetrics();
                defaultDisplay.getRealMetrics(displayMetrics);
            } else {
                displayMetrics = Resources.getSystem().getDisplayMetrics();
            }
            return new Size(displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
    }

    public static final class b extends a {
        @Override // ff7.a
        public final Size a(Context context) {
            WindowMetrics currentWindowMetrics = ((WindowManager) context.getSystemService(WindowManager.class)).getCurrentWindowMetrics();
            currentWindowMetrics.getClass();
            return new Size(currentWindowMetrics.getBounds().width(), currentWindowMetrics.getBounds().height());
        }
    }

    static {
        a = Build.VERSION.SDK_INT >= 30 ? new b() : new a();
    }
}
