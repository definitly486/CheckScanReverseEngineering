package androidx.compose.ui.semantics;

import defpackage.rg;

/* JADX INFO: loaded from: classes2.dex */
public final class CollectionInfo {
    public static final int $stable = 0;
    private final int columnCount;
    private final int rowCount;

    public CollectionInfo(int i, int i2) {
        this.rowCount = i;
        this.columnCount = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CollectionInfo)) {
            return false;
        }
        CollectionInfo collectionInfo = (CollectionInfo) obj;
        return this.rowCount == collectionInfo.rowCount && this.columnCount == collectionInfo.columnCount;
    }

    public final int getColumnCount() {
        return this.columnCount;
    }

    public final int getRowCount() {
        return this.rowCount;
    }

    public int hashCode() {
        return Integer.hashCode(this.columnCount) + (Integer.hashCode(this.rowCount) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("CollectionInfo(rowCount=");
        sb.append(this.rowCount);
        sb.append(", columnCount=");
        return rg.h(sb, this.columnCount, ')');
    }
}
