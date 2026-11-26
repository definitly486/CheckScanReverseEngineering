package androidx.compose.material3;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.view.Window;
import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.compose.material3.internal.PredictiveBack;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.DialogWindowProvider;
import androidx.media3.common.PlaybackException;
import defpackage.bm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
final class ModalWideNavigationRailDialogLayout extends AbstractComposeView implements DialogWindowProvider {
    private Object backCallback;
    private final MutableState content$delegate;
    private final LayoutDirection layoutDirection;
    private final ll3<j59> onDismissRequest;
    private final nl3<Float, j59> onPredictiveBack;
    private final ll3<j59> onPredictiveBackCancelled;
    private final RailPredictiveBackState predictiveBackState;
    private boolean shouldCreateCompositionOnAttachedToWindow;
    private final boolean shouldDismissOnBackPress;
    private final Window window;

    public static final class Api33Impl {
        public static final Api33Impl INSTANCE = new Api33Impl();

        private Api33Impl() {
        }

        public static final OnBackInvokedCallback createBackCallback(final ll3<j59> ll3Var) {
            return new OnBackInvokedCallback() { // from class: androidx.compose.material3.p2
                public final void onBackInvoked() {
                    ll3Var.invoke();
                }
            };
        }

        public static final void maybeRegisterBackCallback(View view, Object obj) {
            OnBackInvokedDispatcher onBackInvokedDispatcherFindOnBackInvokedDispatcher;
            if (!(obj instanceof OnBackInvokedCallback) || (onBackInvokedDispatcherFindOnBackInvokedDispatcher = view.findOnBackInvokedDispatcher()) == null) {
                return;
            }
            onBackInvokedDispatcherFindOnBackInvokedDispatcher.registerOnBackInvokedCallback(PlaybackException.CUSTOM_ERROR_CODE_BASE, (OnBackInvokedCallback) obj);
        }

        public static final void maybeUnregisterBackCallback(View view, Object obj) {
            OnBackInvokedDispatcher onBackInvokedDispatcherFindOnBackInvokedDispatcher;
            if (!(obj instanceof OnBackInvokedCallback) || (onBackInvokedDispatcherFindOnBackInvokedDispatcher = view.findOnBackInvokedDispatcher()) == null) {
                return;
            }
            onBackInvokedDispatcherFindOnBackInvokedDispatcher.unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj);
        }
    }

    public static final class Api34Impl {
        public static final Api34Impl INSTANCE = new Api34Impl();

        private Api34Impl() {
        }

        public static final OnBackAnimationCallback createBackCallback(final ll3<j59> ll3Var, final nl3<? super Float, j59> nl3Var, final ll3<j59> ll3Var2, final RailPredictiveBackState railPredictiveBackState, final LayoutDirection layoutDirection) {
            return new OnBackAnimationCallback() { // from class: androidx.compose.material3.ModalWideNavigationRailDialogLayout$Api34Impl$createBackCallback$1
                public void onBackCancelled() {
                    ll3Var2.invoke();
                }

                public void onBackInvoked() {
                    ll3Var.invoke();
                }

                public void onBackProgressed(BackEvent backEvent) {
                    railPredictiveBackState.update(backEvent.getSwipeEdge() == 0, layoutDirection == LayoutDirection.Rtl);
                    nl3Var.invoke(Float.valueOf(PredictiveBack.INSTANCE.transform$material3(backEvent.getProgress())));
                }

                public void onBackStarted(BackEvent backEvent) {
                    railPredictiveBackState.update(backEvent.getSwipeEdge() == 0, layoutDirection == LayoutDirection.Rtl);
                    nl3Var.invoke(Float.valueOf(PredictiveBack.INSTANCE.transform$material3(backEvent.getProgress())));
                }
            };
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ModalWideNavigationRailDialogLayout(Context context, Window window, boolean z, ll3<j59> ll3Var, nl3<? super Float, j59> nl3Var, ll3<j59> ll3Var2, RailPredictiveBackState railPredictiveBackState, LayoutDirection layoutDirection) {
        super(context, null, 0, 6, null);
        this.window = window;
        this.shouldDismissOnBackPress = z;
        this.onDismissRequest = ll3Var;
        this.onPredictiveBack = nl3Var;
        this.onPredictiveBackCancelled = ll3Var2;
        this.predictiveBackState = railPredictiveBackState;
        this.layoutDirection = layoutDirection;
        this.content$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(ComposableSingletons$WideNavigationRail_androidKt.INSTANCE.getLambda$2011757776$material3(), null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Content$lambda$0(ModalWideNavigationRailDialogLayout modalWideNavigationRailDialogLayout, int i, Composer composer, int i2) {
        modalWideNavigationRailDialogLayout.Content(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    private final bm3<Composer, Integer, j59> getContent() {
        return (bm3) this.content$delegate.getValue();
    }

    private final void maybeRegisterBackCallback() {
        int i;
        if (!this.shouldDismissOnBackPress || (i = Build.VERSION.SDK_INT) < 33) {
            return;
        }
        Object objCreateBackCallback = this.backCallback;
        if (objCreateBackCallback == null) {
            ll3<j59> ll3Var = this.onDismissRequest;
            objCreateBackCallback = i >= 34 ? Api34Impl.createBackCallback(ll3Var, this.onPredictiveBack, this.onPredictiveBackCancelled, this.predictiveBackState, this.layoutDirection) : Api33Impl.createBackCallback(ll3Var);
            this.backCallback = objCreateBackCallback;
        }
        Api33Impl.maybeRegisterBackCallback(this, objCreateBackCallback);
    }

    private final void maybeUnregisterBackCallback() {
        if (Build.VERSION.SDK_INT >= 33) {
            Api33Impl.maybeUnregisterBackCallback(this, this.backCallback);
        }
        this.backCallback = null;
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public void Content(Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-640057148);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(this) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 3) != 2, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-640057148, i2, -1, "androidx.compose.material3.ModalWideNavigationRailDialogLayout.Content (WideNavigationRail.android.kt:202)");
            }
            getContent().invoke(composerStartRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: androidx.compose.material3.o2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ModalWideNavigationRailDialogLayout.Content$lambda$0(this.b, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public boolean getShouldCreateCompositionOnAttachedToWindow() {
        return this.shouldCreateCompositionOnAttachedToWindow;
    }

    public final boolean getShouldDismissOnBackPress() {
        return this.shouldDismissOnBackPress;
    }

    @Override // androidx.compose.ui.window.DialogWindowProvider
    public Window getWindow() {
        return this.window;
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        maybeRegisterBackCallback();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        maybeUnregisterBackCallback();
    }

    public final void setContent(CompositionContext compositionContext, bm3<? super Composer, ? super Integer, j59> bm3Var) {
        setParentCompositionContext(compositionContext);
        setContent(bm3Var);
        this.shouldCreateCompositionOnAttachedToWindow = true;
        createComposition();
    }

    private final void setContent(bm3<? super Composer, ? super Integer, j59> bm3Var) {
        this.content$delegate.setValue(bm3Var);
    }
}
