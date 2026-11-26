package defpackage;

import android.view.View;
import android.view.Window;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import com.warefly.checkscan.profile.presentation.main.dialogs.enter.view.ProfilePromocodeEnterBottomSheet;

/* JADX INFO: loaded from: classes.dex */
public final class zm2 implements DefaultLifecycleObserver {
    public final /* synthetic */ Window b;
    public final /* synthetic */ ProfilePromocodeEnterBottomSheet c;
    public final /* synthetic */ ProfilePromocodeEnterBottomSheet.b d;

    public static final class a implements View.OnAttachStateChangeListener {
        public final /* synthetic */ View b;
        public final /* synthetic */ ProfilePromocodeEnterBottomSheet c;
        public final /* synthetic */ ProfilePromocodeEnterBottomSheet.b d;

        public a(View view, ProfilePromocodeEnterBottomSheet profilePromocodeEnterBottomSheet, ProfilePromocodeEnterBottomSheet.b bVar) {
            this.b = view;
            this.c = profilePromocodeEnterBottomSheet;
            this.d = bVar;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
            this.b.removeOnAttachStateChangeListener(this);
            an2.a(this.c, this.d);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
        }
    }

    public zm2(Window window, ProfilePromocodeEnterBottomSheet profilePromocodeEnterBottomSheet, ProfilePromocodeEnterBottomSheet.b bVar) {
        this.b = window;
        this.c = profilePromocodeEnterBottomSheet;
        this.d = bVar;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onPause(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
        Window window = this.b;
        WindowCompat.setDecorFitsSystemWindows(window, true);
        ViewCompat.setOnApplyWindowInsetsListener(window.getDecorView(), null);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onResume(LifecycleOwner lifecycleOwner) {
        View decorView;
        lifecycleOwner.getClass();
        Window window = this.b;
        WindowCompat.setDecorFitsSystemWindows(window, false);
        if (window == null || (decorView = window.getDecorView()) == null) {
            return;
        }
        boolean zIsAttachedToWindow = decorView.isAttachedToWindow();
        ProfilePromocodeEnterBottomSheet profilePromocodeEnterBottomSheet = this.c;
        ProfilePromocodeEnterBottomSheet.b bVar = this.d;
        if (zIsAttachedToWindow) {
            an2.a(profilePromocodeEnterBottomSheet, bVar);
        } else {
            decorView.addOnAttachStateChangeListener(new a(decorView, profilePromocodeEnterBottomSheet, bVar));
        }
    }
}
