package androidx.compose.ui.node;

import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class MeasurePassDelegate$layoutChildrenBlock$1 extends gh4 implements ll3<j59> {
    final /* synthetic */ MeasurePassDelegate this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MeasurePassDelegate$layoutChildrenBlock$1(MeasurePassDelegate measurePassDelegate) {
        super(0);
        this.this$0 = measurePassDelegate;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.clearPlaceOrder();
        this.this$0.forEachChildAlignmentLinesOwner(AnonymousClass1.INSTANCE);
        if (this.this$0.getInnerCoordinator().isPlacingForAlignment$ui()) {
            List<LayoutNode> children$ui = this.this$0.getLayoutNode().getChildren$ui();
            int size = children$ui.size();
            for (int i = 0; i < size; i++) {
                children$ui.get(i).getOuterCoordinator$ui().setPlacingForAlignment$ui(true);
            }
        }
        this.this$0.getInnerCoordinator().getMeasureResult$ui().placeChildren();
        if (this.this$0.getInnerCoordinator().isPlacingForAlignment$ui()) {
            List<LayoutNode> children$ui2 = this.this$0.getLayoutNode().getChildren$ui();
            int size2 = children$ui2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                children$ui2.get(i2).getOuterCoordinator$ui().setPlacingForAlignment$ui(false);
            }
        }
        this.this$0.checkChildrenPlaceOrderForUpdates();
        this.this$0.forEachChildAlignmentLinesOwner(AnonymousClass4.INSTANCE);
    }

    /* JADX INFO: renamed from: androidx.compose.ui.node.MeasurePassDelegate$layoutChildrenBlock$1$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<AlignmentLinesOwner, j59> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(1);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(AlignmentLinesOwner alignmentLinesOwner) {
            alignmentLinesOwner.getAlignmentLines().setUsedDuringParentLayout$ui(false);
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(AlignmentLinesOwner alignmentLinesOwner) {
            invoke2(alignmentLinesOwner);
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.node.MeasurePassDelegate$layoutChildrenBlock$1$4, reason: invalid class name */
    public static final class AnonymousClass4 extends gh4 implements nl3<AlignmentLinesOwner, j59> {
        public static final AnonymousClass4 INSTANCE = new AnonymousClass4();

        public AnonymousClass4() {
            super(1);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(AlignmentLinesOwner alignmentLinesOwner) {
            alignmentLinesOwner.getAlignmentLines().setPreviousUsedDuringParentLayout$ui(alignmentLinesOwner.getAlignmentLines().getUsedDuringParentLayout$ui());
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(AlignmentLinesOwner alignmentLinesOwner) {
            invoke2(alignmentLinesOwner);
            return j59.a;
        }
    }

    @Override // defpackage.ll3
    public /* bridge */ /* synthetic */ j59 invoke() {
        invoke2();
        return j59.a;
    }
}
