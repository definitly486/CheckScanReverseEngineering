package androidx.paging;

import androidx.paging.CombinedLoadStates;
import androidx.paging.MutableCombinedLoadStateCollection;
import androidx.paging.internal.CopyOnWriteArrayList;
import defpackage.aa4;
import defpackage.bf3;
import defpackage.j59;
import defpackage.nl3;
import defpackage.og5;
import defpackage.px;
import defpackage.xg5;
import defpackage.y68;
import defpackage.z68;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public final class MutableCombinedLoadStateCollection {
    private final xg5<CombinedLoadStates> _stateFlow;
    private final CopyOnWriteArrayList<nl3<CombinedLoadStates, j59>> listeners = new CopyOnWriteArrayList<>();
    private final y68<CombinedLoadStates> stateFlow;

    public MutableCombinedLoadStateCollection() {
        z68 z68VarA = px.a(null);
        this._stateFlow = z68VarA;
        this.stateFlow = bf3.b(z68VarA);
    }

    private final void dispatchNewState(nl3<? super CombinedLoadStates, CombinedLoadStates> nl3Var) {
        CombinedLoadStates value;
        CombinedLoadStates combinedLoadStatesInvoke;
        xg5<CombinedLoadStates> xg5Var = this._stateFlow;
        do {
            value = xg5Var.getValue();
            CombinedLoadStates combinedLoadStates = value;
            combinedLoadStatesInvoke = nl3Var.invoke(combinedLoadStates);
            if (aa4.e(combinedLoadStates, combinedLoadStatesInvoke)) {
                return;
            }
        } while (!xg5Var.a(value, combinedLoadStatesInvoke));
        if (combinedLoadStatesInvoke != null) {
            Iterator<nl3<CombinedLoadStates, j59>> it = this.listeners.iterator();
            while (it.hasNext()) {
                it.next().invoke(combinedLoadStatesInvoke);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CombinedLoadStates set$lambda$0(LoadStates loadStates, LoadStates loadStates2, CombinedLoadStates combinedLoadStates) {
        return MutableCombinedLoadStateCollectionKt.computeNewState(combinedLoadStates, loadStates, loadStates2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CombinedLoadStates set$lambda$1(boolean z, LoadType loadType, LoadState loadState, CombinedLoadStates combinedLoadStates) {
        LoadStates idle;
        if (combinedLoadStates == null || (idle = combinedLoadStates.getSource()) == null) {
            idle = LoadStates.Companion.getIDLE();
        }
        LoadStates mediator = combinedLoadStates != null ? combinedLoadStates.getMediator() : null;
        if (z) {
            mediator = LoadStates.Companion.getIDLE().modifyState$paging_common(loadType, loadState);
        } else {
            idle = idle.modifyState$paging_common(loadType, loadState);
        }
        return MutableCombinedLoadStateCollectionKt.computeNewState(combinedLoadStates, idle, mediator);
    }

    public final void addListener(nl3<? super CombinedLoadStates, j59> nl3Var) {
        nl3Var.getClass();
        this.listeners.add(nl3Var);
        CombinedLoadStates value = this._stateFlow.getValue();
        if (value != null) {
            nl3Var.invoke(value);
        }
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0015  */
    public final LoadState get(LoadType loadType, boolean z) {
        LoadStates source;
        loadType.getClass();
        CombinedLoadStates value = this._stateFlow.getValue();
        if (z) {
            if (value != null) {
                source = value.getMediator();
            } else {
                source = null;
            }
        } else if (value != null) {
            source = value.getSource();
        } else {
            source = null;
        }
        if (source != null) {
            return source.get$paging_common(loadType);
        }
        return null;
    }

    public final y68<CombinedLoadStates> getStateFlow() {
        return this.stateFlow;
    }

    public final void removeListener(nl3<? super CombinedLoadStates, j59> nl3Var) {
        nl3Var.getClass();
        this.listeners.remove(nl3Var);
    }

    public final void set(final LoadType loadType, final boolean z, final LoadState loadState) {
        loadType.getClass();
        loadState.getClass();
        dispatchNewState(new nl3() { // from class: ng5
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return MutableCombinedLoadStateCollection.set$lambda$1(z, loadType, loadState, (CombinedLoadStates) obj);
            }
        });
    }

    public final void set(LoadStates loadStates, LoadStates loadStates2) {
        loadStates.getClass();
        dispatchNewState(new og5(0, loadStates, loadStates2));
    }
}
