package androidx.compose.ui;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalAccessorScope;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class MediaQueryKt {
    private static final ProvidableCompositionLocal<UiMediaScope> LocalUiMediaScope = CompositionLocalKt.staticCompositionLocalOf(MediaQueryKt$LocalUiMediaScope$1.INSTANCE);

    public static final State<Boolean> derivedMediaQuery(nl3<? super UiMediaScope, Boolean> nl3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-287752256, i, -1, "androidx.compose.ui.derivedMediaQuery (MediaQuery.kt:251)");
        }
        UiMediaScope uiMediaScope = (UiMediaScope) composer.consume(LocalUiMediaScope);
        State stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(nl3Var, composer, i & 14);
        boolean zChanged = composer.changed(uiMediaScope);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = SnapshotStateKt.derivedStateOf(new MediaQueryKt$derivedMediaQuery$1$1(uiMediaScope, stateRememberUpdatedState));
            composer.updateRememberedValue(objRememberedValue);
        }
        State<Boolean> state = (State) objRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return state;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final nl3<UiMediaScope, Boolean> derivedMediaQuery$lambda$0(State<? extends nl3<? super UiMediaScope, Boolean>> state) {
        return (nl3) state.getValue();
    }

    public static final ProvidableCompositionLocal<UiMediaScope> getLocalUiMediaScope() {
        return LocalUiMediaScope;
    }

    public static /* synthetic */ void getLocalUiMediaScope$annotations() {
    }

    public static final boolean mediaQuery(nl3<? super UiMediaScope, Boolean> nl3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1936917258, i, -1, "androidx.compose.ui.mediaQuery (MediaQuery.kt:232)");
        }
        boolean zBooleanValue = nl3Var.invoke(composer.consume(LocalUiMediaScope)).booleanValue();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return zBooleanValue;
    }

    public static final boolean mediaQuery(CompositionLocalAccessorScope compositionLocalAccessorScope, nl3<? super UiMediaScope, Boolean> nl3Var) {
        return nl3Var.invoke(compositionLocalAccessorScope.getCurrentValue(getLocalUiMediaScope())).booleanValue();
    }

    public static final boolean mediaQuery(CompositionLocalConsumerModifierNode compositionLocalConsumerModifierNode, nl3<? super UiMediaScope, Boolean> nl3Var) {
        return nl3Var.invoke(CompositionLocalConsumerModifierNodeKt.currentValueOf(compositionLocalConsumerModifierNode, getLocalUiMediaScope())).booleanValue();
    }
}
