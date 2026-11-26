package androidx.compose.runtime.internal;

import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.RememberObserverHolder;
import androidx.compose.runtime.collection.MutableVector;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class PausedCompositionRemembers implements RememberObserver {
    public static final int $stable = 8;
    private final Set<RememberObserver> abandoning;
    private final MutableVector<RememberObserverHolder> pausedRemembers = new MutableVector<>(new RememberObserverHolder[16], 0);

    public PausedCompositionRemembers(Set<RememberObserver> set) {
        this.abandoning = set;
    }

    public final MutableVector<RememberObserverHolder> getPausedRemembers() {
        return this.pausedRemembers;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onAbandoned() {
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onForgotten() {
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onRemembered() {
        MutableVector<RememberObserverHolder> mutableVector = this.pausedRemembers;
        RememberObserverHolder[] rememberObserverHolderArr = mutableVector.content;
        int size = mutableVector.getSize();
        for (int i = 0; i < size; i++) {
            RememberObserver wrapped = rememberObserverHolderArr[i].getWrapped();
            this.abandoning.remove(wrapped);
            wrapped.onRemembered();
        }
    }
}
