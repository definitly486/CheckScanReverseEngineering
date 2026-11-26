package androidx.compose.material3;

import android.graphics.Outline;
import android.os.Build;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.Window;
import androidx.activity.BackEventCompat;
import androidx.activity.ComponentDialog;
import androidx.activity.OnBackPressedCallback;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.material3.internal.BasicEdgeToEdgeDialog_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.compose.ui.platform.ViewRootForInspector;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.SecureFlagPolicy;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.lifecycle.ViewTreeViewModelStoreOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import defpackage.ah;
import defpackage.av0;
import defpackage.bm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.me0;
import defpackage.y22;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
final class ModalBottomSheetDialogWrapper extends ComponentDialog implements ViewRootForInspector {
    private final View composeView;
    private long contentColor;
    private final ModalBottomSheetDialogLayout dialogLayout;
    private final float maxSupportedElevation;
    private ll3<j59> onDismissRequest;
    private ModalBottomSheetProperties properties;

    public static final class PredictiveBackOnBackPressedCallback extends OnBackPressedCallback {
        private ll3<j59> onDismissRequest;
        private final Animatable<Float, AnimationVector1D> predictiveBackProgress;
        private final y22 scope;

        public PredictiveBackOnBackPressedCallback(boolean z, y22 y22Var, Animatable<Float, AnimationVector1D> animatable, ll3<j59> ll3Var) {
            super(z);
            this.scope = y22Var;
            this.predictiveBackProgress = animatable;
            this.onDismissRequest = ll3Var;
        }

        public final ll3<j59> getOnDismissRequest() {
            return this.onDismissRequest;
        }

        public final Animatable<Float, AnimationVector1D> getPredictiveBackProgress() {
            return this.predictiveBackProgress;
        }

        public final y22 getScope() {
            return this.scope;
        }

        @Override // androidx.activity.OnBackPressedCallback
        public void handleOnBackCancelled() {
            av0.c(this.scope, null, null, new ModalBottomSheetDialogWrapper$PredictiveBackOnBackPressedCallback$handleOnBackCancelled$1(this, null), 3);
        }

        @Override // androidx.activity.OnBackPressedCallback
        public void handleOnBackPressed() {
            this.onDismissRequest.invoke();
        }

        @Override // androidx.activity.OnBackPressedCallback
        public void handleOnBackProgressed(BackEventCompat backEventCompat) {
            av0.c(this.scope, null, null, new ModalBottomSheetDialogWrapper$PredictiveBackOnBackPressedCallback$handleOnBackProgressed$1(this, backEventCompat, null), 3);
        }

        @Override // androidx.activity.OnBackPressedCallback
        public void handleOnBackStarted(BackEventCompat backEventCompat) {
            av0.c(this.scope, null, null, new ModalBottomSheetDialogWrapper$PredictiveBackOnBackPressedCallback$handleOnBackStarted$1(this, backEventCompat, null), 3);
        }

