package androidx.compose.foundation.lazy.layout;

import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.RulerScope;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.DpRect;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.il1;
import defpackage.j59;
import defpackage.nl3;
import defpackage.ul2;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class LazyLayoutMeasureScopeImpl implements LazyLayoutMeasureScope, MeasureScope {
    public static final int $stable = 0;
    private final LazyLayoutItemContentFactory itemContentFactory;
    private final LazyLayoutItemProvider itemProvider;
    private final SubcomposeMeasureScope subcomposeMeasureScope;
    private final MutableIntObjectMap<List<Placeable>> placeablesCache = IntObjectMapKt.mutableIntObjectMapOf();
    private final MutableIntObjectMap<List<Measurable>> measurablesCache = IntObjectMapKt.mutableIntObjectMapOf();

    public LazyLayoutMeasureScopeImpl(LazyLayoutItemContentFactory lazyLayoutItemContentFactory, SubcomposeMeasureScope subcomposeMeasureScope) {
        this.itemContentFactory = lazyLayoutItemContentFactory;
        this.subcomposeMeasureScope = subcomposeMeasureScope;
        this.itemProvider = lazyLayoutItemContentFactory.getItemProvider().invoke();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope
    public List<Measurable> compose(int i) {
        List<Measurable> list = this.measurablesCache.get(i);
        if (list != null) {
            return list;
        }
        Object key = this.itemProvider.getKey(i);
        List<Measurable> listSubcompose = this.subcomposeMeasureScope.subcompose(key, this.itemContentFactory.getContent(i, key, this.itemProvider.getContentType(i)));
        this.measurablesCache.set(i, listSubcompose);
        return listSubcompose;
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.subcomposeMeasureScope.getDensity();
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public float getFontScale() {
        return this.subcomposeMeasureScope.getFontScale();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    public LayoutDirection getLayoutDirection() {
        return this.subcomposeMeasureScope.getLayoutDirection();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    public boolean isLookingAhead() {
        return this.subcomposeMeasureScope.isLookingAhead();
    }

    @Override // androidx.compose.ui.layout.MeasureScope
    public MeasureResult layout(int i, int i2, Map<AlignmentLine, Integer> map, nl3<? super Placeable.PlacementScope, j59> nl3Var) {
        return this.subcomposeMeasureScope.layout(i, i2, map, nl3Var);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope
    @ul2
    /* JADX INFO: renamed from: measure-0kLqBqw */
    public List<Placeable> mo2221measure0kLqBqw(int i, long j) {
        List<Placeable> list = this.placeablesCache.get(i);
        if (list != null) {
            return list;
        }
        Object key = this.itemProvider.getKey(i);
        List<Measurable> listSubcompose = this.subcomposeMeasureScope.subcompose(key, this.itemContentFactory.getContent(i, key, this.itemProvider.getContentType(i)));
        int size = listSubcompose.size();
        ArrayList arrayList = new ArrayList(size);
        int iB = 0;
        while (iB < size) {
            iB = il1.b(listSubcompose.get(iB), j, arrayList, iB, 1);
        }
        this.placeablesCache.set(i, arrayList);
        return arrayList;
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: roundToPx--R2X_6o */
    public int mo1427roundToPxR2X_6o(long j) {
        return this.subcomposeMeasureScope.mo1427roundToPxR2X_6o(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: roundToPx-0680j_4 */
    public int mo1428roundToPx0680j_4(float f) {
        return this.subcomposeMeasureScope.mo1428roundToPx0680j_4(f);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* JADX INFO: renamed from: toDp-GaN1DYA */
    public float mo1429toDpGaN1DYA(long j) {
        return this.subcomposeMeasureScope.mo1429toDpGaN1DYA(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toDp-u2uoSUM */
    public float mo1431toDpu2uoSUM(int i) {
        return this.subcomposeMeasureScope.mo1431toDpu2uoSUM(i);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toDpSize-k-rfVVM */
    public long mo1432toDpSizekrfVVM(long j) {
        return this.subcomposeMeasureScope.mo1432toDpSizekrfVVM(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toPx--R2X_6o */
    public float mo1433toPxR2X_6o(long j) {
        return this.subcomposeMeasureScope.mo1433toPxR2X_6o(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toPx-0680j_4 */
    public float mo1434toPx0680j_4(float f) {
        return this.subcomposeMeasureScope.mo1434toPx0680j_4(f);
    }

    @Override // androidx.compose.ui.unit.Density
    public Rect toRect(DpRect dpRect) {
        return this.subcomposeMeasureScope.toRect(dpRect);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toSize-XkaWNTQ */
    public long mo1435toSizeXkaWNTQ(long j) {
        return this.subcomposeMeasureScope.mo1435toSizeXkaWNTQ(j);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* JADX INFO: renamed from: toSp-0xMU5do */
    public long mo1436toSp0xMU5do(float f) {
        return this.subcomposeMeasureScope.mo1436toSp0xMU5do(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toSp-kPz2Gy4 */
    public long mo1437toSpkPz2Gy4(float f) {
        return this.subcomposeMeasureScope.mo1437toSpkPz2Gy4(f);
    }

    @Override // androidx.compose.ui.layout.MeasureScope
    public MeasureResult layout(int i, int i2, Map<AlignmentLine, Integer> map, nl3<? super RulerScope, j59> nl3Var, nl3<? super Placeable.PlacementScope, j59> nl3Var2) {
        return this.subcomposeMeasureScope.layout(i, i2, map, nl3Var, nl3Var2);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toDp-u2uoSUM */
    public float mo1430toDpu2uoSUM(float f) {
        return this.subcomposeMeasureScope.mo1430toDpu2uoSUM(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toSp-kPz2Gy4 */
    public long mo1438toSpkPz2Gy4(int i) {
        return this.subcomposeMeasureScope.mo1438toSpkPz2Gy4(i);
    }
}
