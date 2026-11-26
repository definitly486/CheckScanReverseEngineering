package androidx.compose.ui.semantics;

import defpackage.bm3;
import defpackage.gh4;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class SemanticsSortKt$UnmergedConfigComparator$1 extends gh4 implements bm3<SemanticsNode, SemanticsNode, Integer> {
    public static final SemanticsSortKt$UnmergedConfigComparator$1 INSTANCE = new SemanticsSortKt$UnmergedConfigComparator$1();

    /* JADX INFO: renamed from: androidx.compose.ui.semantics.SemanticsSortKt$UnmergedConfigComparator$1$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements ll3<Float> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final Float invoke() {
            return Float.valueOf(0.0f);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.semantics.SemanticsSortKt$UnmergedConfigComparator$1$2, reason: invalid class name */
    public static final class AnonymousClass2 extends gh4 implements ll3<Float> {
        public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

        public AnonymousClass2() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final Float invoke() {
            return Float.valueOf(0.0f);
        }
    }

    public SemanticsSortKt$UnmergedConfigComparator$1() {
        super(2);
    }

    @Override // defpackage.bm3
    public final Integer invoke(SemanticsNode semanticsNode, SemanticsNode semanticsNode2) {
        SemanticsConfiguration unmergedConfig$ui = semanticsNode.getUnmergedConfig$ui();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        return Integer.valueOf(Float.compare(((Number) unmergedConfig$ui.getOrElse(semanticsProperties.getTraversalIndex(), AnonymousClass1.INSTANCE)).floatValue(), ((Number) semanticsNode2.getUnmergedConfig$ui().getOrElse(semanticsProperties.getTraversalIndex(), AnonymousClass2.INSTANCE)).floatValue()));
    }
}
