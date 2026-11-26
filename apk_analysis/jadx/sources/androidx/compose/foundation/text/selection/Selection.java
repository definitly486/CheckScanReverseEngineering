package androidx.compose.foundation.text.selection;

import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import defpackage.aa4;
import defpackage.ej0;
import defpackage.jh2;
import defpackage.lg;
import defpackage.sg;

/* JADX INFO: loaded from: classes.dex */
public final class Selection {
    public static final int $stable = 0;
    private final AnchorInfo end;
    private final boolean handlesCrossed;
    private final AnchorInfo start;

    public static final class AnchorInfo {
        public static final int $stable = 0;
        private final ResolvedTextDirection direction;
        private final int offset;
        private final long selectableId;

        public AnchorInfo(ResolvedTextDirection resolvedTextDirection, int i, long j) {
            this.direction = resolvedTextDirection;
            this.offset = i;
            this.selectableId = j;
        }

        public static /* synthetic */ AnchorInfo copy$default(AnchorInfo anchorInfo, ResolvedTextDirection resolvedTextDirection, int i, long j, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                resolvedTextDirection = anchorInfo.direction;
            }
            if ((i2 & 2) != 0) {
                i = anchorInfo.offset;
            }
            if ((i2 & 4) != 0) {
                j = anchorInfo.selectableId;
            }
            return anchorInfo.copy(resolvedTextDirection, i, j);
        }

        public final ResolvedTextDirection component1() {
            return this.direction;
        }

        public final int component2() {
            return this.offset;
        }

        public final long component3() {
            return this.selectableId;
        }

        public final AnchorInfo copy(ResolvedTextDirection resolvedTextDirection, int i, long j) {
            return new AnchorInfo(resolvedTextDirection, i, j);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AnchorInfo)) {
                return false;
            }
            AnchorInfo anchorInfo = (AnchorInfo) obj;
            return this.direction == anchorInfo.direction && this.offset == anchorInfo.offset && this.selectableId == anchorInfo.selectableId;
        }

        public final ResolvedTextDirection getDirection() {
            return this.direction;
        }

        public final int getOffset() {
            return this.offset;
        }

        public final long getSelectableId() {
            return this.selectableId;
        }

        public int hashCode() {
            return Long.hashCode(this.selectableId) + ej0.b(this.offset, this.direction.hashCode() * 31, 31);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("AnchorInfo(direction=");
            sb.append(this.direction);
            sb.append(", offset=");
            sb.append(this.offset);
            sb.append(", selectableId=");
            return lg.f(sb, this.selectableId, ')');
        }
    }

    public Selection(AnchorInfo anchorInfo, AnchorInfo anchorInfo2, boolean z) {
        this.start = anchorInfo;
        this.end = anchorInfo2;
        this.handlesCrossed = z;
    }

    public static /* synthetic */ Selection copy$default(Selection selection, AnchorInfo anchorInfo, AnchorInfo anchorInfo2, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            anchorInfo = selection.start;
        }
        if ((i & 2) != 0) {
            anchorInfo2 = selection.end;
        }
        if ((i & 4) != 0) {
            z = selection.handlesCrossed;
        }
        return selection.copy(anchorInfo, anchorInfo2, z);
    }

    public final AnchorInfo component1() {
        return this.start;
    }

    public final AnchorInfo component2() {
        return this.end;
    }

    public final boolean component3() {
        return this.handlesCrossed;
    }

    public final Selection copy(AnchorInfo anchorInfo, AnchorInfo anchorInfo2, boolean z) {
        return new Selection(anchorInfo, anchorInfo2, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Selection)) {
            return false;
        }
        Selection selection = (Selection) obj;
        return aa4.e(this.start, selection.start) && aa4.e(this.end, selection.end) && this.handlesCrossed == selection.handlesCrossed;
    }

    public final AnchorInfo getEnd() {
        return this.end;
    }

    public final boolean getHandlesCrossed() {
        return this.handlesCrossed;
    }

    public final AnchorInfo getStart() {
        return this.start;
    }

    public int hashCode() {
        return Boolean.hashCode(this.handlesCrossed) + ((this.end.hashCode() + (this.start.hashCode() * 31)) * 31);
    }

    public final Selection merge(Selection selection) {
        if (selection == null) {
            return this;
        }
        boolean z = this.handlesCrossed;
        if (z || selection.handlesCrossed) {
            return new Selection(selection.handlesCrossed ? selection.start : selection.end, z ? this.end : this.start, true);
        }
        return copy$default(this, null, selection.end, false, 5, null);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Selection(start=");
        sb.append(this.start);
        sb.append(", end=");
        sb.append(this.end);
        sb.append(", handlesCrossed=");
        return sg.d(sb, this.handlesCrossed, ')');
    }

    /* JADX INFO: renamed from: toTextRange-d9O1mEE, reason: not valid java name */
    public final long m2983toTextRanged9O1mEE() {
        return TextRangeKt.TextRange(this.start.getOffset(), this.end.getOffset());
    }

    public /* synthetic */ Selection(AnchorInfo anchorInfo, AnchorInfo anchorInfo2, boolean z, int i, jh2 jh2Var) {
        this(anchorInfo, anchorInfo2, (i & 4) != 0 ? false : z);
    }
}
