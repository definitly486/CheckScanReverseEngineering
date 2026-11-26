package androidx.paging;

import androidx.recyclerview.widget.DiffUtil;

/* JADX INFO: loaded from: classes3.dex */
public final class PlaceholderPaddedDiffResult {
    private final DiffUtil.DiffResult diff;
    private final boolean hasOverlap;

    public PlaceholderPaddedDiffResult(DiffUtil.DiffResult diffResult, boolean z) {
        diffResult.getClass();
        this.diff = diffResult;
        this.hasOverlap = z;
    }

    public final DiffUtil.DiffResult getDiff() {
        return this.diff;
    }

    public final boolean getHasOverlap() {
        return this.hasOverlap;
    }
}
