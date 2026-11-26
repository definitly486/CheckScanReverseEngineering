package androidx.compose.ui.node;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class LookaheadPassDelegate$remeasure$1$2 extends gh4 implements nl3<AlignmentLinesOwner, j59> {
    public static final LookaheadPassDelegate$remeasure$1$2 INSTANCE = new LookaheadPassDelegate$remeasure$1$2();

    public LookaheadPassDelegate$remeasure$1$2() {
        super(1);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(AlignmentLinesOwner alignmentLinesOwner) {
        alignmentLinesOwner.getAlignmentLines().setUsedDuringParentMeasurement$ui(false);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(AlignmentLinesOwner alignmentLinesOwner) {
        invoke2(alignmentLinesOwner);
        return j59.a;
    }
}
