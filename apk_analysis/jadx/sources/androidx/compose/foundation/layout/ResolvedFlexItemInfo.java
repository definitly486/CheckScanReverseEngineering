package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Measured;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.VerticalAlignmentLine;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import defpackage.nl3;
import defpackage.sp0;

/* JADX INFO: loaded from: classes.dex */
public final class ResolvedFlexItemInfo implements FlexConfigScope {
    public static final int $stable = 0;
    private AlignmentLineProviderBlock baselineAlignmentBlock;
    private AlignmentLine baselineAlignmentLine;
    private int crossAxisSize;
    private int crossPosition;
    private int flexBaseSize;
    private int flexBoxCrossAxisMax;
    private int flexBoxCrossAxisMin;
    private int flexBoxMainAxisMax;
    private int flexBoxMainAxisMin;
    private float grow;
    private int hypotheticalMainSize;
    private boolean isFrozen;
    private int mainAxisSize;
    private int mainPosition;
    private Measurable measurable;
    private int order;
    private Placeable placeable;
    private int targetMainSize;
    private Density _density = FlexBoxKt.getDefaultDensity();
    private int alignSelf = FlexAlignSelf.m1804constructorimpl(0);
    private float shrink = 1.0f;
    private long basis = FlexBasis.Companion.m1829getAutodlZNVs();
    private int _minMainAxisSize = -1;
    private int _maxContentSize = -1;
    private int baseline = Integer.MIN_VALUE;

    /* JADX INFO: Access modifiers changed from: private */
    public static final int alignSelf$lambda$0(nl3 nl3Var, Measured measured) {
        return ((Number) nl3Var.invoke(measured)).intValue();
    }

    @Override // androidx.compose.foundation.layout.FlexConfigScope
    public void alignSelf(nl3<? super Measured, Integer> nl3Var) {
        this.alignSelf = FlexAlignSelf.m1804constructorimpl(5);
        this.baselineAlignmentLine = null;
        this.baselineAlignmentBlock = new sp0(nl3Var, 2);
    }

    @Override // androidx.compose.foundation.layout.FlexConfigScope
    /* JADX INFO: renamed from: alignSelf-aKVMlHY */
    public void mo1849alignSelfaKVMlHY(int i) {
        this.alignSelf = i;
    }

    @Override // androidx.compose.foundation.layout.FlexConfigScope
    public void basis(float f) {
        this.basis = FlexBasis.Companion.m1828Percentuoj9tHE(f);
    }

    @Override // androidx.compose.foundation.layout.FlexConfigScope
    /* JADX INFO: renamed from: basis-0680j_4 */
    public void mo1850basis0680j_4(float f) {
        this.basis = FlexBasis.Companion.m1827DpcHuBJEI(f);
    }

    @Override // androidx.compose.foundation.layout.FlexConfigScope
    /* JADX INFO: renamed from: basis-MFoeH6Y */
    public void mo1851basisMFoeH6Y(long j) {
        this.basis = j;
    }

    /* JADX INFO: renamed from: getAlignSelf-_ov7Qcc$foundation_layout, reason: not valid java name */
    public final int m2073getAlignSelf_ov7Qcc$foundation_layout() {
        return this.alignSelf;
    }

    public final int getBaseline(Placeable placeable, ResolvedFlexBoxConfig resolvedFlexBoxConfig) {
        AlignmentLineProviderBlock alignmentLineProviderBlock = this.baselineAlignmentBlock;
        if (alignmentLineProviderBlock != null) {
            return alignmentLineProviderBlock.calculateAlignmentLinePosition(placeable);
        }
        AlignmentLine alignmentLine = this.baselineAlignmentLine;
        if (alignmentLine != null) {
            int i = placeable.get(alignmentLine);
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            AlignmentLine alignmentLine2 = this.baselineAlignmentLine;
            alignmentLine2.getClass();
            return alignmentLine2 instanceof VerticalAlignmentLine ? placeable.getWidth() : placeable.getHeight();
        }
        if (FlexAlignSelf.m1806equalsimpl0(this.alignSelf, FlexAlignSelf.m1804constructorimpl(5))) {
            return resolvedFlexBoxConfig.getBaseline$foundation_layout(placeable);
        }
        if (FlexAlignItems.m1794equalsimpl0(resolvedFlexBoxConfig.m2059getAlignItems20X20zU$foundation_layout(), FlexAlignItems.m1792constructorimpl(4)) && FlexAlignSelf.m1806equalsimpl0(this.alignSelf, FlexAlignSelf.m1804constructorimpl(0))) {
            return resolvedFlexBoxConfig.getBaseline$foundation_layout(placeable);
        }
        return Integer.MIN_VALUE;
    }

