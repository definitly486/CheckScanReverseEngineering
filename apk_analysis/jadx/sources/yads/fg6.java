package yads;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

/* JADX INFO: loaded from: classes3.dex */
public abstract class fg6 {
    public static final void a(View view) {
        ViewParent parent = view.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup == null) {
            return;
        }
        if (defpackage.aa4.e(Looper.myLooper(), Looper.getMainLooper())) {
            viewGroup.removeView(view);
        } else {
            new Handler(Looper.getMainLooper()).post(new defpackage.pg6(3, viewGroup, view));
        }
    }

    public static final void a(ViewGroup viewGroup, View view) {
        viewGroup.removeView(view);
    }
}
