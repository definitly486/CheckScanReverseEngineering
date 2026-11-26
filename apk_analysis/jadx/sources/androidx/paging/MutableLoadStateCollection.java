package androidx.paging;

import defpackage.me0;

/* JADX INFO: loaded from: classes3.dex */
public final class MutableLoadStateCollection {
    private LoadState append;
    private LoadState prepend;
    private LoadState refresh;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoadType.values().length];
            try {
                iArr[LoadType.REFRESH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LoadType.APPEND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LoadType.PREPEND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public MutableLoadStateCollection() {
        LoadState.NotLoading.Companion companion = LoadState.NotLoading.Companion;
        this.refresh = companion.getIncomplete$paging_common();
        this.prepend = companion.getIncomplete$paging_common();
        this.append = companion.getIncomplete$paging_common();
    }

    public final LoadState get(LoadType loadType) {
        loadType.getClass();
        int i = WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()];
        if (i == 1) {
            return this.refresh;
        }
        if (i == 2) {
            return this.append;
        }
        if (i == 3) {
            return this.prepend;
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

    public final void set(LoadType loadType, LoadState loadState) {
        loadType.getClass();
        loadState.getClass();
        int i = WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()];
        if (i == 1) {
            this.refresh = loadState;
            return;
        }
        if (i == 2) {
            this.append = loadState;
        } else if (i == 3) {
            this.prepend = loadState;
        } else {
            me0.e();
        }
    }

    public final void setAppend(LoadState loadState) {
        loadState.getClass();
        this.append = loadState;
    }

    public final void setPrepend(LoadState loadState) {
        loadState.getClass();
        this.prepend = loadState;
    }

    public final void setRefresh(LoadState loadState) {
        loadState.getClass();
        this.refresh = loadState;
    }

    public final LoadStates snapshot() {
        return new LoadStates(this.refresh, this.prepend, this.append);
    }

    public final void set(LoadStates loadStates) {
        loadStates.getClass();
        this.refresh = loadStates.getRefresh();
        this.append = loadStates.getAppend();
        this.prepend = loadStates.getPrepend();
    }
}
