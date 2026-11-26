package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Measured;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.VerticalAlignmentLine;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import defpackage.ch;
import defpackage.na8;
import defpackage.nl3;
import defpackage.vv;

/* JADX INFO: loaded from: classes.dex */
public final class ResolvedFlexBoxConfig implements FlexBoxConfigScope {
    public static final int $stable = 0;
    private AlignmentLineProviderBlock baselineAlignmentBlock;
    private AlignmentLine baselineAlignmentLine;
    private Density _density = FlexBoxKt.getDefaultDensity();
    private long constraints = ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null);
    private int direction = FlexDirection.m1853constructorimpl(0);
    private int wrap = FlexWrap.m1877constructorimpl(0);
    private int justifyContent = FlexJustifyContent.m1864constructorimpl(0);
    private int alignItems = FlexAlignItems.m1792constructorimpl(0);
    private int alignContent = FlexAlignContent.m1779constructorimpl(0);
    private float rowGap = Dp.m9042constructorimpl(0.0f);
    private float columnGap = Dp.m9042constructorimpl(0.0f);

    /* JADX INFO: Access modifiers changed from: private */
    public static final int alignItems$lambda$0(nl3 nl3Var, Measured measured) {
        return ((Number) nl3Var.invoke(measured)).intValue();
    }

    @Override // androidx.compose.foundation.layout.FlexBoxConfigScope
    /* JADX INFO: renamed from: alignContent-RVFKNBI */
    public void mo1830alignContentRVFKNBI(int i) {
        this.alignContent = i;
    }

    @Override // androidx.compose.foundation.layout.FlexBoxConfigScope
    public void alignItems(nl3<? super Measured, Integer> nl3Var) {
        this.alignItems = FlexAlignItems.m1792constructorimpl(4);
        this.baselineAlignmentLine = null;
        this.baselineAlignmentBlock = new vv(nl3Var, 3);
    }

    @Override // androidx.compose.foundation.layout.FlexBoxConfigScope
    /* JADX INFO: renamed from: alignItems-yvIbNKY */
    public void mo1831alignItemsyvIbNKY(int i) {
        this.alignItems = i;
    }

    @Override // androidx.compose.foundation.layout.FlexBoxConfigScope
    /* JADX INFO: renamed from: columnGap-0680j_4 */
    public void mo1832columnGap0680j_4(float f) {
        this.columnGap = f;
    }

    public final int crossAxisGap() {
        return mo1428roundToPx0680j_4((FlexDirection.m1855equalsimpl0(m2061getDirectionT4wFHC8$foundation_layout(), FlexDirection.m1853constructorimpl(0)) || FlexDirection.m1855equalsimpl0(m2061getDirectionT4wFHC8$foundation_layout(), FlexDirection.m1853constructorimpl(2))) ? this.rowGap : this.columnGap);
    }

    @Override // androidx.compose.foundation.layout.FlexBoxConfigScope
    /* JADX INFO: renamed from: direction-d5Yd7B0 */
    public void mo1833directiond5Yd7B0(int i) {
        this.direction = i;
    }

    @Override // androidx.compose.foundation.layout.FlexBoxConfigScope
    /* JADX INFO: renamed from: gap-0680j_4 */
    public void mo1834gap0680j_4(float f) {
        this.rowGap = f;
        this.columnGap = f;
    }

    @Override // androidx.compose.foundation.layout.FlexBoxConfigScope
    /* JADX INFO: renamed from: gap-YgX7TsA */
    public void mo1835gapYgX7TsA(float f, float f2) {
        this.rowGap = f;
        this.columnGap = f2;
    }

    /* JADX INFO: renamed from: getAlignContent-d9B3MrI$foundation_layout, reason: not valid java name */
    public final int m2058getAlignContentd9B3MrI$foundation_layout() {
        return this.alignContent;
    }

    /* JADX INFO: renamed from: getAlignItems-20X20zU$foundation_layout, reason: not valid java name */
    public final int m2059getAlignItems20X20zU$foundation_layout() {
        return this.alignItems;
    }

    public final int getBaseline$foundation_layout(Placeable placeable) {
        AlignmentLineProviderBlock alignmentLineProviderBlock = this.baselineAlignmentBlock;
        if (alignmentLineProviderBlock != null) {
            return alignmentLineProviderBlock.calculateAlignmentLinePosition(placeable);
        }
        AlignmentLine alignmentLine = this.baselineAlignmentLine;
        if (alignmentLine == null) {
            int i = placeable.get(androidx.compose.ui.layout.AlignmentLineKt.getFirstBaseline());
            return i != Integer.MIN_VALUE ? i : placeable.getHeight();
        }
        int i2 = placeable.get(alignmentLine);
        if (i2 != Integer.MIN_VALUE) {
            return i2;
        }
        AlignmentLine alignmentLine2 = this.baselineAlignmentLine;
        alignmentLine2.getClass();
        return alignmentLine2 instanceof VerticalAlignmentLine ? placeable.getWidth() : placeable.getHeight();
    }

    public final AlignmentLineProviderBlock getBaselineAlignmentBlock() {
        return this.baselineAlignmentBlock;
    }

    public final AlignmentLine getBaselineAlignmentLine() {
        return this.baselineAlignmentLine;
    }

    /* JADX INFO: renamed from: getColumnGap-D9Ej5fM$foundation_layout, reason: not valid java name */
    public final float m2060getColumnGapD9Ej5fM$foundation_layout() {
        return this.columnGap;
    }

    @Override // androidx.compose.foundation.layout.FlexBoxConfigScope
    /* JADX INFO: renamed from: getConstraints-msEJaDk */
    public long mo1836getConstraintsmsEJaDk() {
        return this.constraints;
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this._density.getDensity();
    }

    /* JADX INFO: renamed from: getDirection-T4wFHC8$foundation_layout, reason: not valid java name */
    public final int m2061getDirectionT4wFHC8$foundation_layout() {
        return this.direction;
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public float getFontScale() {
        return this._density.getFontScale();
    }

    public final boolean getHasBaseline() {
        return FlexAlignItems.m1794equalsimpl0(m2059getAlignItems20X20zU$foundation_layout(), FlexAlignItems.m1792constructorimpl(4));
    }

    /* JADX INFO: renamed from: getJustifyContent-GomtQF4$foundation_layout, reason: not valid java name */
    public final int m2062getJustifyContentGomtQF4$foundation_layout() {
        return this.justifyContent;
    }

    /* JADX INFO: renamed from: getRowGap-D9Ej5fM$foundation_layout, reason: not valid java name */
    public final float m2063getRowGapD9Ej5fM$foundation_layout() {
        return this.rowGap;
    }

    /* JADX INFO: renamed from: getWrap-7ziDAWk$foundation_layout, reason: not valid java name */
    public final int m2064getWrap7ziDAWk$foundation_layout() {
        return this.wrap;
    }

    public final boolean isCrossAxisReverse() {
        return FlexWrap.m1879equalsimpl0(m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(2));
    }

    public final boolean isHorizontal() {
        return FlexDirection.m1855equalsimpl0(m2061getDirectionT4wFHC8$foundation_layout(), FlexDirection.m1853constructorimpl(0)) || FlexDirection.m1855equalsimpl0(m2061getDirectionT4wFHC8$foundation_layout(), FlexDirection.m1853constructorimpl(2));
    }

    public final boolean isWrapEnabled() {
        return FlexWrap.m1879equalsimpl0(m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(1)) || FlexWrap.m1879equalsimpl0(m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(2));
    }

    @Override // androidx.compose.foundation.layout.FlexBoxConfigScope
    /* JADX INFO: renamed from: justifyContent-q3qUS_E */
    public void mo1837justifyContentq3qUS_E(int i) {
        this.justifyContent = i;
    }

    public final int mainAxisGap() {
        return mo1428roundToPx0680j_4((FlexDirection.m1855equalsimpl0(m2061getDirectionT4wFHC8$foundation_layout(), FlexDirection.m1853constructorimpl(0)) || FlexDirection.m1855equalsimpl0(m2061getDirectionT4wFHC8$foundation_layout(), FlexDirection.m1853constructorimpl(2))) ? this.columnGap : this.rowGap);
    }

    /* JADX INFO: renamed from: prepare-0kLqBqw, reason: not valid java name */
    public final void m2065prepare0kLqBqw(Density density, long j) {
        this._density = density;
        this.constraints = j;
        this.direction = FlexDirection.m1853constructorimpl(0);
        this.wrap = FlexWrap.m1877constructorimpl(0);
        this.justifyContent = FlexJustifyContent.m1864constructorimpl(0);
        this.alignItems = FlexAlignItems.m1792constructorimpl(0);
        this.alignContent = FlexAlignContent.m1779constructorimpl(0);
        this.rowGap = Dp.m9042constructorimpl(0.0f);
        this.columnGap = Dp.m9042constructorimpl(0.0f);
        this.baselineAlignmentLine = null;
        this.baselineAlignmentBlock = null;
    }

    @Override // androidx.compose.foundation.layout.FlexBoxConfigScope
    /* JADX INFO: renamed from: rowGap-0680j_4 */
    public void mo1838rowGap0680j_4(float f) {
        this.rowGap = f;
    }

    /* JADX INFO: renamed from: setAlignContent-RVFKNBI$foundation_layout, reason: not valid java name */
    public final void m2066setAlignContentRVFKNBI$foundation_layout(int i) {
        this.alignContent = i;
    }

    /* JADX INFO: renamed from: setAlignItems-yvIbNKY$foundation_layout, reason: not valid java name */
    public final void m2067setAlignItemsyvIbNKY$foundation_layout(int i) {
        this.alignItems = i;
    }

    /* JADX INFO: renamed from: setColumnGap-0680j_4$foundation_layout, reason: not valid java name */
    public final void m2068setColumnGap0680j_4$foundation_layout(float f) {
        this.columnGap = f;
    }

    /* JADX INFO: renamed from: setDirection-d5Yd7B0$foundation_layout, reason: not valid java name */
    public final void m2069setDirectiond5Yd7B0$foundation_layout(int i) {
        this.direction = i;
    }

    /* JADX INFO: renamed from: setJustifyContent-q3qUS_E$foundation_layout, reason: not valid java name */
    public final void m2070setJustifyContentq3qUS_E$foundation_layout(int i) {
        this.justifyContent = i;
    }

    /* JADX INFO: renamed from: setRowGap-0680j_4$foundation_layout, reason: not valid java name */
    public final void m2071setRowGap0680j_4$foundation_layout(float f) {
        this.rowGap = f;
    }

    /* JADX INFO: renamed from: setWrap-CLQ35Ag$foundation_layout, reason: not valid java name */
    public final void m2072setWrapCLQ35Ag$foundation_layout(int i) {
        this.wrap = i;
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

    public String toString() {
        StringBuilder sb = new StringBuilder("\n        FlexBoxConfig(\n            direction = ");
        sb.append((Object) FlexDirection.m1857toStringimpl(this.direction));
        sb.append(",\n            wrap = ");
        sb.append((Object) FlexWrap.m1881toStringimpl(this.wrap));
        sb.append(",\n            justifyContent = ");
        sb.append((Object) FlexJustifyContent.m1868toStringimpl(this.justifyContent));
        sb.append(",\n            alignItems = ");
        sb.append((Object) FlexAlignItems.m1796toStringimpl(this.alignItems));
        sb.append(",\n            alignContent = ");
        sb.append((Object) FlexAlignContent.m1783toStringimpl(this.alignContent));
        sb.append(",\n            rowGap = ");
        ch.d(sb, ",\n            columnGap = ", this.rowGap);
        sb.append((Object) Dp.m9053toStringimpl(this.columnGap));
        sb.append("\n        )\n    ");
        return na8.i(sb.toString());
    }

    @Override // androidx.compose.foundation.layout.FlexBoxConfigScope
    /* JADX INFO: renamed from: wrap-CLQ35Ag */
    public void mo1839wrapCLQ35Ag(int i) {
        this.wrap = i;
    }

    @Override // androidx.compose.foundation.layout.FlexBoxConfigScope
    public void alignItems(AlignmentLine alignmentLine) {
        this.alignItems = FlexAlignItems.m1792constructorimpl(4);
        this.baselineAlignmentLine = alignmentLine;
        this.baselineAlignmentBlock = null;
    }
}
