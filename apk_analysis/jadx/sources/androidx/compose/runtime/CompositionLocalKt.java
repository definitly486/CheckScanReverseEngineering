package androidx.compose.runtime;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import defpackage.bm3;
import defpackage.h31;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.nu1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class CompositionLocalKt {
    public static final void CompositionLocalProvider(final CompositionLocalContext compositionLocalContext, final bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, final int i) {
        Composer composerStartRestartGroup = composer.startRestartGroup(-1162003659);
        int i2 = (i & 6) == 0 ? (composerStartRestartGroup.changed(compositionLocalContext) ? 4 : 2) | i : i;
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var) ? 32 : 16;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 19) != 18, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1162003659, i2, -1, "androidx.compose.runtime.CompositionLocalProvider (CompositionLocal.kt:446)");
            }
            PersistentCompositionLocalMap compositionLocals$runtime = compositionLocalContext.getCompositionLocals$runtime();
            ArrayList arrayList = new ArrayList(compositionLocals$runtime.size());
            for (Map.Entry<CompositionLocal<Object>, ValueHolder<Object>> entry : compositionLocals$runtime.entrySet()) {
                arrayList.add(entry.getValue().toProvided(entry.getKey()));
            }
            ProvidedValue[] providedValueArr = (ProvidedValue[]) arrayList.toArray(new ProvidedValue[0]);
            CompositionLocalProvider((ProvidedValue<?>[]) Arrays.copyOf(providedValueArr, providedValueArr.length), bm3Var, composerStartRestartGroup, i2 & 112);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mu1
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return CompositionLocalKt.CompositionLocalProvider$lambda$3(compositionLocalContext, bm3Var, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CompositionLocalProvider$lambda$0(ProvidedValue[] providedValueArr, bm3 bm3Var, int i, Composer composer, int i2) {
        CompositionLocalProvider((ProvidedValue<?>[]) providedValueArr, (bm3<? super Composer, ? super Integer, j59>) bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CompositionLocalProvider$lambda$1(ProvidedValue providedValue, bm3 bm3Var, int i, Composer composer, int i2) {
        CompositionLocalProvider((ProvidedValue<?>) providedValue, (bm3<? super Composer, ? super Integer, j59>) bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CompositionLocalProvider$lambda$3(CompositionLocalContext compositionLocalContext, bm3 bm3Var, int i, Composer composer, int i2) {
        CompositionLocalProvider(compositionLocalContext, (bm3<? super Composer, ? super Integer, j59>) bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    public static final <T> ProvidableCompositionLocal<T> compositionLocalOf(SnapshotMutationPolicy<T> snapshotMutationPolicy, ll3<? extends T> ll3Var) {
        return new DynamicProvidableCompositionLocal(snapshotMutationPolicy, ll3Var);
    }

    public static /* synthetic */ ProvidableCompositionLocal compositionLocalOf$default(SnapshotMutationPolicy snapshotMutationPolicy, ll3 ll3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            snapshotMutationPolicy = SnapshotStateKt.structuralEqualityPolicy();
        }
        return compositionLocalOf(snapshotMutationPolicy, ll3Var);
    }

    public static final <T> ProvidableCompositionLocal<T> compositionLocalWithComputedDefaultOf(nl3<? super CompositionLocalAccessorScope, ? extends T> nl3Var) {
        return new ComputedProvidableCompositionLocal(nl3Var);
    }

    public static final <T> ProvidableCompositionLocal<T> compositionLocalWithHostDefaultOf(HostDefaultKey<T> hostDefaultKey) {
        return compositionLocalWithComputedDefaultOf(new nu1(hostDefaultKey, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object compositionLocalWithHostDefaultOf$lambda$0(HostDefaultKey hostDefaultKey, CompositionLocalAccessorScope compositionLocalAccessorScope) {
        return ((HostDefaultProvider) compositionLocalAccessorScope.getCurrentValue(HostDefaultProviderKt.getLocalHostDefaultProvider())).getHostDefault(hostDefaultKey);
    }

    public static final <T> ProvidableCompositionLocal<T> staticCompositionLocalOf(ll3<? extends T> ll3Var) {
        return new StaticProvidableCompositionLocal(ll3Var);
    }

    public static final <T> T withCompositionLocal(ProvidedValue<?> providedValue, bm3<? super Composer, ? super Integer, ? extends T> bm3Var, Composer composer, int i) {
        composer.startProvider(providedValue);
        T tInvoke = bm3Var.invoke(composer, Integer.valueOf((i >> 3) & 14));
        composer.endProvider();
        return tInvoke;
    }

    public static final <T> T withCompositionLocals(ProvidedValue<?>[] providedValueArr, bm3<? super Composer, ? super Integer, ? extends T> bm3Var, Composer composer, int i) {
        composer.startProviders(providedValueArr);
        T tInvoke = bm3Var.invoke(composer, Integer.valueOf((i >> 3) & 14));
        composer.endProvider();
        return tInvoke;
    }

    public static final void CompositionLocalProvider(final ProvidedValue<?> providedValue, final bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, final int i) {
        Composer composerStartRestartGroup = composer.startRestartGroup(-149765515);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-149765515, i, -1, "androidx.compose.runtime.CompositionLocalProvider (CompositionLocal.kt:425)");
        }
        composerStartRestartGroup.startProvider(providedValue);
        bm3Var.invoke(composerStartRestartGroup, Integer.valueOf((i >> 3) & 14));
        composerStartRestartGroup.endProvider();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: lu1
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return CompositionLocalKt.CompositionLocalProvider$lambda$1(providedValue, bm3Var, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    public static final void CompositionLocalProvider(ProvidedValue<?>[] providedValueArr, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i) {
        Composer composerStartRestartGroup = composer.startRestartGroup(415205898);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(415205898, i, -1, "androidx.compose.runtime.CompositionLocalProvider (CompositionLocal.kt:405)");
        }
        composerStartRestartGroup.startProviders(providedValueArr);
        bm3Var.invoke(composerStartRestartGroup, Integer.valueOf((i >> 3) & 14));
        composerStartRestartGroup.endProviders();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new h31(providedValueArr, bm3Var, i, 1));
        }
    }
}
