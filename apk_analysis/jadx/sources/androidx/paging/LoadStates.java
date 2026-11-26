package androidx.paging;

import defpackage.aa4;
import defpackage.bm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.me0;

/* JADX INFO: loaded from: classes3.dex */
public final class LoadStates {
    public static final Companion Companion = new Companion(null);
    private static final LoadStates IDLE;
    private final LoadState append;
    private final boolean hasError;
    private final boolean isIdle;
    private final LoadState prepend;
    private final LoadState refresh;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoadType.values().length];
            try {
                iArr[LoadType.APPEND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LoadType.PREPEND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LoadType.REFRESH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        LoadState.NotLoading.Companion companion = LoadState.NotLoading.Companion;
        IDLE = new LoadStates(companion.getIncomplete$paging_common(), companion.getIncomplete$paging_common(), companion.getIncomplete$paging_common());
    }

    public LoadStates(LoadState loadState, LoadState loadState2, LoadState loadState3) {
        loadState.getClass();
        loadState2.getClass();
        loadState3.getClass();
        this.refresh = loadState;
        this.prepend = loadState2;
        this.append = loadState3;
        this.hasError = (loadState instanceof LoadState.Error) || (loadState3 instanceof LoadState.Error) || (loadState2 instanceof LoadState.Error);
        this.isIdle = (loadState instanceof LoadState.NotLoading) && (loadState3 instanceof LoadState.NotLoading) && (loadState2 instanceof LoadState.NotLoading);
    }

    public static /* synthetic */ LoadStates copy$default(LoadStates loadStates, LoadState loadState, LoadState loadState2, LoadState loadState3, int i, Object obj) {
        if ((i & 1) != 0) {
            loadState = loadStates.refresh;
        }
        if ((i & 2) != 0) {
            loadState2 = loadStates.prepend;
        }
        if ((i & 4) != 0) {
            loadState3 = loadStates.append;
        }
        return loadStates.copy(loadState, loadState2, loadState3);
    }

    public final LoadState component1() {
        return this.refresh;
    }

    public final LoadState component2() {
        return this.prepend;
    }

    public final LoadState component3() {
        return this.append;
    }

    public final LoadStates copy(LoadState loadState, LoadState loadState2, LoadState loadState3) {
        loadState.getClass();
        loadState2.getClass();
        loadState3.getClass();
        return new LoadStates(loadState, loadState2, loadState3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LoadStates)) {
            return false;
        }
        LoadStates loadStates = (LoadStates) obj;
        return aa4.e(this.refresh, loadStates.refresh) && aa4.e(this.prepend, loadStates.prepend) && aa4.e(this.append, loadStates.append);
    }

    public final void forEach(bm3<? super LoadType, ? super LoadState, j59> bm3Var) {
        bm3Var.getClass();
        bm3Var.invoke(LoadType.REFRESH, getRefresh());
        bm3Var.invoke(LoadType.PREPEND, getPrepend());
        bm3Var.invoke(LoadType.APPEND, getAppend());
    }

    public final LoadState get$paging_common(LoadType loadType) {
        loadType.getClass();
        int i = WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()];
        if (i == 1) {
            return this.append;
        }
        if (i == 2) {
            return this.prepend;
        }
        if (i == 3) {
            return this.refresh;
        }
        me0.e();
        return null;
    }

    public final LoadState getAppend() {
        return this.append;
    }

    public final LoadState getPrepend() {
        return this.prepend;
    }

    public final LoadState getRefresh() {
        return this.refresh;
    }

    public final boolean hasError() {
        return this.hasError;
    }

    public int hashCode() {
        return this.append.hashCode() + ((this.prepend.hashCode() + (this.refresh.hashCode() * 31)) * 31);
    }

    public final boolean isIdle() {
        return this.isIdle;
    }

    public final LoadStates modifyState$paging_common(LoadType loadType, LoadState loadState) {
        loadType.getClass();
        loadState.getClass();
        int i = WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()];
        if (i == 1) {
            return copy$default(this, null, null, loadState, 3, null);
        }
        if (i == 2) {
            return copy$default(this, null, loadState, null, 5, null);
        }
        if (i == 3) {
            return copy$default(this, loadState, null, null, 6, null);
        }
        me0.e();
        return null;
    }

    public String toString() {
        return "LoadStates(refresh=" + this.refresh + ", prepend=" + this.prepend + ", append=" + this.append + ')';
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final LoadStates getIDLE() {
            return LoadStates.IDLE;
        }

        private Companion() {
        }
    }
}
