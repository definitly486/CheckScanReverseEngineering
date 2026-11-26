package androidx.paging;

import defpackage.b36;
import defpackage.fr;
import defpackage.g03;
import defpackage.h03;
import defpackage.me0;
import defpackage.nl3;
import defpackage.nn1;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
final class AccessorState<Key, Value> {
    private final BlockState[] blockStates;
    private final LoadState.Error[] errors;
    private final fr<PendingRequest<Key, Value>> pendingRequests;
    private boolean refreshAllowed;

    public enum BlockState {
        UNBLOCKED,
        COMPLETED,
        REQUIRES_REFRESH;

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

        public static g03<BlockState> getEntries() {
            return $ENTRIES;
        }
    }

    public static final class PendingRequest<Key, Value> {
        private final LoadType loadType;
        private PagingState<Key, Value> pagingState;

        public PendingRequest(LoadType loadType, PagingState<Key, Value> pagingState) {
            loadType.getClass();
            pagingState.getClass();
            this.loadType = loadType;
            this.pagingState = pagingState;
        }

        public final LoadType getLoadType() {
            return this.loadType;
        }

        public final PagingState<Key, Value> getPagingState() {
            return this.pagingState;
        }

        public final void setPagingState(PagingState<Key, Value> pagingState) {
            pagingState.getClass();
            this.pagingState = pagingState;
        }
    }

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[LoadType.values().length];
            try {
                iArr[LoadType.REFRESH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[BlockState.values().length];
            try {
                iArr2[BlockState.COMPLETED.ordinal()] = 1;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr2[BlockState.REQUIRES_REFRESH.ordinal()] = 2;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[BlockState.UNBLOCKED.ordinal()] = 3;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public AccessorState() {
        int length = LoadType.values().length;
        BlockState[] blockStateArr = new BlockState[length];
        for (int i = 0; i < length; i++) {
            blockStateArr[i] = BlockState.UNBLOCKED;
        }
        this.blockStates = blockStateArr;
        int length2 = LoadType.values().length;
        LoadState.Error[] errorArr = new LoadState.Error[length2];
        for (int i2 = 0; i2 < length2; i2++) {
            errorArr[i2] = null;
        }
        this.errors = errorArr;
        this.pendingRequests = new fr<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean clearPendingRequest$lambda$0(LoadType loadType, PendingRequest pendingRequest) {
        pendingRequest.getClass();
        return pendingRequest.getLoadType() == loadType;
    }

    private final LoadState computeLoadTypeState(LoadType loadType) {
        BlockState blockState = this.blockStates[loadType.ordinal()];
        fr<PendingRequest<Key, Value>> frVar = this.pendingRequests;
        if (frVar == null || !frVar.isEmpty()) {
            Iterator<PendingRequest<Key, Value>> it = frVar.iterator();
            while (it.hasNext()) {
                if (it.next().getLoadType() == loadType) {
                    if (blockState == BlockState.REQUIRES_REFRESH) {
                        break;
                    }
                    return LoadState.Loading.INSTANCE;
                }
            }
        }
        LoadState.Error error = this.errors[loadType.ordinal()];
        if (error != null) {
            return error;
        }
        int i = WhenMappings.$EnumSwitchMapping$1[blockState.ordinal()];
        if (i == 1) {
            return WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()] == 1 ? LoadState.NotLoading.Companion.getIncomplete$paging_common() : LoadState.NotLoading.Companion.getComplete$paging_common();
        }
        if (i != 2 && i != 3) {
            me0.e();
            return null;
        }
        return LoadState.NotLoading.Companion.getIncomplete$paging_common();
    }

    public final boolean add(LoadType loadType, PagingState<Key, Value> pagingState) {
        PendingRequest<Key, Value> next;
        loadType.getClass();
        pagingState.getClass();
        Iterator<PendingRequest<Key, Value>> it = this.pendingRequests.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (next.getLoadType() != loadType);
        PendingRequest<Key, Value> pendingRequest = next;
        if (pendingRequest != null) {
            pendingRequest.setPagingState(pagingState);
            return false;
        }
        BlockState blockState = this.blockStates[loadType.ordinal()];
        if (blockState == BlockState.REQUIRES_REFRESH && loadType != LoadType.REFRESH) {
            this.pendingRequests.addLast(new PendingRequest<>(loadType, pagingState));
            return false;
        }
        if (blockState != BlockState.UNBLOCKED && loadType != LoadType.REFRESH) {
            return false;
        }
        LoadType loadType2 = LoadType.REFRESH;
        if (loadType == loadType2) {
            setError(loadType2, null);
        }
        if (this.errors[loadType.ordinal()] != null) {
            return false;
        }
        this.pendingRequests.addLast(new PendingRequest<>(loadType, pagingState));
        return true;
    }

    public final void clearErrors() {
        int length = this.errors.length;
        for (int i = 0; i < length; i++) {
            this.errors[i] = null;
        }
    }

    public final void clearPendingRequest(final LoadType loadType) {
        loadType.getClass();
        nn1.y(new nl3() { // from class: androidx.paging.a
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return Boolean.valueOf(AccessorState.clearPendingRequest$lambda$0(loadType, (AccessorState.PendingRequest) obj));
            }
        }, this.pendingRequests);
    }

    public final void clearPendingRequests() {
        this.pendingRequests.clear();
    }

    public final LoadStates computeLoadStates() {
        return new LoadStates(computeLoadTypeState(LoadType.REFRESH), computeLoadTypeState(LoadType.PREPEND), computeLoadTypeState(LoadType.APPEND));
    }

    public final b36<LoadType, PagingState<Key, Value>> getPendingBoundary() {
        PendingRequest<Key, Value> next;
        Iterator<PendingRequest<Key, Value>> it = this.pendingRequests.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            PendingRequest<Key, Value> pendingRequest = next;
            if (pendingRequest.getLoadType() != LoadType.REFRESH && this.blockStates[pendingRequest.getLoadType().ordinal()] == BlockState.UNBLOCKED) {
                break;
            }
        }
        PendingRequest<Key, Value> pendingRequest2 = next;
        if (pendingRequest2 != null) {
            return new b36<>(pendingRequest2.getLoadType(), pendingRequest2.getPagingState());
        }
        return null;
    }

    public final PagingState<Key, Value> getPendingRefresh() {
        PendingRequest<Key, Value> next;
        Iterator<PendingRequest<Key, Value>> it = this.pendingRequests.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (next.getLoadType() != LoadType.REFRESH);
        PendingRequest<Key, Value> pendingRequest = next;
        if (pendingRequest != null) {
            return pendingRequest.getPagingState();
        }
        return null;
    }

    public final boolean getRefreshAllowed() {
        return this.refreshAllowed;
    }

    public final void setBlockState(LoadType loadType, BlockState blockState) {
        loadType.getClass();
        blockState.getClass();
        this.blockStates[loadType.ordinal()] = blockState;
    }

    public final void setError(LoadType loadType, LoadState.Error error) {
        loadType.getClass();
        this.errors[loadType.ordinal()] = error;
    }

    public final void setRefreshAllowed(boolean z) {
        this.refreshAllowed = z;
    }
}
