package androidx.paging;

import androidx.paging.internal.SynchronizedLock;
import defpackage.nl3;
import defpackage.px;
import defpackage.xg5;
import defpackage.y68;

/* JADX INFO: loaded from: classes3.dex */
final class AccessorStateHolder<Key, Value> {
    private final SynchronizedLock lock = new SynchronizedLock();
    private final xg5<LoadStates> _loadStates = px.a(LoadStates.Companion.getIDLE());
    private final AccessorState<Key, Value> internalState = new AccessorState<>();

    public final y68<LoadStates> getLoadStates() {
        return this._loadStates;
    }

    public final <R> R use(nl3<? super AccessorState<Key, Value>, ? extends R> nl3Var) {
        R rInvoke;
        nl3Var.getClass();
        synchronized (this.lock) {
            rInvoke = nl3Var.invoke(this.internalState);
            this._loadStates.setValue(this.internalState.computeLoadStates());
        }
        return rInvoke;
    }
}
