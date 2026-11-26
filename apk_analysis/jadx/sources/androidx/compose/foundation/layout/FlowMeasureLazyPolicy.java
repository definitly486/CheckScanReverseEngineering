package androidx.compose.foundation.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.ch;
import defpackage.e2;
import defpackage.ej0;
import defpackage.fm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.qn1;
import defpackage.rg;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class FlowMeasureLazyPolicy implements FlowLineMeasurePolicy {
    private final CrossAxisAlignment crossAxisAlignment;
    private final float crossAxisArrangementSpacing;
    private final fm3<Integer, FlowLineInfo, Composer, Integer, j59> getComposable;
    private final Arrangement.Horizontal horizontalArrangement;
    private final boolean isHorizontal;
    private final int itemCount;
    private final float mainAxisSpacing;
    private final int maxItemsInMainAxis;
    private final int maxLines;
    private final FlowLayoutOverflowState overflow;
    private final List<bm3<Composer, Integer, j59>> overflowComposables;
    private final Arrangement.Vertical verticalArrangement;

    /* JADX WARN: Multi-variable type inference failed */
    private FlowMeasureLazyPolicy(boolean z, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, float f, CrossAxisAlignment crossAxisAlignment, float f2, int i, int i2, int i3, FlowLayoutOverflowState flowLayoutOverflowState, List<? extends bm3<? super Composer, ? super Integer, j59>> list, fm3<? super Integer, ? super FlowLineInfo, ? super Composer, ? super Integer, j59> fm3Var) {
        this.isHorizontal = z;
        this.horizontalArrangement = horizontal;
        this.verticalArrangement = vertical;
        this.mainAxisSpacing = f;
        this.crossAxisAlignment = crossAxisAlignment;
        this.crossAxisArrangementSpacing = f2;
        this.itemCount = i;
        this.maxLines = i2;
        this.maxItemsInMainAxis = i3;
        this.overflow = flowLayoutOverflowState;
        this.overflowComposables = list;
        this.getComposable = fm3Var;
    }

    private final FlowLayoutOverflowState component10() {
        return this.overflow;
    }

    private final List<bm3<Composer, Integer, j59>> component11() {
        return this.overflowComposables;
    }

    private final fm3<Integer, FlowLineInfo, Composer, Integer, j59> component12() {
        return this.getComposable;
    }

    /* JADX INFO: renamed from: component4-D9Ej5fM, reason: not valid java name */
    private final float m1901component4D9Ej5fM() {
        return this.mainAxisSpacing;
    }

    /* JADX INFO: renamed from: component6-D9Ej5fM, reason: not valid java name */
    private final float m1902component6D9Ej5fM() {
        return this.crossAxisArrangementSpacing;
    }

    private final int component7() {
        return this.itemCount;
    }

    private final int component8() {
        return this.maxLines;
    }

    private final int component9() {
        return this.maxItemsInMainAxis;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: copy-E4Q9ldg$default, reason: not valid java name */
    public static /* synthetic */ FlowMeasureLazyPolicy m1903copyE4Q9ldg$default(FlowMeasureLazyPolicy flowMeasureLazyPolicy, boolean z, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, float f, CrossAxisAlignment crossAxisAlignment, float f2, int i, int i2, int i3, FlowLayoutOverflowState flowLayoutOverflowState, List list, fm3 fm3Var, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            z = flowMeasureLazyPolicy.isHorizontal;
        }
        if ((i4 & 2) != 0) {
            horizontal = flowMeasureLazyPolicy.horizontalArrangement;
        }
        if ((i4 & 4) != 0) {
            vertical = flowMeasureLazyPolicy.verticalArrangement;
        }
        if ((i4 & 8) != 0) {
            f = flowMeasureLazyPolicy.mainAxisSpacing;
        }
        if ((i4 & 16) != 0) {
            crossAxisAlignment = flowMeasureLazyPolicy.crossAxisAlignment;
        }
        if ((i4 & 32) != 0) {
            f2 = flowMeasureLazyPolicy.crossAxisArrangementSpacing;
        }
        if ((i4 & 64) != 0) {
            i = flowMeasureLazyPolicy.itemCount;
        }
        if ((i4 & 128) != 0) {
            i2 = flowMeasureLazyPolicy.maxLines;
        }
        if ((i4 & 256) != 0) {
            i3 = flowMeasureLazyPolicy.maxItemsInMainAxis;
        }
        if ((i4 & 512) != 0) {
            flowLayoutOverflowState = flowMeasureLazyPolicy.overflow;
        }
        if ((i4 & 1024) != 0) {
            list = flowMeasureLazyPolicy.overflowComposables;
        }
        if ((i4 & 2048) != 0) {
            fm3Var = flowMeasureLazyPolicy.getComposable;
        }
        List list2 = list;
        fm3 fm3Var2 = fm3Var;
        int i5 = i3;
        FlowLayoutOverflowState flowLayoutOverflowState2 = flowLayoutOverflowState;
        int i6 = i;
        int i7 = i2;
        CrossAxisAlignment crossAxisAlignment2 = crossAxisAlignment;
        float f3 = f2;
        return flowMeasureLazyPolicy.m1905copyE4Q9ldg(z, horizontal, vertical, f, crossAxisAlignment2, f3, i6, i7, i5, flowLayoutOverflowState2, list2, fm3Var2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult getMeasurePolicy$lambda$0(FlowMeasureLazyPolicy flowMeasureLazyPolicy, SubcomposeMeasureScope subcomposeMeasureScope, Constraints constraints) {
        return flowMeasureLazyPolicy.m1904measure0kLqBqw(subcomposeMeasureScope, constraints.m9001unboximpl());
    }

    /* JADX INFO: renamed from: measure-0kLqBqw, reason: not valid java name */
    private final MeasureResult m1904measure0kLqBqw(final SubcomposeMeasureScope subcomposeMeasureScope, long j) {
        if (this.itemCount <= 0 || this.maxLines == 0 || this.maxItemsInMainAxis == 0 || (Constraints.m8994getMaxHeightimpl(j) == 0 && this.overflow.getType$foundation_layout() != FlowLayoutOverflow.OverflowType.Visible)) {
            return MeasureScope.layout$default(subcomposeMeasureScope, 0, 0, null, new p(), 4, null);
        }
        ContextualFlowItemIterator contextualFlowItemIterator = new ContextualFlowItemIterator(this.itemCount, new bm3(this) { // from class: androidx.compose.foundation.layout.q
            public final /* synthetic */ FlowMeasureLazyPolicy c;

            {
                this.c = this;
            }

            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return FlowMeasureLazyPolicy.measure_0kLqBqw$lambda$1(subcomposeMeasureScope, this.c, ((Integer) obj).intValue(), (FlowLineInfo) obj2);
            }
        });
        this.overflow.setItemCount$foundation_layout(this.itemCount);
        this.overflow.m1895setOverflowMeasurablesVKLhPVY$foundation_layout(this, j, new bm3() { // from class: androidx.compose.foundation.layout.s
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return FlowMeasureLazyPolicy.measure_0kLqBqw$lambda$2(this.b, subcomposeMeasureScope, ((Boolean) obj).booleanValue(), ((Integer) obj2).intValue());
            }
        });
        return FlowLayoutKt.m1889breakDownItemsdi9J0FM(subcomposeMeasureScope, this, contextualFlowItemIterator, this.mainAxisSpacing, this.crossAxisArrangementSpacing, OrientationIndependentConstraints.m2002constructorimpl(j, isHorizontal() ? LayoutOrientation.Horizontal : LayoutOrientation.Vertical), this.maxItemsInMainAxis, this.maxLines, this.overflow);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_0kLqBqw$lambda$0(Placeable.PlacementScope placementScope) {
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List measure_0kLqBqw$lambda$1(SubcomposeMeasureScope subcomposeMeasureScope, final FlowMeasureLazyPolicy flowMeasureLazyPolicy, final int i, final FlowLineInfo flowLineInfo) {
        return subcomposeMeasureScope.subcompose(Integer.valueOf(i), ComposableLambdaKt.composableLambdaInstance(-195060736, true, new bm3() { // from class: androidx.compose.foundation.layout.n
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                int iIntValue = ((Integer) obj2).intValue();
                return FlowMeasureLazyPolicy.measure_0kLqBqw$lambda$1$0(this.b, i, flowLineInfo, (Composer) obj, iIntValue);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_0kLqBqw$lambda$1$0(FlowMeasureLazyPolicy flowMeasureLazyPolicy, int i, FlowLineInfo flowLineInfo, Composer composer, int i2) {
        if (composer.shouldExecute((i2 & 3) != 2, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-195060736, i2, -1, "androidx.compose.foundation.layout.FlowMeasureLazyPolicy.measure.<anonymous>.<anonymous> (ContextualFlowLayout.kt:486)");
            }
            flowMeasureLazyPolicy.getComposable.invoke(Integer.valueOf(i), flowLineInfo, composer, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Measurable measure_0kLqBqw$lambda$2(FlowMeasureLazyPolicy flowMeasureLazyPolicy, SubcomposeMeasureScope subcomposeMeasureScope, boolean z, int i) {
        bm3<? super Composer, ? super Integer, j59> bm3Var = (bm3) qn1.W(!z ? 1 : 0, flowMeasureLazyPolicy.overflowComposables);
        if (bm3Var == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(z);
        sb.append(flowMeasureLazyPolicy.itemCount);
        sb.append(i);
        return (Measurable) qn1.W(0, subcomposeMeasureScope.subcompose(sb.toString(), bm3Var));
    }

    public final boolean component1() {
        return this.isHorizontal;
    }

    public final Arrangement.Horizontal component2() {
        return this.horizontalArrangement;
    }

    public final Arrangement.Vertical component3() {
        return this.verticalArrangement;
    }

    public final CrossAxisAlignment component5() {
        return this.crossAxisAlignment;
    }

    /* JADX INFO: renamed from: copy-E4Q9ldg, reason: not valid java name */
    public final FlowMeasureLazyPolicy m1905copyE4Q9ldg(boolean z, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, float f, CrossAxisAlignment crossAxisAlignment, float f2, int i, int i2, int i3, FlowLayoutOverflowState flowLayoutOverflowState, List<? extends bm3<? super Composer, ? super Integer, j59>> list, fm3<? super Integer, ? super FlowLineInfo, ? super Composer, ? super Integer, j59> fm3Var) {
        return new FlowMeasureLazyPolicy(z, horizontal, vertical, f, crossAxisAlignment, f2, i, i2, i3, flowLayoutOverflowState, list, fm3Var, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FlowMeasureLazyPolicy)) {
            return false;
        }
        FlowMeasureLazyPolicy flowMeasureLazyPolicy = (FlowMeasureLazyPolicy) obj;
        return this.isHorizontal == flowMeasureLazyPolicy.isHorizontal && aa4.e(this.horizontalArrangement, flowMeasureLazyPolicy.horizontalArrangement) && aa4.e(this.verticalArrangement, flowMeasureLazyPolicy.verticalArrangement) && Dp.m9047equalsimpl0(this.mainAxisSpacing, flowMeasureLazyPolicy.mainAxisSpacing) && aa4.e(this.crossAxisAlignment, flowMeasureLazyPolicy.crossAxisAlignment) && Dp.m9047equalsimpl0(this.crossAxisArrangementSpacing, flowMeasureLazyPolicy.crossAxisArrangementSpacing) && this.itemCount == flowMeasureLazyPolicy.itemCount && this.maxLines == flowMeasureLazyPolicy.maxLines && this.maxItemsInMainAxis == flowMeasureLazyPolicy.maxItemsInMainAxis && aa4.e(this.overflow, flowMeasureLazyPolicy.overflow) && aa4.e(this.overflowComposables, flowMeasureLazyPolicy.overflowComposables) && aa4.e(this.getComposable, flowMeasureLazyPolicy.getComposable);
    }

    @Override // androidx.compose.foundation.layout.FlowLineMeasurePolicy
    public CrossAxisAlignment getCrossAxisAlignment() {
        return this.crossAxisAlignment;
    }

    @Override // androidx.compose.foundation.layout.FlowLineMeasurePolicy
    public Arrangement.Horizontal getHorizontalArrangement() {
        return this.horizontalArrangement;
    }

    public final bm3<SubcomposeMeasureScope, Constraints, MeasureResult> getMeasurePolicy() {
        return new bm3() { // from class: androidx.compose.foundation.layout.o
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return FlowMeasureLazyPolicy.getMeasurePolicy$lambda$0(this.b, (SubcomposeMeasureScope) obj, (Constraints) obj2);
            }
        };
    }

    @Override // androidx.compose.foundation.layout.FlowLineMeasurePolicy
    public Arrangement.Vertical getVerticalArrangement() {
        return this.verticalArrangement;
    }

    public int hashCode() {
        return this.getComposable.hashCode() + e2.b(this.overflowComposables, (this.overflow.hashCode() + ej0.b(this.maxItemsInMainAxis, ej0.b(this.maxLines, ej0.b(this.itemCount, rg.c(this.crossAxisArrangementSpacing, (this.crossAxisAlignment.hashCode() + rg.c(this.mainAxisSpacing, (this.verticalArrangement.hashCode() + ((this.horizontalArrangement.hashCode() + (Boolean.hashCode(this.isHorizontal) * 31)) * 31)) * 31, 31)) * 31, 31), 31), 31), 31)) * 31, 31);
    }

    @Override // androidx.compose.foundation.layout.FlowLineMeasurePolicy
    public boolean isHorizontal() {
        return this.isHorizontal;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FlowMeasureLazyPolicy(isHorizontal=");
        sb.append(this.isHorizontal);
        sb.append(", horizontalArrangement=");
        sb.append(this.horizontalArrangement);
        sb.append(", verticalArrangement=");
        sb.append(this.verticalArrangement);
        sb.append(", mainAxisSpacing=");
        ch.d(sb, ", crossAxisAlignment=", this.mainAxisSpacing);
        sb.append(this.crossAxisAlignment);
        sb.append(", crossAxisArrangementSpacing=");
        ch.d(sb, ", itemCount=", this.crossAxisArrangementSpacing);
        sb.append(this.itemCount);
        sb.append(", maxLines=");
        sb.append(this.maxLines);
        sb.append(", maxItemsInMainAxis=");
        sb.append(this.maxItemsInMainAxis);
        sb.append(", overflow=");
        sb.append(this.overflow);
        sb.append(", overflowComposables=");
        sb.append(this.overflowComposables);
        sb.append(", getComposable=");
        sb.append(this.getComposable);
        sb.append(')');
        return sb.toString();
    }

    public /* synthetic */ FlowMeasureLazyPolicy(boolean z, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, float f, CrossAxisAlignment crossAxisAlignment, float f2, int i, int i2, int i3, FlowLayoutOverflowState flowLayoutOverflowState, List list, fm3 fm3Var, jh2 jh2Var) {
        this(z, horizontal, vertical, f, crossAxisAlignment, f2, i, i2, i3, flowLayoutOverflowState, list, fm3Var);
    }
}
