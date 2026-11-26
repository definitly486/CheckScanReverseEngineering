package androidx.datastore.core;

import defpackage.aa4;
import defpackage.hd3;
import defpackage.me0;
import defpackage.px;
import defpackage.xg5;

/* JADX INFO: loaded from: classes2.dex */
public final class DataStoreInMemoryCache<T> {
    private final xg5<State<T>> cachedValue;

    public DataStoreInMemoryCache() {
        UnInitialized unInitialized = UnInitialized.INSTANCE;
        unInitialized.getClass();
        this.cachedValue = px.a(unInitialized);
    }

    private static /* synthetic */ void getCachedValue$annotations() {
    }

    public final State<T> getCurrentState() {
        return this.cachedValue.getValue();
    }

    public final hd3<State<T>> getFlow() {
        return this.cachedValue;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0029  */
    public final State<T> tryUpdate(State<T> state) {
        State<T> value;
        State<T> state2;
        state.getClass();
        xg5<State<T>> xg5Var = this.cachedValue;
        do {
            value = xg5Var.getValue();
            state2 = value;
            if (state2 instanceof ReadException ? true : aa4.e(state2, UnInitialized.INSTANCE)) {
                state2 = state;
            } else if (state2 instanceof Data) {
                if (state.getVersion() > state2.getVersion()) {
                    state2 = state;
                }
            } else if (!(state2 instanceof Final)) {
                me0.e();
                return null;
            }
        } while (!xg5Var.a(value, state2));
        return state2;
    }
}
