package androidx.paging;

import defpackage.aa4;
import defpackage.dm3;
import defpackage.j59;
import defpackage.jh2;

/* JADX INFO: loaded from: classes3.dex */
public final class CombinedLoadStates {
    private final LoadState append;
    private final boolean hasError;
    private final boolean isIdle;
    private final LoadStates mediator;
    private final LoadState prepend;
    private final LoadState refresh;
    private final LoadStates source;

    /* JADX WARN: Code duplicated, block: B:16:0x0040  */
    /* JADX WARN: Code duplicated, block: B:9:0x002d  */
    public CombinedLoadStates(LoadState loadState, LoadState loadState2, LoadState loadState3, LoadStates loadStates, LoadStates loadStates2) {
        boolean z;
        boolean z2;
        loadState.getClass();
        loadState2.getClass();
        loadState3.getClass();
        loadStates.getClass();
        this.refresh = loadState;
        this.prepend = loadState2;
        this.append = loadState3;
        this.source = loadStates;
        this.mediator = loadStates2;
        if (loadStates.isIdle()) {
            if (loadStates2 != null ? loadStates2.isIdle() : true) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        this.isIdle = z;
        if (!loadStates.hasError()) {
            z2 = loadStates2 != null ? loadStates2.hasError() : false;
        }
        this.hasError = z2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || CombinedLoadStates.class != obj.getClass()) {
            return false;
        }
        CombinedLoadStates combinedLoadStates = (CombinedLoadStates) obj;
        return aa4.e(this.refresh, combinedLoadStates.refresh) && aa4.e(this.prepend, combinedLoadStates.prepend) && aa4.e(this.append, combinedLoadStates.append) && aa4.e(this.source, combinedLoadStates.source) && aa4.e(this.mediator, combinedLoadStates.mediator);
    }

    public final void forEach$paging_common(dm3<? super LoadType, ? super Boolean, ? super LoadState, j59> dm3Var) {
        dm3Var.getClass();
        LoadStates loadStates = this.source;
        LoadType loadType = LoadType.REFRESH;
        LoadState refresh = loadStates.getRefresh();
        Boolean bool = Boolean.FALSE;
        dm3Var.invoke(loadType, bool, refresh);
        LoadType loadType2 = LoadType.PREPEND;
        dm3Var.invoke(loadType2, bool, loadStates.getPrepend());
        LoadType loadType3 = LoadType.APPEND;
        dm3Var.invoke(loadType3, bool, loadStates.getAppend());
        LoadStates loadStates2 = this.mediator;
        if (loadStates2 != null) {
            LoadState refresh2 = loadStates2.getRefresh();
            Boolean bool2 = Boolean.TRUE;
            dm3Var.invoke(loadType, bool2, refresh2);
            dm3Var.invoke(loadType2, bool2, loadStates2.getPrepend());
            dm3Var.invoke(loadType3, bool2, loadStates2.getAppend());
        }
    }

    public final LoadState getAppend() {
        return this.append;
    }

    public final LoadStates getMediator() {
        return this.mediator;
    }

    public final LoadState getPrepend() {
        return this.prepend;
    }

    public final LoadState getRefresh() {
        return this.refresh;
    }

    public final LoadStates getSource() {
        return this.source;
    }

    public final boolean hasError() {
        return this.hasError;
    }

    public int hashCode() {
        int iHashCode = (this.source.hashCode() + ((this.append.hashCode() + ((this.prepend.hashCode() + (this.refresh.hashCode() * 31)) * 31)) * 31)) * 31;
        LoadStates loadStates = this.mediator;
        return iHashCode + (loadStates != null ? loadStates.hashCode() : 0);
    }

    public final boolean isIdle() {
        return this.isIdle;
    }

    public String toString() {
        return "CombinedLoadStates(refresh=" + this.refresh + ", prepend=" + this.prepend + ", append=" + this.append + ", source=" + this.source + ", mediator=" + this.mediator + ')';
    }

    public /* synthetic */ CombinedLoadStates(LoadState loadState, LoadState loadState2, LoadState loadState3, LoadStates loadStates, LoadStates loadStates2, int i, jh2 jh2Var) {
        this(loadState, loadState2, loadState3, loadStates, (i & 16) != 0 ? null : loadStates2);
    }
}
