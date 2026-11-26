package androidx.paging;

/* JADX INFO: loaded from: classes3.dex */
public final class MutableCombinedLoadStateCollectionKt {
    private static final LoadState computeHelperState(LoadState loadState, LoadState loadState2, LoadState loadState3, LoadState loadState4) {
        if (loadState4 == null) {
            return loadState3;
        }
        if (loadState instanceof LoadState.Loading) {
            return (((loadState2 instanceof LoadState.NotLoading) && (loadState4 instanceof LoadState.NotLoading)) || (loadState4 instanceof LoadState.Error)) ? loadState4 : loadState;
        }
        return loadState4;
    }

    public static final CombinedLoadStates computeNewState(CombinedLoadStates combinedLoadStates, LoadStates loadStates, LoadStates loadStates2) {
        LoadState incomplete$paging_common;
        LoadState incomplete$paging_common2;
        LoadState incomplete$paging_common3;
        loadStates.getClass();
        if (combinedLoadStates == null || (incomplete$paging_common = combinedLoadStates.getRefresh()) == null) {
            incomplete$paging_common = LoadState.NotLoading.Companion.getIncomplete$paging_common();
        }
        LoadState loadStateComputeHelperState = computeHelperState(incomplete$paging_common, loadStates.getRefresh(), loadStates.getRefresh(), loadStates2 != null ? loadStates2.getRefresh() : null);
        if (combinedLoadStates == null || (incomplete$paging_common2 = combinedLoadStates.getPrepend()) == null) {
            incomplete$paging_common2 = LoadState.NotLoading.Companion.getIncomplete$paging_common();
        }
        LoadState loadStateComputeHelperState2 = computeHelperState(incomplete$paging_common2, loadStates.getRefresh(), loadStates.getPrepend(), loadStates2 != null ? loadStates2.getPrepend() : null);
        if (combinedLoadStates == null || (incomplete$paging_common3 = combinedLoadStates.getAppend()) == null) {
            incomplete$paging_common3 = LoadState.NotLoading.Companion.getIncomplete$paging_common();
        }
        return new CombinedLoadStates(loadStateComputeHelperState, loadStateComputeHelperState2, computeHelperState(incomplete$paging_common3, loadStates.getRefresh(), loadStates.getAppend(), loadStates2 != null ? loadStates2.getAppend() : null), loadStates, loadStates2);
    }
}
