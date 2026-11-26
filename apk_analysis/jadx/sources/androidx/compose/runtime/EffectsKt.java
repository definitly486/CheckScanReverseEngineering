package androidx.compose.runtime;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import defpackage.ah;
import defpackage.bm3;
import defpackage.e02;
import defpackage.gx2;
import defpackage.j59;
import defpackage.ll3;
import defpackage.mb4;
import defpackage.nb4;
import defpackage.nl3;
import defpackage.o22;
import defpackage.qb4;
import defpackage.ul2;
import defpackage.y22;
import defpackage.yq1;
import defpackage.z22;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class EffectsKt {
    private static final String DisposableEffectNoParamError = "DisposableEffect must provide one or more 'key' parameters that define the identity of the DisposableEffect and determine when its previous effect should be disposed and a new effect started for the new key.";
    private static final DisposableEffectScope InternalDisposableEffectScope = new DisposableEffectScope();
    private static final String LaunchedEffectNoParamError = "LaunchedEffect must provide one or more 'key' parameters that define the identity of the LaunchedEffect and determine when its previous effect coroutine should be cancelled and a new effect launched for the new key.";

    public static final void DisposableEffect(Object[] objArr, nl3<? super DisposableEffectScope, ? extends DisposableEffectResult> nl3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1307627122, i, -1, "androidx.compose.runtime.DisposableEffect (Effects.kt:266)");
        }
        boolean zChanged = false;
        for (Object obj : Arrays.copyOf(objArr, objArr.length)) {
            zChanged |= composer.changed(obj);
        }
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            composer.updateRememberedValue(new DisposableEffectImpl(nl3Var));
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    public static final void LaunchedEffect(Object[] objArr, bm3<? super y22, ? super e02<? super j59>, ? extends Object> bm3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-139560008, i, -1, "androidx.compose.runtime.LaunchedEffect (Effects.kt:410)");
        }
        o22 applyCoroutineContext = composer.getApplyCoroutineContext();
        boolean zChanged = false;
        for (Object obj : Arrays.copyOf(objArr, objArr.length)) {
            zChanged |= composer.changed(obj);
        }
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            composer.updateRememberedValue(new LaunchedEffectImpl(applyCoroutineContext, bm3Var));
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 LaunchedEffect$lambda$0(bm3 bm3Var, int i, Composer composer, int i2) {
        LaunchedEffect(bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    public static final void SideEffect(ll3<j59> ll3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1288466761, i, -1, "androidx.compose.runtime.SideEffect (Effects.kt:53)");
        }
        composer.recordSideEffect(ll3Var);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    public static final y22 createCompositionCoroutineScope(o22 o22Var, Composer composer) {
        if (o22Var.get(mb4.a.b) == null) {
            return new RememberedCoroutineScope(composer.getApplyCoroutineContext(), o22Var);
        }
        nb4 nb4VarA = qb4.a();
        nb4VarA.T(new yq1(new IllegalArgumentException("CoroutineContext supplied to rememberCoroutineScope may not include a parent job"), false));
        return z22.a(nb4VarA);
    }

    public static final y22 rememberCoroutineScope(ll3<? extends o22> ll3Var, Composer composer, int i, int i2) {
        if ((i2 & 1) != 0) {
            ll3Var = new ll3<gx2>() { // from class: androidx.compose.runtime.EffectsKt.rememberCoroutineScope.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // defpackage.ll3
                public final gx2 invoke() {
                    return gx2.b;
                }
            };
        }
        Object objRememberedValue = composer.rememberedValue();
        if (objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = createCompositionCoroutineScope(ll3Var.invoke(), composer);
            composer.updateRememberedValue(objRememberedValue);
        }
        return (y22) objRememberedValue;
    }

    public static final void DisposableEffect(Object obj, nl3<? super DisposableEffectScope, ? extends DisposableEffectResult> nl3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1371986847, i, -1, "androidx.compose.runtime.DisposableEffect (Effects.kt:155)");
        }
        boolean zChanged = composer.changed(obj);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new DisposableEffectImpl(nl3Var);
            composer.updateRememberedValue(objRememberedValue);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    public static final void LaunchedEffect(Object obj, bm3<? super y22, ? super e02<? super j59>, ? extends Object> bm3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1179185413, i, -1, "androidx.compose.runtime.LaunchedEffect (Effects.kt:344)");
        }
        o22 applyCoroutineContext = composer.getApplyCoroutineContext();
        boolean zChanged = composer.changed(obj);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new LaunchedEffectImpl(applyCoroutineContext, bm3Var);
            composer.updateRememberedValue(objRememberedValue);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    public static final void DisposableEffect(Object obj, Object obj2, nl3<? super DisposableEffectScope, ? extends DisposableEffectResult> nl3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1429097729, i, -1, "androidx.compose.runtime.DisposableEffect (Effects.kt:192)");
        }
        boolean zChanged = composer.changed(obj) | composer.changed(obj2);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new DisposableEffectImpl(nl3Var);
            composer.updateRememberedValue(objRememberedValue);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    public static final void LaunchedEffect(Object obj, Object obj2, bm3<? super y22, ? super e02<? super j59>, ? extends Object> bm3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(590241125, i, -1, "androidx.compose.runtime.LaunchedEffect (Effects.kt:363)");
        }
        o22 applyCoroutineContext = composer.getApplyCoroutineContext();
        boolean zChanged = composer.changed(obj) | composer.changed(obj2);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new LaunchedEffectImpl(applyCoroutineContext, bm3Var);
            composer.updateRememberedValue(objRememberedValue);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    public static final void DisposableEffect(Object obj, Object obj2, Object obj3, nl3<? super DisposableEffectScope, ? extends DisposableEffectResult> nl3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1239538271, i, -1, "androidx.compose.runtime.DisposableEffect (Effects.kt:230)");
        }
        boolean zChanged = composer.changed(obj) | composer.changed(obj2) | composer.changed(obj3);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new DisposableEffectImpl(nl3Var);
            composer.updateRememberedValue(objRememberedValue);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    public static final void LaunchedEffect(Object obj, Object obj2, Object obj3, bm3<? super y22, ? super e02<? super j59>, ? extends Object> bm3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-54093371, i, -1, "androidx.compose.runtime.LaunchedEffect (Effects.kt:387)");
        }
        o22 applyCoroutineContext = composer.getApplyCoroutineContext();
        boolean zChanged = composer.changed(obj) | composer.changed(obj2) | composer.changed(obj3);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new LaunchedEffectImpl(applyCoroutineContext, bm3Var);
            composer.updateRememberedValue(objRememberedValue);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    @ul2
    public static final void DisposableEffect(nl3<? super DisposableEffectScope, ? extends DisposableEffectResult> nl3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-904483903, i, -1, "androidx.compose.runtime.DisposableEffect (Effects.kt:122)");
        }
        throw new IllegalStateException(DisposableEffectNoParamError);
    }

    @ul2
    public static final void LaunchedEffect(final bm3<? super y22, ? super e02<? super j59>, ? extends Object> bm3Var, Composer composer, final int i) {
        Composer composerStartRestartGroup = composer.startRestartGroup(-805415771);
        int i2 = i & 1;
        if (composerStartRestartGroup.shouldExecute(i2 != 0, i2)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-805415771, i, -1, "androidx.compose.runtime.LaunchedEffect (Effects.kt:328)");
            }
            ah.f(LaunchedEffectNoParamError);
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: lv2
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return EffectsKt.LaunchedEffect$lambda$0(bm3Var, i, (Composer) obj, iIntValue);
                    }
                });
            }
        }
    }
}
