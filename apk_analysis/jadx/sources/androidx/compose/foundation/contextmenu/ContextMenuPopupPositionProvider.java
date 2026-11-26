package androidx.compose.foundation.contextmenu;

import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.media3.muxer.MuxerUtil;
import defpackage.bm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
public final class ContextMenuPopupPositionProvider implements PopupPositionProvider {
    public static final int $stable = 0;
    private final ll3<IntOffset> anchorPositionBlock;
    private final bm3<IntOffset, IntRect, j59> onPositionCalculated;

    public /* synthetic */ ContextMenuPopupPositionProvider(long j, bm3 bm3Var, int i, jh2 jh2Var) {
        this(j, (i & 2) != 0 ? null : bm3Var, null);
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    /* JADX INFO: renamed from: calculatePosition-llwVHH4, reason: not valid java name */
    public long mo1402calculatePositionllwVHH4(IntRect intRect, long j, LayoutDirection layoutDirection, long j2) {
        long jM9179unboximpl = this.anchorPositionBlock.invoke().m9179unboximpl();
        long jM9164constructorimpl = IntOffset.m9164constructorimpl((((long) ContextMenuPopupPositionProviderKt.alignPopupAxis(IntOffset.m9170getXimpl(jM9179unboximpl) + intRect.getLeft(), (int) (j2 >> 32), (int) (j >> 32), layoutDirection == LayoutDirection.Ltr)) << 32) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) ContextMenuPopupPositionProviderKt.alignPopupAxis$default(IntOffset.m9171getYimpl(jM9179unboximpl) + intRect.getTop(), (int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE), (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE), false, 8, null))));
        bm3<IntOffset, IntRect, j59> bm3Var = this.onPositionCalculated;
        if (bm3Var != null) {
            bm3Var.invoke(IntOffset.m9161boximpl(jM9179unboximpl), IntRectKt.m9203IntRectVbeCjmY(jM9164constructorimpl, j2));
        }
        return jM9164constructorimpl;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ContextMenuPopupPositionProvider(ll3<IntOffset> ll3Var, bm3<? super IntOffset, ? super IntRect, j59> bm3Var) {
        this.anchorPositionBlock = ll3Var;
        this.onPositionCalculated = bm3Var;
    }

    public /* synthetic */ ContextMenuPopupPositionProvider(ll3 ll3Var, bm3 bm3Var, int i, jh2 jh2Var) {
        this((ll3<IntOffset>) ll3Var, (bm3<? super IntOffset, ? super IntRect, j59>) ((i & 2) != 0 ? null : bm3Var));
    }

    public /* synthetic */ ContextMenuPopupPositionProvider(long j, bm3 bm3Var, jh2 jh2Var) {
        this(j, (bm3<? super IntOffset, ? super IntRect, j59>) bm3Var);
    }

    private ContextMenuPopupPositionProvider(final long j, bm3<? super IntOffset, ? super IntRect, j59> bm3Var) {
        this((ll3<IntOffset>) new ll3() { // from class: wy1
            @Override // defpackage.ll3
            public final Object invoke() {
                return IntOffset.m9161boximpl(j);
            }
        }, bm3Var);
    }
}