        public final void setOnDismissRequest(ll3<j59> ll3Var) {
            this.onDismissRequest = ll3Var;
        }
    }

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            try {
                iArr[LayoutDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private ModalBottomSheetDialogWrapper(ll3<j59> ll3Var, ModalBottomSheetProperties modalBottomSheetProperties, long j, View view, LayoutDirection layoutDirection, Density density, UUID uuid, Animatable<Float, AnimationVector1D> animatable, y22 y22Var) {
        super(new ContextThemeWrapper(view.getContext(), R.style.EdgeToEdgeFloatingDialogWindowTheme), 0, 2, null);
        this.onDismissRequest = ll3Var;
        this.properties = modalBottomSheetProperties;
        this.contentColor = j;
        this.composeView = view;
        float fM9042constructorimpl = Dp.m9042constructorimpl(8.0f);
        this.maxSupportedElevation = fM9042constructorimpl;
        Window window = getWindow();
        if (window == null) {
            ah.f("Dialog has no window");
            throw null;
        }
        window.requestFeature(1);
        window.setBackgroundDrawableResource(android.R.color.transparent);
        WindowCompat.setDecorFitsSystemWindows(window, false);
        ModalBottomSheetDialogLayout modalBottomSheetDialogLayout = new ModalBottomSheetDialogLayout(getContext(), window);
        modalBottomSheetDialogLayout.setTag(androidx.compose.ui.R.id.compose_view_saveable_id_tag, "Dialog:" + uuid);
        modalBottomSheetDialogLayout.setClipChildren(false);
        modalBottomSheetDialogLayout.setElevation(density.mo1434toPx0680j_4(fM9042constructorimpl));
        modalBottomSheetDialogLayout.setOutlineProvider(new ViewOutlineProvider() { // from class: androidx.compose.material3.ModalBottomSheetDialogWrapper$1$2
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view2, Outline outline) {
                outline.setRect(0, 0, view2.getWidth(), view2.getHeight());
                outline.setAlpha(0.0f);
            }
        });
        this.dialogLayout = modalBottomSheetDialogLayout;
        setContentView(modalBottomSheetDialogLayout);
        ViewTreeLifecycleOwner.set(modalBottomSheetDialogLayout, ViewTreeLifecycleOwner.get(view));
        ViewTreeViewModelStoreOwner.set(modalBottomSheetDialogLayout, ViewTreeViewModelStoreOwner.get(view));
        ViewTreeSavedStateRegistryOwner.set(modalBottomSheetDialogLayout, ViewTreeSavedStateRegistryOwner.get(view));
        m3622updateParameters9LQNqLg(this.onDismissRequest, this.properties, this.contentColor, layoutDirection);
        WindowInsetsControllerCompat insetsController = WindowCompat.getInsetsController(window, window.getDecorView());
        Boolean boolIsAppearanceLightStatusBars$material3 = this.properties.isAppearanceLightStatusBars$material3();
        insetsController.setAppearanceLightStatusBars(boolIsAppearanceLightStatusBars$material3 != null ? boolIsAppearanceLightStatusBars$material3.booleanValue() : ModalBottomSheet_androidKt.m3630isDark8_81llA(this.contentColor));
        Boolean boolIsAppearanceLightNavigationBars$material3 = this.properties.isAppearanceLightNavigationBars$material3();
        insetsController.setAppearanceLightNavigationBars(boolIsAppearanceLightNavigationBars$material3 != null ? boolIsAppearanceLightNavigationBars$material3.booleanValue() : ModalBottomSheet_androidKt.m3630isDark8_81llA(this.contentColor));
        getOnBackPressedDispatcher().addCallback(this, new PredictiveBackOnBackPressedCallback(this.properties.getShouldDismissOnBackPress(), y22Var, animatable, new ll3() { // from class: androidx.compose.material3.c2
            @Override // defpackage.ll3
            public final Object invoke() {
                return ModalBottomSheetDialogWrapper._init_$lambda$3(this.b);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _init_$lambda$3(ModalBottomSheetDialogWrapper modalBottomSheetDialogWrapper) {
        modalBottomSheetDialogWrapper.onDismissRequest.invoke();
        return j59.a;
    }

    private final void setLayoutDirection(LayoutDirection layoutDirection) {
        ModalBottomSheetDialogLayout modalBottomSheetDialogLayout = this.dialogLayout;
        int i = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
        int i2 = 1;
        if (i == 1) {
            i2 = 0;
        } else if (i != 2) {
            me0.e();
            return;
        }
        modalBottomSheetDialogLayout.setLayoutDirection(i2);
    }

    private final void setSecurePolicy(SecureFlagPolicy secureFlagPolicy) {
        boolean zShouldApplySecureFlag = BasicEdgeToEdgeDialog_androidKt.shouldApplySecureFlag(secureFlagPolicy, ModalBottomSheet_androidKt.isFlagSecureEnabled(this.composeView));
        Window window = getWindow();
        window.getClass();
        window.setFlags(zShouldApplySecureFlag ? 8192 : -8193, 8192);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
    }

    public final void disposeComposition() {
        this.dialogLayout.disposeComposition();
    }

    @Override // androidx.compose.ui.platform.ViewRootForInspector
    public AbstractComposeView getSubCompositionView() {
        return this.dialogLayout;
    }

    @Override // android.app.Dialog
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        if (zOnTouchEvent) {
            this.onDismissRequest.invoke();
        }
        return zOnTouchEvent;
    }

    public final void setContent(CompositionContext compositionContext, bm3<? super Composer, ? super Integer, j59> bm3Var) {
        this.dialogLayout.setContent(compositionContext, bm3Var);
    }

    /* JADX INFO: renamed from: updateParameters-9LQNqLg, reason: not valid java name */
    public final void m3622updateParameters9LQNqLg(ll3<j59> ll3Var, ModalBottomSheetProperties modalBottomSheetProperties, long j, LayoutDirection layoutDirection) {
        this.onDismissRequest = ll3Var;
        this.properties = modalBottomSheetProperties;
        this.contentColor = j;
        setSecurePolicy(modalBottomSheetProperties.getSecurePolicy());
        setLayoutDirection(layoutDirection);
        Window window = getWindow();
        if (window != null) {
            window.setLayout(-1, -1);
        }
        Window window2 = getWindow();
        if (window2 != null) {
            window2.setSoftInputMode(Build.VERSION.SDK_INT >= 30 ? 48 : 16);
        }
    }

    public /* synthetic */ ModalBottomSheetDialogWrapper(ll3 ll3Var, ModalBottomSheetProperties modalBottomSheetProperties, long j, View view, LayoutDirection layoutDirection, Density density, UUID uuid, Animatable animatable, y22 y22Var, jh2 jh2Var) {
        this(ll3Var, modalBottomSheetProperties, j, view, layoutDirection, density, uuid, animatable, y22Var);
    }
}
