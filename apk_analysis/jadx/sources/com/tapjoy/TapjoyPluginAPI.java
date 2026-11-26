package com.tapjoy;

import android.app.Activity;
import android.util.DisplayMetrics;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import androidx.core.view.GravityCompat;
import com.tapjoy.TapjoyPluginAPI;
import defpackage.jg;
import defpackage.w52;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
public class TapjoyPluginAPI {
    public static TJOfferwallDiscoverView a = null;
    public static PopupWindow b = null;
    public static float c = -1.0f;
    public static float d = -1.0f;
    public static String e = "native";

    public static PopupWindow CreatePopupWindow(Activity activity, ViewGroup viewGroup, int i, int i2) {
        PopupWindow popupWindow = new PopupWindow(viewGroup, i, i2);
        popupWindow.getContentView().setSystemUiVisibility(activity.getWindow().getAttributes().flags);
        try {
            Method declaredMethod = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", Integer.TYPE);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(popupWindow, 1002);
            return popupWindow;
        } catch (IllegalAccessException e2) {
            jg.f("Unable to set popUpWindow window layout type: ", e2.getLocalizedMessage());
            return popupWindow;
        } catch (NoSuchMethodException e3) {
            jg.f("Unable to set popUpWindow window layout type: ", e3.getLocalizedMessage());
            return popupWindow;
        } catch (InvocationTargetException e4) {
            jg.f("Unable to set popUpWindow window layout type: ", e4.getLocalizedMessage());
            return popupWindow;
        }
    }

    public static void DestroyOWDiscover() {
        TapjoyUtil.runOnMainThread(new w52(1));
    }

    public static void RequestOWDiscover(final Activity activity, final String str, final float f, final float f2, final float f3, final float f4, final TJOfferwallDiscoverListener tJOfferwallDiscoverListener) {
        TapjoyUtil.runOnMainThread(new Runnable() { // from class: nk8
            @Override // java.lang.Runnable
            public final void run() {
                TapjoyPluginAPI.a(activity, tJOfferwallDiscoverListener, str, f3, f4, f, f2);
            }
        });
    }

    public static void ShowOWDiscover(final Activity activity) {
        final DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        TapjoyUtil.runOnMainThread(new Runnable() { // from class: ok8
            @Override // java.lang.Runnable
            public final void run() {
                TapjoyPluginAPI.a(activity, displayMetrics);
            }
        });
    }

    public static /* synthetic */ void a(Activity activity, DisplayMetrics displayMetrics) {
        PopupWindow popupWindow = b;
        if (popupWindow == null || popupWindow.isShowing() || activity.isFinishing()) {
            return;
        }
        float f = d;
        if (f == -1.0f) {
            f = 0.0f;
        }
        float height = c;
        if (height == -1.0f) {
            height = displayMetrics.heightPixels - b.getHeight();
        }
        if (activity.isDestroyed()) {
            return;
        }
        b.showAtLocation(activity.getWindow().getDecorView().getRootView(), c != -1.0f ? 8388659 : GravityCompat.END, (int) f, (int) height);
        c = -1.0f;
        d = -1.0f;
    }

    public static String getPlugin() {
        return e;
    }

    public static void setPlugin(String str) {
        e = str;
    }

    public static void RequestOWDiscover(Activity activity, String str, float f, TJOfferwallDiscoverListener tJOfferwallDiscoverListener) {
        RequestOWDiscover(activity, str, -1.0f, -1.0f, -1.0f, f, tJOfferwallDiscoverListener);
    }

    public static /* synthetic */ void a(Activity activity, TJOfferwallDiscoverListener tJOfferwallDiscoverListener, String str, float f, float f2, float f3, float f4) {
        DestroyOWDiscover();
        TJOfferwallDiscoverView tJOfferwallDiscoverView = new TJOfferwallDiscoverView(activity);
        a = tJOfferwallDiscoverView;
        tJOfferwallDiscoverView.setListener(tJOfferwallDiscoverListener);
        a.requestContent(activity, str);
        float density = TJDeviceUtils.INSTANCE.getDensity(activity);
        activity.getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
        TJOfferwallDiscoverView tJOfferwallDiscoverView2 = a;
        if (f != -1.0f) {
            f *= density;
        }
        PopupWindow popupWindowCreatePopupWindow = CreatePopupWindow(activity, tJOfferwallDiscoverView2, (int) f, (int) (f2 * density));
        b = popupWindowCreatePopupWindow;
        popupWindowCreatePopupWindow.setInputMethodMode(1);
        if (f3 != -1.0f) {
            f3 *= density;
        }
        d = f3;
        if (f4 != -1.0f) {
            f4 *= density;
        }
        c = f4;
    }

    public static /* synthetic */ void a() {
        PopupWindow popupWindow = b;
        if (popupWindow == null || !popupWindow.isAttachedInDecor()) {
            return;
        }
        b.dismiss();
        b = null;
        TJOfferwallDiscoverView tJOfferwallDiscoverView = a;
        if (tJOfferwallDiscoverView != null) {
            tJOfferwallDiscoverView.clearContent();
            a = null;
        }
    }
}
