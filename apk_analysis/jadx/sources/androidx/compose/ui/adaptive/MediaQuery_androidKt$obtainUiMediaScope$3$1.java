package androidx.compose.ui.adaptive;

import android.view.View;
import android.view.ViewTreeObserver;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.core.view.ViewCompat;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class MediaQuery_androidKt$obtainUiMediaScope$3$1 extends gh4 implements nl3<DisposableEffectScope, DisposableEffectResult> {
    final /* synthetic */ UiMediaScopeImpl $scope;
    final /* synthetic */ View $view;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaQuery_androidKt$obtainUiMediaScope$3$1(View view, UiMediaScopeImpl uiMediaScopeImpl) {
        super(1);
        this.$view = view;
        this.$scope = uiMediaScopeImpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(UiMediaScopeImpl uiMediaScopeImpl, View view) {
        uiMediaScopeImpl.setImeVisible(MediaQuery_androidKt.isImeVisible(ViewCompat.getRootWindowInsets(view)));
    }

    @Override // defpackage.nl3
    public final DisposableEffectResult invoke(DisposableEffectScope disposableEffectScope) {
        final UiMediaScopeImpl uiMediaScopeImpl = this.$scope;
        final View view = this.$view;
        final ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.compose.ui.adaptive.a
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                MediaQuery_androidKt$obtainUiMediaScope$3$1.invoke$lambda$0(uiMediaScopeImpl, view);
            }
        };
        view.getViewTreeObserver().addOnGlobalLayoutListener(onGlobalLayoutListener);
        final View view2 = this.$view;
        return new DisposableEffectResult() { // from class: androidx.compose.ui.adaptive.MediaQuery_androidKt$obtainUiMediaScope$3$1$invoke$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                view2.getViewTreeObserver().removeOnGlobalLayoutListener(onGlobalLayoutListener);
            }
        };
    }
}
