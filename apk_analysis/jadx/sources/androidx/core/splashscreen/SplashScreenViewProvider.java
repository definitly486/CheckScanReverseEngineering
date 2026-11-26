package androidx.core.splashscreen;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.window.SplashScreenView;
import defpackage.aa4;
import defpackage.cl4;
import defpackage.fh8;
import defpackage.ll3;
import java.time.Duration;
import java.time.Instant;

/* JADX INFO: loaded from: classes2.dex */
public final class SplashScreenViewProvider {
    private final ViewImpl impl;

    public static class ViewImpl {
        private final cl4 _splashScreenView$delegate;
        private final Activity activity;

        public ViewImpl(Activity activity) {
            activity.getClass();
            this.activity = activity;
            this._splashScreenView$delegate = new fh8(new ll3() { // from class: androidx.core.splashscreen.d
                @Override // defpackage.ll3
                public final Object invoke() {
                    return SplashScreenViewProvider.ViewImpl._splashScreenView_delegate$lambda$0(this.b);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final ViewGroup _splashScreenView_delegate$lambda$0(ViewImpl viewImpl) {
            View viewInflate = View.inflate(viewImpl.activity, R.layout.splash_screen_view, null);
            viewInflate.getClass();
            return (ViewGroup) viewInflate;
        }

        private final ViewGroup get_splashScreenView() {
            return (ViewGroup) this._splashScreenView$delegate.getValue();
        }

        public void createSplashScreenView() {
            View rootView = ((ViewGroup) this.activity.findViewById(android.R.id.content)).getRootView();
            ViewGroup viewGroup = rootView instanceof ViewGroup ? (ViewGroup) rootView : null;
            if (viewGroup != null) {
                viewGroup.addView(get_splashScreenView());
            }
        }

        public final Activity getActivity() {
            return this.activity;
        }

        public long getIconAnimationDurationMillis() {
            return 0L;
        }

        public long getIconAnimationStartMillis() {
            return 0L;
        }

        public View getIconView() {
            View viewFindViewById = getSplashScreenView().findViewById(R.id.splashscreen_icon_view);
            viewFindViewById.getClass();
            return viewFindViewById;
        }

        public ViewGroup getSplashScreenView() {
            return get_splashScreenView();
        }

        public void remove() {
            ViewParent parent = getSplashScreenView().getParent();
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(getSplashScreenView());
            }
        }
    }

    public SplashScreenViewProvider(Activity activity) {
        activity.getClass();
        ViewImpl viewImpl31 = Build.VERSION.SDK_INT >= 31 ? new ViewImpl31(activity) : new ViewImpl(activity);
        viewImpl31.createSplashScreenView();
        this.impl = viewImpl31;
    }

    public final long getIconAnimationDurationMillis() {
        return this.impl.getIconAnimationDurationMillis();
    }

    public final long getIconAnimationStartMillis() {
        return this.impl.getIconAnimationStartMillis();
    }

    public final View getIconView() {
        return this.impl.getIconView();
    }

    public final View getView() {
        return this.impl.getSplashScreenView();
    }

    public final void remove() {
        this.impl.remove();
    }

    public static final class ViewImpl31 extends ViewImpl {
        public SplashScreenView platformView;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewImpl31(Activity activity) {
            super(activity);
            activity.getClass();
        }

        @Override // androidx.core.splashscreen.SplashScreenViewProvider.ViewImpl
        public void createSplashScreenView() {
        }

        @Override // androidx.core.splashscreen.SplashScreenViewProvider.ViewImpl
        public long getIconAnimationDurationMillis() {
            Duration iconAnimationDuration = getPlatformView().getIconAnimationDuration();
            if (iconAnimationDuration != null) {
                return iconAnimationDuration.toMillis();
            }
            return 0L;
        }

        @Override // androidx.core.splashscreen.SplashScreenViewProvider.ViewImpl
        public long getIconAnimationStartMillis() {
            Instant iconAnimationStart = getPlatformView().getIconAnimationStart();
            if (iconAnimationStart != null) {
                return iconAnimationStart.toEpochMilli();
            }
            return 0L;
        }

        @Override // androidx.core.splashscreen.SplashScreenViewProvider.ViewImpl
        public View getIconView() {
            if (getPlatformView().getIconView() == null) {
                return new View(getActivity());
            }
            View iconView = getPlatformView().getIconView();
            iconView.getClass();
            return iconView;
        }

        public final SplashScreenView getPlatformView() {
            SplashScreenView splashScreenView = this.platformView;
            if (splashScreenView != null) {
                return splashScreenView;
            }
            aa4.j("platformView");
            throw null;
        }

        @Override // androidx.core.splashscreen.SplashScreenViewProvider.ViewImpl
        public void remove() {
            getPlatformView().remove();
            if (Build.VERSION.SDK_INT < 33) {
                Resources.Theme theme = getActivity().getTheme();
                theme.getClass();
                View decorView = getActivity().getWindow().getDecorView();
                decorView.getClass();
                ThemeUtils.Api31.applyThemesSystemBarAppearance$default(theme, decorView, null, 4, null);
            }
        }

        public final void setPlatformView(SplashScreenView splashScreenView) {
            splashScreenView.getClass();
            this.platformView = splashScreenView;
        }

        @Override // androidx.core.splashscreen.SplashScreenViewProvider.ViewImpl
        public SplashScreenView getSplashScreenView() {
            return getPlatformView();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SplashScreenViewProvider(SplashScreenView splashScreenView, Activity activity) {
        this(activity);
        splashScreenView.getClass();
        activity.getClass();
        ViewImpl viewImpl = this.impl;
        viewImpl.getClass();
        ((ViewImpl31) viewImpl).setPlatformView(splashScreenView);
    }
}
