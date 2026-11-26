package androidx.compose.material3;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.il1;
import defpackage.j59;
import defpackage.nl3;
import defpackage.p07;
import defpackage.pp1;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class TabRowKt$TabRowWithSubcomposeImpl$1 implements bm3<Composer, Integer, j59> {
    final /* synthetic */ bm3<Composer, Integer, j59> $divider;
    final /* synthetic */ dm3<List<TabPosition>, Composer, Integer, j59> $indicator;
    final /* synthetic */ bm3<Composer, Integer, j59> $tabs;

    /* JADX WARN: Multi-variable type inference failed */
    public TabRowKt$TabRowWithSubcomposeImpl$1(bm3<? super Composer, ? super Integer, j59> bm3Var, bm3<? super Composer, ? super Integer, j59> bm3Var2, dm3<? super List<TabPosition>, ? super Composer, ? super Integer, j59> dm3Var) {
        this.$tabs = bm3Var;
        this.$divider = bm3Var2;
        this.$indicator = dm3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult invoke$lambda$8$lambda$7(bm3 bm3Var, final bm3 bm3Var2, final dm3 dm3Var, final SubcomposeMeasureScope subcomposeMeasureScope, final Constraints constraints) {
        final int iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(constraints.m9001unboximpl());
        List<Measurable> listSubcompose = subcomposeMeasureScope.subcompose(TabSlots.Tabs, bm3Var);
        int size = listSubcompose.size();
        final p07 p07Var = new p07();
        if (size > 0) {
            p07Var.b = iM8995getMaxWidthimpl / size;
        }
        Integer numValueOf = 0;
        List<Measurable> list = listSubcompose;
        int size2 = list.size();
        for (int i = 0; i < size2; i++) {
            numValueOf = Integer.valueOf(Math.max(listSubcompose.get(i).maxIntrinsicHeight(p07Var.b), numValueOf.intValue()));
        }
        final int iIntValue = numValueOf.intValue();
        final ArrayList arrayList = new ArrayList(listSubcompose.size());
        int size3 = list.size();
        int iB = 0;
        while (iB < size3) {
            Measurable measurable = listSubcompose.get(iB);
            long jM9001unboximpl = constraints.m9001unboximpl();
            int i2 = p07Var.b;
            iB = il1.b(measurable, Constraints.m8984copyZbe2FdA(jM9001unboximpl, i2, i2, iIntValue, iIntValue), arrayList, iB, 1);
        }
        final ArrayList arrayList2 = new ArrayList(size);
        for (int i3 = 0; i3 < size; i3++) {
            arrayList2.add(new TabPosition(Dp.m9042constructorimpl(subcomposeMeasureScope.mo1431toDpu2uoSUM(p07Var.b) * i3), subcomposeMeasureScope.mo1431toDpu2uoSUM(p07Var.b), ((Dp) pp1.c(Dp.m9040boximpl(Dp.m9042constructorimpl(subcomposeMeasureScope.mo1431toDpu2uoSUM(Math.min(listSubcompose.get(i3).maxIntrinsicWidth(iIntValue), p07Var.b)) - Dp.m9042constructorimpl(TabKt.getHorizontalTextPadding() * 2.0f))), Dp.m9040boximpl(Dp.m9042constructorimpl(24.0f)))).m9056unboximpl(), null));
        }
        return MeasureScope.layout$default(subcomposeMeasureScope, iM8995getMaxWidthimpl, iIntValue, null, new nl3() { // from class: androidx.compose.material3.m4
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return TabRowKt$TabRowWithSubcomposeImpl$1.invoke$lambda$8$lambda$7$lambda$6(arrayList, subcomposeMeasureScope, bm3Var2, p07Var, constraints, iIntValue, dm3Var, arrayList2, iM8995getMaxWidthimpl, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$8$lambda$7$lambda$6(List list, SubcomposeMeasureScope subcomposeMeasureScope, bm3 bm3Var, p07 p07Var, Constraints constraints, int i, final dm3 dm3Var, final List list2, int i2, Placeable.PlacementScope placementScope) {
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            Placeable.PlacementScope.placeRelative$default(placementScope, (Placeable) list.get(i3), i3 * p07Var.b, 0, 0.0f, 4, null);
        }
        List<Measurable> listSubcompose = subcomposeMeasureScope.subcompose(TabSlots.Divider, bm3Var);
        int size2 = listSubcompose.size();
        for (int i4 = 0; i4 < size2; i4++) {
            Placeable placeableMo7702measureBRTryo0 = listSubcompose.get(i4).mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(constraints.m9001unboximpl(), 0, 0, 0, 0, 11, null));
            Placeable.PlacementScope.placeRelative$default(placementScope, placeableMo7702measureBRTryo0, 0, i - placeableMo7702measureBRTryo0.getHeight(), 0.0f, 4, null);
        }
        List<Measurable> listSubcompose2 = subcomposeMeasureScope.subcompose(TabSlots.Indicator, ComposableLambdaKt.composableLambdaInstance(1918742627, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabRowKt$TabRowWithSubcomposeImpl$1$1$1$1$3
            public final void invoke(Composer composer, int i5) {
                if (!composer.shouldExecute((i5 & 3) != 2, i5 & 1)) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1918742627, i5, -1, "androidx.compose.material3.TabRowWithSubcomposeImpl.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (TabRow.kt:814)");
                }
                dm3Var.invoke(list2, composer, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }

            @Override // defpackage.bm3
            public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
                invoke(composer, num.intValue());
                return j59.a;
            }
        }));
        int size3 = listSubcompose2.size();
        for (int i5 = 0; i5 < size3; i5++) {
            Placeable.PlacementScope.placeRelative$default(placementScope, listSubcompose2.get(i5).mo7702measureBRTryo0(Constraints.Companion.m9005fixedJhjzzOo(i2, i)), 0, 0, 0.0f, 4, null);
        }
        return j59.a;
    }

    public final void invoke(Composer composer, int i) {
        if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1815327065, i, -1, "androidx.compose.material3.TabRowWithSubcomposeImpl.<anonymous> (TabRow.kt:768)");
        }
        Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, null);
        boolean zChanged = composer.changed(this.$tabs) | composer.changed(this.$divider) | composer.changed(this.$indicator);
        final bm3<Composer, Integer, j59> bm3Var = this.$tabs;
        final bm3<Composer, Integer, j59> bm3Var2 = this.$divider;
        final dm3<List<TabPosition>, Composer, Integer, j59> dm3Var = this.$indicator;
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new bm3() { // from class: androidx.compose.material3.n4
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    return TabRowKt$TabRowWithSubcomposeImpl$1.invoke$lambda$8$lambda$7(bm3Var, bm3Var2, dm3Var, (SubcomposeMeasureScope) obj, (Constraints) obj2);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        SubcomposeLayoutKt.SubcomposeLayout(modifierFillMaxWidth$default, (bm3) objRememberedValue, composer, 6, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
        invoke(composer, num.intValue());
        return j59.a;
    }
}
