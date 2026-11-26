package androidx.compose.ui;

import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes2.dex */
final class CombinedAlignment implements Alignment {
    private final Alignment.Horizontal horizontal;
    private final Alignment.Vertical vertical;

    public CombinedAlignment(Alignment.Horizontal horizontal, Alignment.Vertical vertical) {
        this.horizontal = horizontal;
        this.vertical = vertical;
    }

    @Override // androidx.compose.ui.Alignment
    /* JADX INFO: renamed from: align-KFBX0sM */
    public long mo5655alignKFBX0sM(long j, long j2, LayoutDirection layoutDirection) {
        return IntOffset.m9164constructorimpl((((long) this.horizontal.align((int) (j >> 32), (int) (j2 >> 32), layoutDirection)) << 32) | (((long) this.vertical.align((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE), (int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }
}
