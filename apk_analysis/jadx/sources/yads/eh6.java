package yads;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import defpackage.k57;

/* JADX INFO: loaded from: classes6.dex */
public abstract class eh6 {
    public static final th6 a = new th6();

    public static final int a(View view) {
        int i;
        if (view == null || !view.isShown() || (i = a.a(view).a) <= 0) {
            return 0;
        }
        int width = view.getLayoutParams().width > 0 ? view.getLayoutParams().width : view.getWidth();
        int height = view.getLayoutParams().height > 0 ? view.getLayoutParams().height : view.getHeight();
        if (height <= 0 || width <= 0) {
            return 0;
        }
        return (i * 100) / (height * width);
    }

    public static final int b(Context context) {
        return (int) b(c(context), context.getResources().getDisplayMetrics().density);
    }

    public static final int c(Context context) {
        Object aVar;
        int iHeight;
        zg5 zg5Var;
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        fe5 fe5VarA = zg5Var2.a(context);
        if (fe5VarA == null || !fe5VarA.G0) {
            return context.getResources().getDisplayMetrics().heightPixels;
        }
        try {
            if (Build.VERSION.SDK_INT >= 30) {
                Object systemService = context.getSystemService("window");
                systemService.getClass();
                iHeight = ((WindowManager) systemService).getCurrentWindowMetrics().getBounds().height();
            } else {
                iHeight = context.getResources().getDisplayMetrics().heightPixels;
            }
            aVar = Integer.valueOf(iHeight);
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Object objValueOf = Integer.valueOf(context.getResources().getDisplayMetrics().heightPixels);
        if (aVar instanceof k57.a) {
            aVar = objValueOf;
        }
        return ((Number) aVar).intValue();
    }

    public static final int d(Context context) {
        return (int) b(e(context), context.getResources().getDisplayMetrics().density);
    }

    public static final int e(Context context) {
        Object aVar;
        int iWidth;
        zg5 zg5Var;
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        fe5 fe5VarA = zg5Var2.a(context);
        if (fe5VarA == null || !fe5VarA.G0) {
            return context.getResources().getDisplayMetrics().widthPixels;
        }
        try {
            if (Build.VERSION.SDK_INT >= 30) {
                Object systemService = context.getSystemService("window");
                systemService.getClass();
                iWidth = ((WindowManager) systemService).getCurrentWindowMetrics().getBounds().width();
            } else {
                iWidth = context.getResources().getDisplayMetrics().widthPixels;
            }
            aVar = Integer.valueOf(iWidth);
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Object objValueOf = Integer.valueOf(context.getResources().getDisplayMetrics().widthPixels);
        if (aVar instanceof k57.a) {
            aVar = objValueOf;
        }
        return ((Number) aVar).intValue();
    }

    public static final float b(int i, float f) {
        return ((i + 0.0f) / f) + 0.5f;
    }

    public static final boolean b(View view) {
        return !view.isShown() || view.getAlpha() == 0.0f;
    }

    public static final void a(ViewGroup viewGroup) {
        if (viewGroup != null) {
            try {
                if (viewGroup.getParent() instanceof ViewGroup) {
                    ViewParent parent = viewGroup.getParent();
                    parent.getClass();
                    ((ViewGroup) parent).removeView(viewGroup);
                }
            } catch (Exception unused) {
            }
            try {
                viewGroup.removeAllViews();
            } catch (Exception unused2) {
            }
        }
    }

    public static final int a(int i, float f) {
        int i2 = (int) (((100.0f - f) * 255.0f) / 100.0f);
        if (255 <= i2) {
            i2 = 255;
        }
        if (i2 <= 0) {
            i2 = 0;
        }
        return Color.argb(i2, Color.red(i), Color.green(i), Color.blue(i));
    }

    public static final int a(Context context) {
        return context.getResources().getDisplayMetrics().densityDpi;
    }

    public static final boolean c(View view) {
        Drawable background = view.getBackground();
        return (background == null || ((float) background.getAlpha()) == 0.0f) ? false : true;
    }
}
