package androidx.compose.material3;

import android.graphics.Outline;
import android.os.Build;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.Window;
import androidx.activity.ComponentDialog;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcherKt;
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
import defpackage.bm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.me0;
import defpackage.nl3;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
final class ModalWideNavigationRailDialogWrapper extends ComponentDialog implements ViewRootForInspector {
    private final View composeView;
    private final ModalWideNavigationRailDialogLayout dialogLayout;
    private final float maxSupportedElevation;
    private ll3<j59> onDismissRequest;
    private ModalWideNavigationRailProperties properties;

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

    public ModalWideNavigationRailDialogWrapper(ll3<j59> ll3Var, ModalWideNavigationRailProperties modalWideNavigationRailProperties, View view, LayoutDirection layoutDirection, Density density, UUID uuid, nl3<? super Float, j59> nl3Var, ll3<j59> ll3Var2, RailPredictiveBackState railPredictiveBackState, boolean z) {
        super(new ContextThemeWrapper(view.getContext(), R.style.EdgeToEdgeFloatingDialogWindowTheme), 0, 2, null);
        this.onDismissRequest = ll3Var;
        this.properties = modalWideNavigationRailProperties;
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
        ModalWideNavigationRailDialogLayout modalWideNavigationRailDialogLayout = new ModalWideNavigationRailDialogLayout(getContext(), window, this.properties.getShouldDismissOnBackPress(), this.onDismissRequest, nl3Var, ll3Var2, railPredictiveBackState, layoutDirection);
        modalWideNavigationRailDialogLayout.setTag(androidx.compose.ui.R.id.compose_view_saveable_id_tag, "Dialog:" + uuid);
        modalWideNavigationRailDialogLayout.setClipChildren(false);
        modalWideNavigationRailDialogLayout.setElevation(density.mo1434toPx0680j_4(fM9042constructorimpl));
        modalWideNavigationRailDialogLayout.setOutlineProvider(new ViewOutlineProvider() { // from class: androidx.compose.material3.ModalWideNavigationRailDialogWrapper$1$2
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view2, Outline outline) {
                outline.setRect(0, 0, view2.getWidth(), view2.getHeight());
                outline.setAlpha(0.0f);
            }
        });
        this.dialogLayout = modalWideNavigationRailDialogLayout;
        setContentView(modalWideNavigationRailDialogLayout);
        ViewTreeLifecycleOwner.set(modalWideNavigationRailDialogLayout, ViewTreeLifecycleOwner.get(view));
        ViewTreeViewModelStoreOwner.set(modalWideNavigationRailDialogLayout, ViewTreeViewModelStoreOwner.get(view));
        ViewTreeSavedStateRegistryOwner.set(modalWideNavigationRailDialogLayout, ViewTreeSavedStateRegistryOwner.get(view));
        updateParameters(this.onDismissRequest, this.properties, layoutDirection);
        WindowInsetsControllerCompat insetsController = WindowCompat.getInsetsController(window, window.getDecorView());
        boolean z2 = !z;
        insetsController.setAppearanceLightStatusBars(z2);
        insetsController.setAppearanceLightNavigationBars(z2);
        OnBackPressedDispatcherKt.addCallback$default(getOnBackPressedDispatcher(), this, false, new nl3() { // from class: androidx.compose.material3.q2
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return ModalWideNavigationRailDialogWrapper._init_$lambda$3(this.b, (OnBackPressedCallback) obj);
            }
        }, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _init_$lambda$3(ModalWideNavigationRailDialogWrapper modalWideNavigationRailDialogWrapper, OnBackPressedCallback onBackPressedCallback) {
        if (modalWideNavigationRailDialogWrapper.properties.getShouldDismissOnBackPress()) {
            modalWideNavigationRailDialogWrapper.onDismissRequest.invoke();
        }
        return j59.a;
    }

    private final void setLayoutDirection(LayoutDirection layoutDirection) {
        ModalWideNavigationRailDialogLayout modalWideNavigationRailDialogLayout = this.dialogLayout;
        int i = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
        int i2 = 1;
        if (i == 1) {
            i2 = 0;
        } else if (i != 2) {
            me0.e();
            return;
        }
        modalWideNavigationRailDialogLayout.setLayoutDirection(i2);
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

    public final void updateParameters(ll3<j59> ll3Var, ModalWideNavigationRailProperties modalWideNavigationRailProperties, LayoutDirection layoutDirection) {
        this.onDismissRequest = ll3Var;
        this.properties = modalWideNavigationRailProperties;
        setSecurePolicy(modalWideNavigationRailProperties.getSecurePolicy());
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
}
