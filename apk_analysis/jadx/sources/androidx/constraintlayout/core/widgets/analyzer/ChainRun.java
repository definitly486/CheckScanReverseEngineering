package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import defpackage.dd2;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class ChainRun extends WidgetRun {
    private int mChainStyle;
    ArrayList<WidgetRun> mWidgets;

    public ChainRun(ConstraintWidget constraintWidget, int i) {
        super(constraintWidget);
        this.mWidgets = new ArrayList<>();
        this.orientation = i;
        build();
    }

    private void build() {
        ConstraintWidget constraintWidget;
        ArrayList<WidgetRun> arrayList;
        ConstraintWidget constraintWidget2 = this.mWidget;
        ConstraintWidget previousChainMember = constraintWidget2.getPreviousChainMember(this.orientation);
        while (true) {
            ConstraintWidget constraintWidget3 = previousChainMember;
            constraintWidget = constraintWidget2;
            constraintWidget2 = constraintWidget3;
            if (constraintWidget2 == null) {
                break;
            } else {
                previousChainMember = constraintWidget2.getPreviousChainMember(this.orientation);
            }
        }
        this.mWidget = constraintWidget;
        this.mWidgets.add(constraintWidget.getRun(this.orientation));
        ConstraintWidget nextChainMember = constraintWidget.getNextChainMember(this.orientation);
        while (true) {
            arrayList = this.mWidgets;
            if (nextChainMember == null) {
                break;
            }
            arrayList.add(nextChainMember.getRun(this.orientation));
            nextChainMember = nextChainMember.getNextChainMember(this.orientation);
        }
        for (WidgetRun widgetRun : arrayList) {
            int i = this.orientation;
            if (i == 0) {
                widgetRun.mWidget.horizontalChainRun = this;
            } else if (i == 1) {
                widgetRun.mWidget.verticalChainRun = this;
            }
        }
        if (this.orientation == 0 && ((ConstraintWidgetContainer) this.mWidget.getParent()).isRtl() && this.mWidgets.size() > 1) {
            this.mWidget = ((WidgetRun) dd2.b(1, this.mWidgets)).mWidget;
        }
        int i2 = this.orientation;
        ConstraintWidget constraintWidget4 = this.mWidget;
        this.mChainStyle = i2 == 0 ? constraintWidget4.getHorizontalChainStyle() : constraintWidget4.getVerticalChainStyle();
    }

    private ConstraintWidget getFirstVisibleWidget() {
        for (int i = 0; i < this.mWidgets.size(); i++) {
            WidgetRun widgetRun = this.mWidgets.get(i);
            if (widgetRun.mWidget.getVisibility() != 8) {
                return widgetRun.mWidget;
            }
        }
        return null;
    }

    private ConstraintWidget getLastVisibleWidget() {
        for (int size = this.mWidgets.size() - 1; size >= 0; size--) {
            WidgetRun widgetRun = this.mWidgets.get(size);
            if (widgetRun.mWidget.getVisibility() != 8) {
                return widgetRun.mWidget;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void apply() {
        Iterator<WidgetRun> it = this.mWidgets.iterator();
        while (it.hasNext()) {
            it.next().apply();
        }
        int size = this.mWidgets.size();
        if (size < 1) {
            return;
        }
        ConstraintWidget constraintWidget = this.mWidgets.get(0).mWidget;
        ConstraintWidget constraintWidget2 = this.mWidgets.get(size - 1).mWidget;
        if (this.orientation == 0) {
            ConstraintAnchor constraintAnchor = constraintWidget.mLeft;
            ConstraintAnchor constraintAnchor2 = constraintWidget2.mRight;
            DependencyNode target = getTarget(constraintAnchor, 0);
            int margin = constraintAnchor.getMargin();
            ConstraintWidget firstVisibleWidget = getFirstVisibleWidget();
            if (firstVisibleWidget != null) {
                margin = firstVisibleWidget.mLeft.getMargin();
            }
            if (target != null) {
                addTarget(this.start, target, margin);
            }
            DependencyNode target2 = getTarget(constraintAnchor2, 0);
            int margin2 = constraintAnchor2.getMargin();
            ConstraintWidget lastVisibleWidget = getLastVisibleWidget();
            if (lastVisibleWidget != null) {
                margin2 = lastVisibleWidget.mRight.getMargin();
            }
            if (target2 != null) {
                addTarget(this.end, target2, -margin2);
            }
        } else {
            ConstraintAnchor constraintAnchor3 = constraintWidget.mTop;
            ConstraintAnchor constraintAnchor4 = constraintWidget2.mBottom;
            DependencyNode target3 = getTarget(constraintAnchor3, 1);
            int margin3 = constraintAnchor3.getMargin();
            ConstraintWidget firstVisibleWidget2 = getFirstVisibleWidget();
            if (firstVisibleWidget2 != null) {
                margin3 = firstVisibleWidget2.mTop.getMargin();
            }
            if (target3 != null) {
                addTarget(this.start, target3, margin3);
            }
            DependencyNode target4 = getTarget(constraintAnchor4, 1);
            int margin4 = constraintAnchor4.getMargin();
            ConstraintWidget lastVisibleWidget2 = getLastVisibleWidget();
            if (lastVisibleWidget2 != null) {
                margin4 = lastVisibleWidget2.mBottom.getMargin();
            }
            if (target4 != null) {
                addTarget(this.end, target4, -margin4);
            }
        }
        this.start.updateDelegate = this;
        this.end.updateDelegate = this;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        for (int i = 0; i < this.mWidgets.size(); i++) {
            this.mWidgets.get(i).applyToWidget();
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void clear() {
        this.mRunGroup = null;
        Iterator<WidgetRun> it = this.mWidgets.iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public long getWrapDimension() {
        int size = this.mWidgets.size();
        long wrapDimension = 0;
        for (int i = 0; i < size; i++) {
            WidgetRun widgetRun = this.mWidgets.get(i);
            wrapDimension = ((long) widgetRun.end.mMargin) + widgetRun.getWrapDimension() + wrapDimension + ((long) widgetRun.start.mMargin);
        }
        return wrapDimension;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void reset() {
        this.start.resolved = false;
        this.end.resolved = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public boolean supportsWrapComputation() {
        int size = this.mWidgets.size();
        for (int i = 0; i < size; i++) {
            if (!this.mWidgets.get(i).supportsWrapComputation()) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ChainRun ");
        sb.append(this.orientation == 0 ? "horizontal : " : "vertical : ");
        for (WidgetRun widgetRun : this.mWidgets) {
            sb.append("<");
            sb.append(widgetRun);
            sb.append("> ");
        }
        return sb.toString();
    }

    /* JADX WARN: Code duplicated, block: B:90:0x0160  */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
        int i;
        int i2;
        boolean z;
        float f;
        float f2;
        int i3;
        int i4;
        int i5;
        int i6;
        float f3;
        int i7;
        int i8;
        int i9;
        int i10;
        boolean z2;
        if (this.start.resolved && this.end.resolved) {
            ConstraintWidget parent = this.mWidget.getParent();
            boolean zIsRtl = parent instanceof ConstraintWidgetContainer ? ((ConstraintWidgetContainer) parent).isRtl() : false;
            int i11 = this.end.value - this.start.value;
            int size = this.mWidgets.size();
            int i12 = 0;
            while (true) {
                i = -1;
                i2 = 8;
                if (i12 >= size) {
                    i12 = -1;
                    break;
                } else if (this.mWidgets.get(i12).mWidget.getVisibility() != 8) {
                    break;
                } else {
                    i12++;
                }
            }
            int i13 = size - 1;
            for (int i14 = i13; i14 >= 0; i14--) {
                if (this.mWidgets.get(i14).mWidget.getVisibility() != 8) {
                    i = i14;
                    break;
                }
            }
            int i15 = 0;
            while (true) {
                if (i15 >= 2) {
                    z = zIsRtl;
                    f = 0.0f;
                    f2 = 0.0f;
                    i3 = 0;
                    i4 = 0;
                    i5 = 0;
                    break;
                }
                int i16 = 0;
                i4 = 0;
                i5 = 0;
                int i17 = 0;
                f2 = 0.0f;
                while (i16 < size) {
                    WidgetRun widgetRun = this.mWidgets.get(i16);
                    if (widgetRun.mWidget.getVisibility() == i2) {
                        z2 = zIsRtl;
                    } else {
                        i17++;
                        if (i16 > 0 && i16 >= i12) {
                            i4 += widgetRun.start.mMargin;
                        }
                        DimensionDependency dimensionDependency = widgetRun.mDimension;
                        int i18 = dimensionDependency.value;
                        boolean z3 = widgetRun.mDimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                        if (z3) {
                            int i19 = this.orientation;
                            if (i19 == 0 && !widgetRun.mWidget.mHorizontalRun.mDimension.resolved) {
                                return;
                            }
                            if (i19 == 1 && !widgetRun.mWidget.mVerticalRun.mDimension.resolved) {
                                return;
                            } else {
                                z2 = zIsRtl;
                            }
                        } else {
                            z2 = zIsRtl;
                            if (widgetRun.matchConstraintsType == 1 && i15 == 0) {
                                i18 = dimensionDependency.wrapValue;
                                i5++;
                            } else if (dimensionDependency.resolved) {
                            }
                            z3 = true;
                        }
                        if (z3) {
                            i4 += i18;
                        } else {
                            i5++;
                            float f4 = widgetRun.mWidget.mWeight[this.orientation];
                            if (f4 >= 0.0f) {
                                f2 += f4;
                            }
                        }
                        if (i16 < i13 && i16 < i) {
                            i4 += -widgetRun.end.mMargin;
                        }
                    }
                    i16++;
                    zIsRtl = z2;
                    i2 = 8;
                }
                z = zIsRtl;
                f = 0.0f;
                if (i4 < i11 || i5 == 0) {
                    i3 = i17;
                    break;
                } else {
                    i15++;
                    zIsRtl = z;
                    i2 = 8;
                }
            }
            int i20 = this.start.value;
            if (z) {
                i20 = this.end.value;
            }
            float f5 = 0.5f;
            if (i4 > i11) {
                i20 = z ? i20 + ((int) (((i4 - i11) / 2.0f) + 0.5f)) : i20 - ((int) (((i4 - i11) / 2.0f) + 0.5f));
            }
            if (i5 > 0) {
                float f6 = i11 - i4;
                int i21 = (int) ((f6 / i5) + 0.5f);
                int i22 = 0;
                int i23 = 0;
                while (i22 < size) {
                    WidgetRun widgetRun2 = this.mWidgets.get(i22);
                    float f7 = f5;
                    int i24 = i20;
                    if (widgetRun2.mWidget.getVisibility() != 8 && widgetRun2.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        DimensionDependency dimensionDependency2 = widgetRun2.mDimension;
                        if (dimensionDependency2.resolved) {
                            i21 = i21;
                            i23 = i23;
                        } else {
                            int i25 = f2 > f ? (int) (((widgetRun2.mWidget.mWeight[this.orientation] * f6) / f2) + f7) : i21;
                            int i26 = this.orientation;
                            ConstraintWidget constraintWidget = widgetRun2.mWidget;
                            if (i26 == 0) {
                                i9 = constraintWidget.mMatchConstraintMaxWidth;
                                i10 = constraintWidget.mMatchConstraintMinWidth;
                            } else {
                                i9 = constraintWidget.mMatchConstraintMaxHeight;
                                i10 = constraintWidget.mMatchConstraintMinHeight;
                            }
                            int i27 = i23;
                            int iMax = Math.max(i10, widgetRun2.matchConstraintsType == 1 ? Math.min(i25, dimensionDependency2.wrapValue) : i25);
                            if (i9 > 0) {
                                iMax = Math.min(i9, iMax);
                            }
                            if (iMax != i25) {
                                i23 = i27 + 1;
                                i25 = iMax;
                            } else {
                                i23 = i27;
                            }
                            widgetRun2.mDimension.resolve(i25);
                        }
                    } else {
                        i21 = i21;
                        i23 = i23;
                    }
                    i22++;
                    f5 = f7;
                    i20 = i24;
                    f6 = f6;
                    i21 = i21;
                }
                i6 = i20;
                f3 = f5;
                int i28 = i23;
                if (i28 > 0) {
                    i5 -= i28;
                    i4 = 0;
                    for (int i29 = 0; i29 < size; i29++) {
                        WidgetRun widgetRun3 = this.mWidgets.get(i29);
                        if (widgetRun3.mWidget.getVisibility() != 8) {
                            if (i29 > 0 && i29 >= i12) {
                                i4 += widgetRun3.start.mMargin;
                            }
                            i4 += widgetRun3.mDimension.value;
                            if (i29 < i13 && i29 < i) {
                                i4 += -widgetRun3.end.mMargin;
                            }
                        }
                    }
                }
                i8 = 2;
                if (this.mChainStyle == 2 && i28 == 0) {
                    i7 = 0;
                    this.mChainStyle = 0;
                } else {
                    i7 = 0;
                }
            } else {
                i6 = i20;
                f3 = 0.5f;
                i7 = 0;
                i8 = 2;
            }
            if (i4 > i11) {
                this.mChainStyle = i8;
            }
            if (i3 > 0 && i5 == 0 && i12 == i) {
                this.mChainStyle = i8;
            }
            int i30 = this.mChainStyle;
            if (i30 == 1) {
                int i31 = i3 > 1 ? (i11 - i4) / (i3 - 1) : i3 == 1 ? (i11 - i4) / 2 : i7;
                if (i5 > 0) {
                    i31 = i7;
                }
                int i32 = i6;
                while (i7 < size) {
                    WidgetRun widgetRun4 = this.mWidgets.get(z ? size - (i7 + 1) : i7);
                    if (widgetRun4.mWidget.getVisibility() == 8) {
                        widgetRun4.start.resolve(i32);
                        widgetRun4.end.resolve(i32);
                    } else {
                        if (i7 > 0) {
                            i32 = z ? i32 - i31 : i32 + i31;
                        }
                        if (i7 > 0 && i7 >= i12) {
                            DependencyNode dependencyNode = widgetRun4.start;
                            i32 = z ? i32 - dependencyNode.mMargin : i32 + dependencyNode.mMargin;
                        }
                        if (z) {
                            widgetRun4.end.resolve(i32);
                        } else {
                            widgetRun4.start.resolve(i32);
                        }
                        DimensionDependency dimensionDependency3 = widgetRun4.mDimension;
                        int i33 = dimensionDependency3.value;
                        if (widgetRun4.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun4.matchConstraintsType == 1) {
                            i33 = dimensionDependency3.wrapValue;
                        }
                        i32 = z ? i32 - i33 : i32 + i33;
                        if (z) {
                            widgetRun4.start.resolve(i32);
                        } else {
                            widgetRun4.end.resolve(i32);
                        }
                        widgetRun4.mResolved = true;
                        if (i7 < i13 && i7 < i) {
                            DependencyNode dependencyNode2 = widgetRun4.end;
                            i32 = z ? i32 - (-dependencyNode2.mMargin) : i32 + (-dependencyNode2.mMargin);
                        }
                    }
                    i7++;
                }
                return;
            }
            if (i30 == 0) {
                int i34 = (i11 - i4) / (i3 + 1);
                if (i5 > 0) {
                    i34 = i7;
                }
                int i35 = i6;
                while (i7 < size) {
                    WidgetRun widgetRun5 = this.mWidgets.get(z ? size - (i7 + 1) : i7);
                    if (widgetRun5.mWidget.getVisibility() == 8) {
                        widgetRun5.start.resolve(i35);
                        widgetRun5.end.resolve(i35);
                    } else {
                        int i36 = z ? i35 - i34 : i35 + i34;
                        if (i7 > 0 && i7 >= i12) {
                            DependencyNode dependencyNode3 = widgetRun5.start;
                            i36 = z ? i36 - dependencyNode3.mMargin : i36 + dependencyNode3.mMargin;
                        }
                        if (z) {
                            widgetRun5.end.resolve(i36);
                        } else {
                            widgetRun5.start.resolve(i36);
                        }
                        DimensionDependency dimensionDependency4 = widgetRun5.mDimension;
                        int iMin = dimensionDependency4.value;
                        if (widgetRun5.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun5.matchConstraintsType == 1) {
                            iMin = Math.min(iMin, dimensionDependency4.wrapValue);
                        }
                        i35 = z ? i36 - iMin : i36 + iMin;
                        if (z) {
                            widgetRun5.start.resolve(i35);
                        } else {
                            widgetRun5.end.resolve(i35);
                        }
                        if (i7 < i13 && i7 < i) {
                            DependencyNode dependencyNode4 = widgetRun5.end;
                            i35 = z ? i35 - (-dependencyNode4.mMargin) : i35 + (-dependencyNode4.mMargin);
                        }
                    }
                    i7++;
                }
                return;
            }
            if (i30 == 2) {
                int i37 = this.orientation;
                ConstraintWidget constraintWidget2 = this.mWidget;
                float horizontalBiasPercent = i37 == 0 ? constraintWidget2.getHorizontalBiasPercent() : constraintWidget2.getVerticalBiasPercent();
                if (z) {
                    horizontalBiasPercent = 1.0f - horizontalBiasPercent;
                }
                int i38 = (int) (((i11 - i4) * horizontalBiasPercent) + f3);
                if (i38 < 0 || i5 > 0) {
                    i38 = i7;
                }
                int i39 = z ? i6 - i38 : i6 + i38;
                while (i7 < size) {
                    WidgetRun widgetRun6 = this.mWidgets.get(z ? size - (i7 + 1) : i7);
                    if (widgetRun6.mWidget.getVisibility() == 8) {
                        widgetRun6.start.resolve(i39);
                        widgetRun6.end.resolve(i39);
                    } else {
                        if (i7 > 0 && i7 >= i12) {
                            DependencyNode dependencyNode5 = widgetRun6.start;
                            i39 = z ? i39 - dependencyNode5.mMargin : i39 + dependencyNode5.mMargin;
                        }
                        if (z) {
                            widgetRun6.end.resolve(i39);
                        } else {
                            widgetRun6.start.resolve(i39);
                        }
                        DimensionDependency dimensionDependency5 = widgetRun6.mDimension;
                        int i40 = dimensionDependency5.value;
                        if (widgetRun6.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun6.matchConstraintsType == 1) {
                            i40 = dimensionDependency5.wrapValue;
                        }
                        i39 = z ? i39 - i40 : i39 + i40;
                        if (z) {
                            widgetRun6.start.resolve(i39);
                        } else {
                            widgetRun6.end.resolve(i39);
                        }
                        if (i7 < i13 && i7 < i) {
                            DependencyNode dependencyNode6 = widgetRun6.end;
                            i39 = z ? i39 - (-dependencyNode6.mMargin) : i39 + (-dependencyNode6.mMargin);
                        }
                    }
                    i7++;
                }
            }
        }
    }
}
