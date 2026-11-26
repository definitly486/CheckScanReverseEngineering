package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.material3.SegmentedButtonContentMeasurePolicy;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.MultiContentMeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import defpackage.av0;
import defpackage.il1;
import defpackage.j59;
import defpackage.nl3;
import defpackage.t74;
import defpackage.tg;
import defpackage.y22;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SegmentedButtonContentMeasurePolicy implements MultiContentMeasurePolicy {
    public static final int $stable = 0;
    private Animatable<Integer, AnimationVector1D> animatable;
    private final AnimationSpec<Integer> animationSpec;
    private Integer initialOffset;
    private final y22 scope;

    public SegmentedButtonContentMeasurePolicy(y22 y22Var, AnimationSpec<Integer> animationSpec) {
        this.scope = y22Var;
        this.animationSpec = animationSpec;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$8(List list, MeasureScope measureScope, SegmentedButtonContentMeasurePolicy segmentedButtonContentMeasurePolicy, int i, List list2, int i2, Placeable.PlacementScope placementScope) {
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            Placeable placeable = (Placeable) list.get(i3);
            Placeable.PlacementScope.place$default(placementScope, placeable, 0, tg.b(i2, 2, placeable), 0.0f, 4, null);
        }
        int iMo1428roundToPx0680j_4 = measureScope.mo1428roundToPx0680j_4(SegmentedButtonKt.IconSpacing) + measureScope.mo1428roundToPx0680j_4(SegmentedButtonDefaults.INSTANCE.m3834getIconSizeD9Ej5fM());
        Animatable<Integer, AnimationVector1D> animatable = segmentedButtonContentMeasurePolicy.animatable;
        int iIntValue = iMo1428roundToPx0680j_4 + (animatable != null ? animatable.getValue().intValue() : i);
        int size2 = list2.size();
        for (int i4 = 0; i4 < size2; i4++) {
            Placeable placeable2 = (Placeable) list2.get(i4);
            Placeable.PlacementScope.place$default(placementScope, placeable2, iIntValue, tg.b(i2, 2, placeable2), 0.0f, 4, null);
        }
        return j59.a;
    }

    public final Animatable<Integer, AnimationVector1D> getAnimatable() {
        return this.animatable;
    }

    public final AnimationSpec<Integer> getAnimationSpec() {
        return this.animationSpec;
    }

    public final y22 getScope() {
        return this.scope;
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1910measure3p2s80s(final MeasureScope measureScope, List<? extends List<? extends Measurable>> list, long j) {
        Object obj;
        Object obj2;
        Object obj3;
        int i = 0;
        List<? extends Measurable> list2 = list.get(0);
        int i2 = 1;
        List<? extends Measurable> list3 = list.get(1);
        final ArrayList arrayList = new ArrayList(list2.size());
        int size = list2.size();
        int iB = 0;
        while (iB < size) {
            iB = il1.b(list2.get(iB), j, arrayList, iB, 1);
        }
        if (!arrayList.isEmpty()) {
            obj = arrayList.get(0);
            int width = ((Placeable) obj).getWidth();
            int size2 = arrayList.size() - 1;
            if (1 <= size2) {
                int i3 = 1;
                while (true) {
                    Object obj4 = arrayList.get(i3);
                    int width2 = ((Placeable) obj4).getWidth();
                    if (width < width2) {
                        obj = obj4;
                        width = width2;
                    }
                    if (i3 == size2) {
                        break;
                    }
                    i3++;
                }
            }
        } else {
            obj = null;
        }
        Placeable placeable = (Placeable) obj;
        int width3 = placeable != null ? placeable.getWidth() : 0;
        final ArrayList arrayList2 = new ArrayList(list3.size());
        int size3 = list3.size();
        int iB2 = 0;
        while (iB2 < size3) {
            ArrayList arrayList3 = arrayList2;
            iB2 = il1.b(list3.get(iB2), j, arrayList3, iB2, 1);
            arrayList2 = arrayList3;
        }
        if (!arrayList2.isEmpty()) {
            obj2 = arrayList2.get(0);
            int width4 = ((Placeable) obj2).getWidth();
            int size4 = arrayList2.size() - 1;
            if (1 <= size4) {
                int i4 = 1;
                while (true) {
                    Object obj5 = arrayList2.get(i4);
                    int width5 = ((Placeable) obj5).getWidth();
                    if (width4 < width5) {
                        obj2 = obj5;
                        width4 = width5;
                    }
                    if (i4 == size4) {
                        break;
                    }
                    i4++;
                }
            }
        } else {
            obj2 = null;
        }
        Placeable placeable2 = (Placeable) obj2;
        Integer numValueOf = placeable2 != null ? Integer.valueOf(placeable2.getWidth()) : null;
        if (!arrayList2.isEmpty()) {
            obj3 = arrayList2.get(0);
            int height = ((Placeable) obj3).getHeight();
            int size5 = arrayList2.size() - 1;
            if (1 <= size5) {
                while (true) {
                    Object obj6 = arrayList2.get(i2);
                    int height2 = ((Placeable) obj6).getHeight();
                    if (height < height2) {
                        obj3 = obj6;
                        height = height2;
                    }
                    if (i2 == size5) {
                        break;
                    }
                    i2++;
                }
            }
        } else {
            obj3 = null;
        }
        Placeable placeable3 = (Placeable) obj3;
        final int height3 = placeable3 != null ? placeable3.getHeight() : 0;
        SegmentedButtonDefaults segmentedButtonDefaults = SegmentedButtonDefaults.INSTANCE;
        int iMo1428roundToPx0680j_4 = measureScope.mo1428roundToPx0680j_4(SegmentedButtonKt.IconSpacing) + Math.max(measureScope.mo1428roundToPx0680j_4(segmentedButtonDefaults.m3834getIconSizeD9Ej5fM()), width3) + (numValueOf != null ? numValueOf.intValue() : 0);
        if (width3 == 0) {
            i = (-(measureScope.mo1428roundToPx0680j_4(SegmentedButtonKt.IconSpacing) + measureScope.mo1428roundToPx0680j_4(segmentedButtonDefaults.m3834getIconSizeD9Ej5fM()))) / 2;
        }
        final int i5 = i;
        Integer num = this.initialOffset;
        if (num == null) {
            this.initialOffset = Integer.valueOf(i5);
        } else {
            Animatable<Integer, AnimationVector1D> animatable = this.animatable;
            if (animatable == null) {
                Animatable<Integer, AnimationVector1D> animatable2 = new Animatable<>(num, VectorConvertersKt.getVectorConverter(t74.a), null, null, 12, null);
                this.animatable = animatable2;
                animatable = animatable2;
            }
            if (animatable.getTargetValue().intValue() != i5) {
                av0.c(this.scope, null, null, new SegmentedButtonContentMeasurePolicy$measure$1(animatable, i5, this, null), 3);
            }
        }
        return MeasureScope.layout$default(measureScope, iMo1428roundToPx0680j_4, height3, null, new nl3() { // from class: jl7
            @Override // defpackage.nl3
            public final Object invoke(Object obj7) {
                return SegmentedButtonContentMeasurePolicy.measure_3p2s80s$lambda$8(arrayList, measureScope, this, i5, arrayList2, height3, (Placeable.PlacementScope) obj7);
            }
        }, 4, null);
    }

    public final void setAnimatable(Animatable<Integer, AnimationVector1D> animatable) {
        this.animatable = animatable;
    }
}