    public final AlignmentLineProviderBlock getBaselineAlignmentBlock() {
        return this.baselineAlignmentBlock;
    }

    public final AlignmentLine getBaselineAlignmentLine() {
        return this.baselineAlignmentLine;
    }

    /* JADX INFO: renamed from: getBasis-d-lZNVs$foundation_layout, reason: not valid java name */
    public final long m2074getBasisdlZNVs$foundation_layout() {
        return this.basis;
    }

    public final int getCrossAxisSize() {
        return this.crossAxisSize;
    }

    public final int getCrossPosition() {
        return this.crossPosition;
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this._density.getDensity();
    }

    public final int getFlexBaseSize() {
        return this.flexBaseSize;
    }

    @Override // androidx.compose.foundation.layout.FlexConfigScope
    public int getFlexBoxCrossAxisMax() {
        return this.flexBoxCrossAxisMax;
    }

    @Override // androidx.compose.foundation.layout.FlexConfigScope
    public int getFlexBoxCrossAxisMin() {
        return this.flexBoxCrossAxisMin;
    }

    @Override // androidx.compose.foundation.layout.FlexConfigScope
    public int getFlexBoxMainAxisMax() {
        return this.flexBoxMainAxisMax;
    }

    @Override // androidx.compose.foundation.layout.FlexConfigScope
    public int getFlexBoxMainAxisMin() {
        return this.flexBoxMainAxisMin;
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public float getFontScale() {
        return this._density.getFontScale();
    }

    public final float getGrow$foundation_layout() {
        return this.grow;
    }

    public final boolean getHasBaseline() {
        return FlexAlignSelf.m1806equalsimpl0(this.alignSelf, FlexAlignSelf.m1804constructorimpl(5));
    }

    public final int getHypotheticalMainSize() {
        return this.hypotheticalMainSize;
    }

    public final int getMainAxisSize() {
        return this.mainAxisSize;
    }

    public final int getMainPosition() {
        return this.mainPosition;
    }

    public final int getMaxContentSize$foundation_layout(boolean z) {
        int i = this._maxContentSize;
        if (i != -1) {
            return i;
        }
        Measurable measurable = this.measurable;
        int iMaxIntrinsicHeight = 0;
        if (z) {
            if (measurable != null) {
                iMaxIntrinsicHeight = measurable.maxIntrinsicWidth(Integer.MAX_VALUE);
            }
        } else if (measurable != null) {
            iMaxIntrinsicHeight = measurable.maxIntrinsicHeight(Integer.MAX_VALUE);
        }
        this._maxContentSize = iMaxIntrinsicHeight;
        return iMaxIntrinsicHeight;
    }

    public final Measurable getMeasurable() {
        return this.measurable;
    }

    public final int getMinMainAxisSize$foundation_layout(boolean z) {
        int i = this._minMainAxisSize;
        if (i != -1) {
            return i;
        }
        Measurable measurable = this.measurable;
        int iMinIntrinsicHeight = 0;
        if (z) {
            if (measurable != null) {
                iMinIntrinsicHeight = measurable.minIntrinsicWidth(Integer.MAX_VALUE);
            }
        } else if (measurable != null) {
            iMinIntrinsicHeight = measurable.minIntrinsicHeight(Integer.MAX_VALUE);
        }
        this._minMainAxisSize = iMinIntrinsicHeight;
        return iMinIntrinsicHeight;
    }

    public final int getOrder$foundation_layout() {
        return this.order;
    }

    public final Placeable getPlaceable() {
        return this.placeable;
    }

    public final float getShrink$foundation_layout() {
        return this.shrink;
    }

    public final int getTargetMainSize() {
        return this.targetMainSize;
    }

    @Override // androidx.compose.foundation.layout.FlexConfigScope
    public void grow(float f) {
        if (!(f >= 0.0f)) {
            InlineClassHelperKt.throwIllegalArgumentException("Flex grow cannot be negative: " + f);
        }
        this.grow = f;
    }

    public final boolean isFrozen() {
        return this.isFrozen;
    }

    @Override // androidx.compose.foundation.layout.FlexConfigScope
    public void order(int i) {
        this.order = i;
    }

    /* JADX INFO: renamed from: prepare-RMq0m1M, reason: not valid java name */
    public final void m2075prepareRMq0m1M(Density density, long j) {
        this._density = density;
        this.flexBoxMainAxisMax = Constraints.m8995getMaxWidthimpl(j);
        this.flexBoxMainAxisMin = Constraints.m8997getMinWidthimpl(j);
        this.flexBoxCrossAxisMax = Constraints.m8994getMaxHeightimpl(j);
        this.flexBoxCrossAxisMin = Constraints.m8996getMinHeightimpl(j);
    }

    /* JADX INFO: renamed from: setAlignSelf-aKVMlHY$foundation_layout, reason: not valid java name */
    public final void m2076setAlignSelfaKVMlHY$foundation_layout(int i) {
        this.alignSelf = i;
    }

    public final void setBaseline(int i) {
        this.baseline = i;
    }

    /* JADX INFO: renamed from: setBasis-MFoeH6Y$foundation_layout, reason: not valid java name */
    public final void m2077setBasisMFoeH6Y$foundation_layout(long j) {
        this.basis = j;
    }

    public final void setCrossAxisSize(int i) {
        this.crossAxisSize = i;
    }

    public final void setCrossPosition(int i) {
        this.crossPosition = i;
    }

    public final void setFlexBaseSize(int i) {
        this.flexBaseSize = i;
    }

    public final void setFrozen(boolean z) {
        this.isFrozen = z;
    }

    public final void setGrow$foundation_layout(float f) {
        this.grow = f;
    }

    public final void setHypotheticalMainSize(int i) {
        this.hypotheticalMainSize = i;
    }

    public final void setMainAxisSize(int i) {
        this.mainAxisSize = i;
    }

    public final void setMainPosition(int i) {
        this.mainPosition = i;
    }

    public final void setMeasurable(Measurable measurable) {
        this.measurable = measurable;
    }

    public final void setOrder$foundation_layout(int i) {
        this.order = i;
    }

    public final void setPlaceable(Placeable placeable) {
        this.placeable = placeable;
    }

    public final void setShrink$foundation_layout(float f) {
        this.shrink = f;
    }

    public final void setTargetMainSize(int i) {
        this.targetMainSize = i;
    }

    @Override // androidx.compose.foundation.layout.FlexConfigScope
    public void shrink(float f) {
        if (!(f >= 0.0f)) {
            InlineClassHelperKt.throwIllegalArgumentException("Flex shrink cannot be negative: " + f);
        }
        this.shrink = f;
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* JADX INFO: renamed from: toDp-GaN1DYA */
    public float mo1429toDpGaN1DYA(long j) {
        return this._density.mo1429toDpGaN1DYA(j);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* JADX INFO: renamed from: toSp-0xMU5do */
    public long mo1436toSp0xMU5do(float f) {
        return this._density.mo1436toSp0xMU5do(f);
    }

    @Override // androidx.compose.foundation.layout.FlexConfigScope
    public void alignSelf(AlignmentLine alignmentLine) {
        this.alignSelf = FlexAlignSelf.m1804constructorimpl(5);
        this.baselineAlignmentLine = alignmentLine;
        this.baselineAlignmentBlock = null;
    }

    public final int getBaseline() {
        return this.baseline;
    }
}
