package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.unit.DpRect;
import defpackage.j59;
import defpackage.mx2;
import defpackage.n1;
import defpackage.nl3;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
@MeasureScopeMarker
public interface MeasureScope extends IntrinsicMeasureScope {
    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ MeasureResult layout$default(MeasureScope measureScope, int i, int i2, Map map, nl3 nl3Var, nl3 nl3Var2, int i3, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: layout");
            return null;
        }
        if ((i3 & 4) != 0) {
            map = mx2.b;
        }
        return measureScope.layout(i, i2, map, (i3 & 8) != 0 ? null : nl3Var, nl3Var2);
    }

    default MeasureResult layout(int i, int i2, Map<AlignmentLine, Integer> map, nl3<? super RulerScope, j59> nl3Var, nl3<? super Placeable.PlacementScope, j59> nl3Var2) {
        if (!((i & (-16777216)) == 0 && ((-16777216) & i2) == 0)) {
            InlineClassHelperKt.throwIllegalStateException("Size(" + i + " x " + i2 + ") is out of range. Each dimension must be between 0 and 16777215.");
        }
        return new MeasureResult(i, i2, map, nl3Var, this, nl3Var2) { // from class: androidx.compose.ui.layout.MeasureScope.layout.1
            final /* synthetic */ nl3<Placeable.PlacementScope, j59> $placementBlock;
            final /* synthetic */ int $width;
            private final Map<AlignmentLine, Integer> alignmentLines;
            private final int height;
            private final nl3<RulerScope, j59> rulers;
            final /* synthetic */ MeasureScope this$0;
            private final int width;

            /* JADX WARN: Multi-variable type inference failed */
            {
                this.$width = i;
                this.this$0 = this;
                this.$placementBlock = nl3Var2;
                this.width = i;
                this.height = i2;
                this.alignmentLines = map;
                this.rulers = nl3Var;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public Map<AlignmentLine, Integer> getAlignmentLines() {
                return this.alignmentLines;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public int getHeight() {
                return this.height;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public nl3<RulerScope, j59> getRulers() {
                return this.rulers;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public int getWidth() {
                return this.width;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public void placeChildren() {
                MeasureScope measureScope = this.this$0;
                boolean z = measureScope instanceof LookaheadCapablePlaceable;
                nl3<Placeable.PlacementScope, j59> nl3Var3 = this.$placementBlock;
                if (z) {
                    nl3Var3.invoke(((LookaheadCapablePlaceable) measureScope).getPlacementScope());
                } else {
                    nl3Var3.invoke(new SimplePlacementScope(this.$width, this.this$0.getLayoutDirection(), this.this$0.getDensity(), this.this$0.getFontScale()));
                }
            }
        };
    }

    public static final class DefaultImpls {
        @Deprecated
        public static boolean isLookingAhead(MeasureScope measureScope) {
            return MeasureScope.super.isLookingAhead();
        }

        @Deprecated
        public static MeasureResult layout(MeasureScope measureScope, int i, int i2, Map<AlignmentLine, Integer> map, nl3<? super Placeable.PlacementScope, j59> nl3Var) {
            return MeasureScope.super.layout(i, i2, map, nl3Var);
        }

        @Deprecated
        /* JADX INFO: renamed from: roundToPx--R2X_6o, reason: not valid java name */
        public static int m7746roundToPxR2X_6o(MeasureScope measureScope, long j) {
            return MeasureScope.super.mo1427roundToPxR2X_6o(j);
        }

        @Deprecated
        /* JADX INFO: renamed from: roundToPx-0680j_4, reason: not valid java name */
        public static int m7747roundToPx0680j_4(MeasureScope measureScope, float f) {
            return MeasureScope.super.mo1428roundToPx0680j_4(f);
        }

        @Deprecated
        /* JADX INFO: renamed from: toDp-GaN1DYA, reason: not valid java name */
        public static float m7748toDpGaN1DYA(MeasureScope measureScope, long j) {
            return MeasureScope.super.mo1429toDpGaN1DYA(j);
        }

        @Deprecated
        /* JADX INFO: renamed from: toDp-u2uoSUM, reason: not valid java name */
        public static float m7749toDpu2uoSUM(MeasureScope measureScope, float f) {
            return MeasureScope.super.mo1430toDpu2uoSUM(f);
        }

        @Deprecated
        /* JADX INFO: renamed from: toDpSize-k-rfVVM, reason: not valid java name */
        public static long m7751toDpSizekrfVVM(MeasureScope measureScope, long j) {
            return MeasureScope.super.mo1432toDpSizekrfVVM(j);
        }

        @Deprecated
        /* JADX INFO: renamed from: toPx--R2X_6o, reason: not valid java name */
        public static float m7752toPxR2X_6o(MeasureScope measureScope, long j) {
            return MeasureScope.super.mo1433toPxR2X_6o(j);
        }

        @Deprecated
        /* JADX INFO: renamed from: toPx-0680j_4, reason: not valid java name */
        public static float m7753toPx0680j_4(MeasureScope measureScope, float f) {
            return MeasureScope.super.mo1434toPx0680j_4(f);
        }

        @Deprecated
        public static Rect toRect(MeasureScope measureScope, DpRect dpRect) {
            return MeasureScope.super.toRect(dpRect);
        }

        @Deprecated
        /* JADX INFO: renamed from: toSize-XkaWNTQ, reason: not valid java name */
        public static long m7754toSizeXkaWNTQ(MeasureScope measureScope, long j) {
            return MeasureScope.super.mo1435toSizeXkaWNTQ(j);
        }

        @Deprecated
        /* JADX INFO: renamed from: toSp-0xMU5do, reason: not valid java name */
        public static long m7755toSp0xMU5do(MeasureScope measureScope, float f) {
            return MeasureScope.super.mo1436toSp0xMU5do(f);
        }

        @Deprecated
        /* JADX INFO: renamed from: toSp-kPz2Gy4, reason: not valid java name */
        public static long m7756toSpkPz2Gy4(MeasureScope measureScope, float f) {
            return MeasureScope.super.mo1437toSpkPz2Gy4(f);
        }

        @Deprecated
        public static MeasureResult layout(MeasureScope measureScope, int i, int i2, Map<AlignmentLine, Integer> map, nl3<? super RulerScope, j59> nl3Var, nl3<? super Placeable.PlacementScope, j59> nl3Var2) {
            return MeasureScope.super.layout(i, i2, map, nl3Var, nl3Var2);
        }

        @Deprecated
        /* JADX INFO: renamed from: toDp-u2uoSUM, reason: not valid java name */
        public static float m7750toDpu2uoSUM(MeasureScope measureScope, int i) {
            return MeasureScope.super.mo1431toDpu2uoSUM(i);
        }

        @Deprecated
        /* JADX INFO: renamed from: toSp-kPz2Gy4, reason: not valid java name */
        public static long m7757toSpkPz2Gy4(MeasureScope measureScope, int i) {
            return MeasureScope.super.mo1438toSpkPz2Gy4(i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ MeasureResult layout$default(MeasureScope measureScope, int i, int i2, Map map, nl3 nl3Var, int i3, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: layout");
            return null;
        }
        if ((i3 & 4) != 0) {
            map = mx2.b;
        }
        return measureScope.layout(i, i2, map, nl3Var);
    }

    default MeasureResult layout(int i, int i2, Map<AlignmentLine, Integer> map, nl3<? super Placeable.PlacementScope, j59> nl3Var) {
        return layout(i, i2, map, null, nl3Var);
    }
}
