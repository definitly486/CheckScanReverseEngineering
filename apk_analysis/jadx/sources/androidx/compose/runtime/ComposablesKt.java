package androidx.compose.runtime;

import defpackage.aa4;
import defpackage.ah;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.oo5;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposablesKt {
    public static final <T, E extends Applier<?>> void ComposeNode(ll3<? extends T> ll3Var, nl3<? super Updater<T>, j59> nl3Var, Composer composer, int i) {
        composer.getApplier();
        aa4.i();
        throw null;
    }

    public static final <T, E extends Applier<?>> void ReusableComposeNode(ll3<? extends T> ll3Var, nl3<? super Updater<T>, j59> nl3Var, Composer composer, int i) {
        composer.getApplier();
        aa4.i();
        throw null;
    }

    public static final void ReusableContent(Object obj, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i) {
        composer.startReusableGroup(ComposerKt.reuseKey, obj);
        bm3Var.invoke(composer, Integer.valueOf((i >> 3) & 14));
        composer.endReusableGroup();
    }

    public static final void ReusableContentHost(boolean z, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i) {
        composer.startReusableGroup(ComposerKt.reuseKey, Boolean.valueOf(z));
        boolean zChanged = composer.changed(z);
        if (z) {
            bm3Var.invoke(composer, Integer.valueOf((i >> 3) & 14));
        } else {
            composer.deactivateToEndGroup(zChanged);
        }
        composer.endReusableGroup();
    }

    public static final Composer getCurrentComposer(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-554250212, i, -1, "androidx.compose.runtime.<get-currentComposer> (Composables.kt:191)");
        }
        throw new oo5("Implemented as an intrinsic");
    }

    public static final int getCurrentCompositeKeyHash(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(524444915, i, -1, "androidx.compose.runtime.<get-currentCompositeKeyHash> (Composables.kt:252)");
        }
        int compoundKeyHash = composer.getCompoundKeyHash();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return compoundKeyHash;
    }

    @ul2
    public static /* synthetic */ void getCurrentCompositeKeyHash$annotations(Composer composer, int i) {
    }

    public static final long getCurrentCompositeKeyHashCode(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-168259424, i, -1, "androidx.compose.runtime.<get-currentCompositeKeyHashCode> (Composables.kt:268)");
        }
        long compositeKeyHashCode = composer.getCompositeKeyHashCode();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return compositeKeyHashCode;
    }

    public static final CompositionContext getCurrentCompositionContext(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1645225943, i, -1, "androidx.compose.runtime.<get-currentCompositionContext> (Composables.kt:206)");
        }
        ControlledComposition composition = composer.getComposition();
        composition.getClass();
        CompositionContext parent = ((CompositionImpl) composition).getParent();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return parent;
    }

    public static /* synthetic */ void getCurrentCompositionContext$annotations(Composer composer, int i) {
    }

    public static final CompositionLocalContext getCurrentCompositionLocalContext(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-43352356, i, -1, "androidx.compose.runtime.<get-currentCompositionLocalContext> (Composables.kt:231)");
        }
        CompositionLocalContext compositionLocalContext = new CompositionLocalContext(composer.buildContext().getCompositionLocalScope$runtime());
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return compositionLocalContext;
    }

    public static /* synthetic */ void getCurrentCompositionLocalContext$annotations(Composer composer, int i) {
    }

    public static final RecomposeScope getCurrentRecomposeScope(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(394957799, i, -1, "androidx.compose.runtime.<get-currentRecomposeScope> (Composables.kt:216)");
        }
        RecomposeScope recomposeScope = composer.getRecomposeScope();
        if (recomposeScope == null) {
            ah.f("no recompose scope found");
            return null;
        }
        composer.recordUsed(recomposeScope);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return recomposeScope;
    }

    public static final void invalidApplier() {
        throw new IllegalStateException("Invalid applier");
    }

    public static final <T> T key(Object[] objArr, bm3<? super Composer, ? super Integer, ? extends T> bm3Var, Composer composer, int i) {
        return bm3Var.invoke(composer, Integer.valueOf((i >> 3) & 14));
    }

    public static final <T> T remember(Object[] objArr, ll3<? extends T> ll3Var, Composer composer, int i) {
        boolean zChanged = false;
        for (Object obj : objArr) {
            zChanged |= composer.changed(obj);
        }
        T t = (T) composer.rememberedValue();
        if (!zChanged && t != Composer.Companion.getEmpty()) {
            return t;
        }
        T tInvoke = ll3Var.invoke();
        composer.updateRememberedValue(tInvoke);
        return tInvoke;
    }

    public static final CompositionContext rememberCompositionContext(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1165786124, i, -1, "androidx.compose.runtime.rememberCompositionContext (Composables.kt:516)");
        }
        CompositionContext compositionContextBuildContext = composer.buildContext();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return compositionContextBuildContext;
    }

    public static final <T, E extends Applier<?>> void ComposeNode(ll3<? extends T> ll3Var, nl3<? super Updater<T>, j59> nl3Var, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i) {
        composer.getApplier();
        aa4.i();
        throw null;
    }

    public static final <T, E extends Applier<?>> void ReusableComposeNode(ll3<? extends T> ll3Var, nl3<? super Updater<T>, j59> nl3Var, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i) {
        composer.getApplier();
        aa4.i();
        throw null;
    }

    public static final <T, E extends Applier<?>> void ComposeNode(ll3<? extends T> ll3Var, nl3<? super Updater<T>, j59> nl3Var, dm3<? super SkippableUpdater<T>, ? super Composer, ? super Integer, j59> dm3Var, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i) {
        composer.getApplier();
        aa4.i();
        throw null;
    }

    public static final <T, E extends Applier<?>> void ReusableComposeNode(ll3<? extends T> ll3Var, nl3<? super Updater<T>, j59> nl3Var, dm3<? super SkippableUpdater<T>, ? super Composer, ? super Integer, j59> dm3Var, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i) {
        composer.getApplier();
        aa4.i();
        throw null;
    }

    public static final <T> T remember(Object obj, Object obj2, ll3<? extends T> ll3Var, Composer composer, int i) {
        boolean zChanged = composer.changed(obj) | composer.changed(obj2);
        T t = (T) composer.rememberedValue();
        if (!zChanged && t != Composer.Companion.getEmpty()) {
            return t;
        }
        T tInvoke = ll3Var.invoke();
        composer.updateRememberedValue(tInvoke);
        return tInvoke;
    }

    public static final <T> T remember(Object obj, Object obj2, Object obj3, ll3<? extends T> ll3Var, Composer composer, int i) {
        boolean zChanged = composer.changed(obj) | composer.changed(obj2) | composer.changed(obj3);
        T t = (T) composer.rememberedValue();
        if (!zChanged && t != Composer.Companion.getEmpty()) {
            return t;
        }
        T tInvoke = ll3Var.invoke();
        composer.updateRememberedValue(tInvoke);
        return tInvoke;
    }

    public static final <T> T remember(Object obj, ll3<? extends T> ll3Var, Composer composer, int i) {
        boolean zChanged = composer.changed(obj);
        T t = (T) composer.rememberedValue();
        if (!zChanged && t != Composer.Companion.getEmpty()) {
            return t;
        }
        T tInvoke = ll3Var.invoke();
        composer.updateRememberedValue(tInvoke);
        return tInvoke;
    }

    public static final <T> T remember(ll3<? extends T> ll3Var, Composer composer, int i) {
        T t = (T) composer.rememberedValue();
        if (t != Composer.Companion.getEmpty()) {
            return t;
        }
        T tInvoke = ll3Var.invoke();
        composer.updateRememberedValue(tInvoke);
        return tInvoke;
    }
}
