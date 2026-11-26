package androidx.compose.runtime.composer;

import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RememberObserverHolder;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public interface RememberManager {
    void deactivating(ComposeNodeLifecycleCallback composeNodeLifecycleCallback);

    void endResumingScope(RecomposeScopeImpl recomposeScopeImpl);

    void forgetting(RememberObserverHolder rememberObserverHolder);

    void releasing(ComposeNodeLifecycleCallback composeNodeLifecycleCallback);

    void rememberPausingScope(RecomposeScopeImpl recomposeScopeImpl);

    void remembering(RememberObserverHolder rememberObserverHolder);

    void sideEffect(ll3<j59> ll3Var);

    void startResumingScope(RecomposeScopeImpl recomposeScopeImpl);
}
