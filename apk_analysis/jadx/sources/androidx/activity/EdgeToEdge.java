package androidx.activity;

import android.content.res.Resources;
import android.graphics.Color;
import android.os.Build;
import android.view.View;
import android.view.Window;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class EdgeToEdge {
    private static EdgeToEdgeImpl Impl;
    private static final int DefaultLightScrim = Color.argb(230, 255, 255, 255);
    private static final int DefaultDarkScrim = Color.argb(128, 27, 27, 27);

    public static final void enable(ComponentActivity componentActivity, SystemBarStyle systemBarStyle, SystemBarStyle systemBarStyle2) {
        componentActivity.getClass();
        systemBarStyle.getClass();
        systemBarStyle2.getClass();
        View decorView = componentActivity.getWindow().getDecorView();
        decorView.getClass();
        nl3<Resources, Boolean> detectDarkMode$activity = systemBarStyle.getDetectDarkMode$activity();
        Resources resources = decorView.getResources();
        resources.getClass();
        boolean zBooleanValue = detectDarkMode$activity.invoke(resources).booleanValue();
        nl3<Resources, Boolean> detectDarkMode$activity2 = systemBarStyle2.getDetectDarkMode$activity();
        Resources resources2 = decorView.getResources();
        resources2.getClass();
        boolean zBooleanValue2 = detectDarkMode$activity2.invoke(resources2).booleanValue();
        EdgeToEdgeImpl edgeToEdgeApi28 = Impl;
        if (edgeToEdgeApi28 == null) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 35) {
                edgeToEdgeApi28 = new EdgeToEdgeApi35();
            } else if (i >= 30) {
                edgeToEdgeApi28 = new EdgeToEdgeApi30();
            } else if (i >= 29) {
                edgeToEdgeApi28 = new EdgeToEdgeApi29();
            } else {
                edgeToEdgeApi28 = i >= 28 ? new EdgeToEdgeApi28() : new EdgeToEdgeApi26();
            }
            Impl = edgeToEdgeApi28;
        }
        EdgeToEdgeImpl edgeToEdgeImpl = edgeToEdgeApi28;
        Window window = componentActivity.getWindow();
        window.getClass();
        edgeToEdgeImpl.setUp(systemBarStyle, systemBarStyle2, window, decorView, zBooleanValue, zBooleanValue2);
        Window window2 = componentActivity.getWindow();
        window2.getClass();
        edgeToEdgeImpl.adjustLayoutInDisplayCutoutMode(window2);
    }

    public static /* synthetic */ void enable$default(ComponentActivity componentActivity, SystemBarStyle systemBarStyle, SystemBarStyle systemBarStyle2, int i, Object obj) {
        if ((i & 1) != 0) {
            systemBarStyle = SystemBarStyle.Companion.auto$default(SystemBarStyle.Companion, 0, 0, null, 4, null);
        }
        if ((i & 2) != 0) {
            systemBarStyle2 = SystemBarStyle.Companion.auto$default(SystemBarStyle.Companion, DefaultLightScrim, DefaultDarkScrim, null, 4, null);
        }
        enable(componentActivity, systemBarStyle, systemBarStyle2);
    }

    public static final int getDefaultDarkScrim() {
        return DefaultDarkScrim;
    }

    public static /* synthetic */ void getDefaultDarkScrim$annotations() {
    }

    public static final int getDefaultLightScrim() {
        return DefaultLightScrim;
    }

    public static /* synthetic */ void getDefaultLightScrim$annotations() {
    }

    public static final void enable(ComponentActivity componentActivity, SystemBarStyle systemBarStyle) {
        componentActivity.getClass();
        systemBarStyle.getClass();
        enable$default(componentActivity, systemBarStyle, null, 2, null);
    }

    public static final void enable(ComponentActivity componentActivity) {
        componentActivity.getClass();
        enable$default(componentActivity, null, null, 3, null);
    }
}
