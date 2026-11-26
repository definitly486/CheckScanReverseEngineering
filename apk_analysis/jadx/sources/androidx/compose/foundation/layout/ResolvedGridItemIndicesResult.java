package androidx.compose.foundation.layout;

import androidx.collection.MutableObjectList;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
final class ResolvedGridItemIndicesResult {
    private final MutableObjectList<GridItem> gridItems;
    private final long gridSize;

    private ResolvedGridItemIndicesResult(MutableObjectList<GridItem> mutableObjectList, long j) {
        this.gridItems = mutableObjectList;
        this.gridSize = j;
    }

    public final MutableObjectList<GridItem> getGridItems() {
        return this.gridItems;
    }

    /* JADX INFO: renamed from: getGridSize-YbymL2g, reason: not valid java name */
    public final long m2078getGridSizeYbymL2g() {
        return this.gridSize;
    }

    public /* synthetic */ ResolvedGridItemIndicesResult(MutableObjectList mutableObjectList, long j, jh2 jh2Var) {
        this(mutableObjectList, j);
    }
}
