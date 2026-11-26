package androidx.compose.runtime.tooling;

import androidx.compose.runtime.RecomposeScope;

/* JADX INFO: loaded from: classes2.dex */
public interface CompositionObserver {
    void onBeginComposition(ObservableComposition observableComposition);

    void onEndComposition(ObservableComposition observableComposition);

    void onReadInScope(RecomposeScope recomposeScope, Object obj);

    void onScopeDisposed(RecomposeScope recomposeScope);

    void onScopeEnter(RecomposeScope recomposeScope);

    void onScopeExit(RecomposeScope recomposeScope);

    void onScopeInvalidated(RecomposeScope recomposeScope, Object obj);
}
