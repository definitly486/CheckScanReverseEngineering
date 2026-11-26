package androidx.compose.runtime;

import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.tooling.ComposeStackTrace;
import androidx.compose.runtime.tooling.ComposeStackTraceFrame;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import defpackage.bm3;
import defpackage.j59;
import defpackage.ll3;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class InternalComposer implements Composer {
    public static final int $stable = 0;

    public abstract void changesApplied$runtime();

    /* JADX INFO: renamed from: composeContent--ZbOJvo$runtime */
    public abstract void mo5319composeContentZbOJvo$runtime(MutableScatterMap<Object, Object> mutableScatterMap, bm3<? super Composer, ? super Integer, j59> bm3Var, ShouldPauseCallback shouldPauseCallback);

    public abstract void deactivate$runtime();

    public abstract void dispose$runtime();

    public abstract void endReuseFromRoot$runtime();

    public abstract boolean forceRecomposeScopes$runtime();

    public abstract boolean getAreChildrenComposing$runtime();

    public abstract RecomposeScopeImpl getCurrentRecomposeScope$runtime();

    public abstract Changes getDeferredChanges$runtime();

    public abstract CompositionErrorContextImpl getErrorContext$runtime();

    public abstract boolean getHasPendingChanges$runtime();

    public abstract boolean getSourceMarkersEnabled$runtime();

    public abstract boolean isComposing$runtime();

    public abstract int parentKey$runtime();

    public abstract List<ComposeStackTraceFrame> parentStackTrace$runtime();

    public abstract void prepareCompose$runtime(ll3<j59> ll3Var);

    /* JADX INFO: renamed from: recompose-aFTiNEg$runtime */
    public abstract boolean mo5320recomposeaFTiNEg$runtime(MutableScatterMap<Object, Object> mutableScatterMap, ShouldPauseCallback shouldPauseCallback);

    public abstract ComposeStackTrace stackTraceForValue$runtime(Object obj);

    public abstract int stacksSize$runtime();

    public abstract void startReuseFromRoot$runtime();

    public abstract boolean tryImminentInvalidation$runtime(RecomposeScopeImpl recomposeScopeImpl, Object obj);

    /* JADX INFO: renamed from: updateComposerInvalidations-RY85e9Y$runtime */
    public abstract void mo5321updateComposerInvalidationsRY85e9Y$runtime(MutableScatterMap<Object, Object> mutableScatterMap);

    public abstract void verifyConsistent$runtime();
}
