package yads;

import android.app.Activity;
import android.app.Dialog;
import android.view.Window;
import android.view.WindowInsetsController;

/* JADX INFO: loaded from: classes2.dex */
public abstract class fo0 {
    public static final void a(Dialog dialog) {
        Activity activityA;
        Window window;
        Window window2;
        WindowInsetsController insetsController;
        WindowInsetsController insetsController2;
        if (!za.a(30) || (activityA = s1.a()) == null || (window = activityA.getWindow()) == null || (window2 = dialog.getWindow()) == null || (insetsController = window.getInsetsController()) == null || (insetsController2 = window2.getInsetsController()) == null) {
            return;
        }
        insetsController2.setSystemBarsAppearance(insetsController.getSystemBarsAppearance(), 24);
    }
}
