package defpackage;

import android.os.Build;
import android.view.View;
import android.view.Window;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;

/* JADX INFO: loaded from: classes.dex */
public final class mk3 implements DefaultLifecycleObserver {
    public int b;
    public final /* synthetic */ Window c;
    public final /* synthetic */ BaseFragment d;
    public final /* synthetic */ bm3<Boolean, Insets, j59> e;

    public mk3(Window window, BaseFragment baseFragment, bm3 bm3Var) {
        this.c = window;
        this.d = baseFragment;
        this.e = bm3Var;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onResume(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
        int i = Build.VERSION.SDK_INT;
        Window window = this.c;
        if (i < 30) {
            this.b = window.getAttributes().softInputMode;
            window.setSoftInputMode(16);
            return;
        }
        WindowCompat.setDecorFitsSystemWindows(window, false);
        View view = this.d.getView();
        if (view != null) {
            ViewCompat.setOnApplyWindowInsetsListener(view, new cf2(new o16(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()), this.e));
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onStop(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
        int i = Build.VERSION.SDK_INT;
        Window window = this.c;
        if (i < 30) {
            window.setSoftInputMode(this.b);
            return;
        }
        WindowCompat.setDecorFitsSystemWindows(window, true);
        View view = this.d.getView();
        if (view != null) {
            ViewCompat.setOnApplyWindowInsetsListener(view, null);
        }
    }
}
