package androidx.compose.material3;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.selection.SelectableGroupKt;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
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
import defpackage.gx2;
import defpackage.j59;
import defpackage.nl3;
import defpackage.y22;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class TabRowKt$ScrollableTabRowWithSubcomposeImpl$1 implements bm3<Composer, Integer, j59> {
    final /* synthetic */ bm3<Composer, Integer, j59> $divider;
    final /* synthetic */ float $edgePadding;
    final /* synthetic */ dm3<List<TabPosition>, Composer, Integer, j59> $indicator;
    final /* synthetic */ ScrollState $scrollState;
    final /* synthetic */ int $selectedTabIndex;
    final /* synthetic */ bm3<Composer, Integer, j59> $tabs;

    /* JADX WARN: Multi-variable type inference failed */
    public TabRowKt$ScrollableTabRowWithSubcomposeImpl$1(ScrollState scrollState, float f, bm3<? super Composer, ? super Integer, j59> bm3Var, bm3<? super Composer, ? super Integer, j59> bm3Var2, dm3<? super List<TabPosition>, ? super Composer, ? super Integer, j59> dm3Var, int i) {
        this.$scrollState = scrollState;
        this.$edgePadding = f;
        this.$tabs = bm3Var;
        this.$divider = bm3Var2;
        this.$indicator = dm3Var;
        this.$selectedTabIndex = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult invoke$lambda$9$lambda$8(float f, bm3 bm3Var, final bm3 bm3Var2, final ScrollableTabData scrollableTabData, final int i, final dm3 dm3Var, final SubcomposeMeasureScope subcomposeMeasureScope, final Constraints constraints) {
        int iMo1428roundToPx0680j_4 = subcomposeMeasureScope.mo1428roundToPx0680j_4(TabRowDefaults.INSTANCE.m3986getScrollableTabRowMinTabWidthD9Ej5fM());
        final int iMo1428roundToPx0680j_5 = subcomposeMeasureScope.mo1428roundToPx0680j_4(f);
        List<Measurable> listSubcompose = subcomposeMeasureScope.subcompose(TabSlots.Tabs, bm3Var);
        Integer numValueOf = 0;
        List<Measurable> list = listSubcompose;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            numValueOf = Integer.valueOf(Math.max(numValueOf.intValue(), listSubcompose.get(i2).maxIntrinsicHeight(Integer.MAX_VALUE)));
        }
        final int iIntValue = numValueOf.intValue();
        long jM8985copyZbe2FdA$default = Constraints.m8985copyZbe2FdA$default(constraints.m9001unboximpl(), iMo1428roundToPx0680j_4, 0, iIntValue, iIntValue, 2, null);
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        int size2 = list.size();
        for (int i3 = 0; i3 < size2; i3++) {
            Measurable measurable = listSubcompose.get(i3);
            Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(jM8985copyZbe2FdA$default);
            float fM9042constructorimpl = Dp.m9042constructorimpl(subcomposeMeasureScope.mo1431toDpu2uoSUM(Math.min(measurable.maxIntrinsicWidth(placeableMo7702measureBRTryo0.getHeight()), placeableMo7702measureBRTryo0.getWidth())) - Dp.m9042constructorimpl(TabKt.getHorizontalTextPadding() * 2.0f));
            arrayList.add(placeableMo7702measureBRTryo0);
            arrayList2.add(Dp.m9040boximpl(fM9042constructorimpl));
        }
        Integer numValueOf2 = Integer.valueOf(iMo1428roundToPx0680j_5 * 2);
        int size3 = arrayList.size();
        for (int i4 = 0; i4 < size3; i4++) {
            numValueOf2 = Integer.valueOf(((Placeable) arrayList.get(i4)).getWidth() + numValueOf2.intValue());
        }
        final int iIntValue2 = numValueOf2.intValue();
        return MeasureScope.layout$default(subcomposeMeasureScope, iIntValue2, iIntValue, null, new nl3() { // from class: androidx.compose.material3.j4
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return TabRowKt$ScrollableTabRowWithSubcomposeImpl$1.invoke$lambda$9$lambda$8$lambda$7(iMo1428roundToPx0680j_5, arrayList, subcomposeMeasureScope, bm3Var2, scrollableTabData, i, arrayList2, constraints, iIntValue2, iIntValue, dm3Var, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$9$lambda$8$lambda$7(int i, List list, SubcomposeMeasureScope subcomposeMeasureScope, bm3 bm3Var, ScrollableTabData scrollableTabData, int i2, List list2, Constraints constraints, int i3, int i4, final dm3 dm3Var, Placeable.PlacementScope placementScope) {
        final ArrayList arrayList = new ArrayList();
        int size = list.size();
        int width = i;
        for (int i5 = 0; i5 < size; i5++) {
            Placeable placeable = (Placeable) list.get(i5);
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable, width, 0, 0.0f, 4, null);
            arrayList.add(new TabPosition(subcomposeMeasureScope.mo1431toDpu2uoSUM(width), subcomposeMeasureScope.mo1431toDpu2uoSUM(placeable.getWidth()), ((Dp) list2.get(i5)).m9056unboximpl(), null));
            width += placeable.getWidth();
        }
        List<Measurable> listSubcompose = subcomposeMeasureScope.subcompose(TabSlots.Divider, bm3Var);
        int size2 = listSubcompose.size();
        for (int i6 = 0; i6 < size2; i6++) {
            Placeable placeableMo7702measureBRTryo0 = listSubcompose.get(i6).mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(constraints.m9001unboximpl(), i3, i3, 0, 0, 8, null));
            Placeable.PlacementScope.placeRelative$default(placementScope, placeableMo7702measureBRTryo0, 0, i4 - placeableMo7702measureBRTryo0.getHeight(), 0.0f, 4, null);
        }
        List<Measurable> listSubcompose2 = subcomposeMeasureScope.subcompose(TabSlots.Indicator, ComposableLambdaKt.composableLambdaInstance(2125766411, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabRowKt$ScrollableTabRowWithSubcomposeImpl$1$1$1$2$3
            public final void invoke(Composer composer, int i7) {
                if (!composer.shouldExecute((i7 & 3) != 2, i7 & 1)) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(2125766411, i7, -1, "androidx.compose.material3.ScrollableTabRowWithSubcomposeImpl.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (TabRow.kt:920)");
                }
                dm3Var.invoke(arrayList, composer, 0);
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
        for (int i7 = 0; i7 < size3; i7++) {
            Placeable.PlacementScope.placeRelative$default(placementScope, listSubcompose2.get(i7).mo7702measureBRTryo0(Constraints.Companion.m9005fixedJhjzzOo(i3, i4)), 0, 0, 0.0f, 4, null);
        }
        scrollableTabData.onLaidOut(subcomposeMeasureScope, i, arrayList, i2);
        return j59.a;
    }

    public final void invoke(Composer composer, int i) {
        if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(2077251399, i, -1, "androidx.compose.material3.ScrollableTabRowWithSubcomposeImpl.<anonymous> (TabRow.kt:836)");
        }
        Object objRememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (objRememberedValue == companion.getEmpty()) {
            objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composer);
            composer.updateRememberedValue(objRememberedValue);
        }
        y22 y22Var = (y22) objRememberedValue;
        FiniteAnimationSpec finiteAnimationSpecValue = MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultSpatial, composer, 6);
        boolean zChanged = composer.changed(this.$scrollState) | composer.changed(y22Var);
        ScrollState scrollState = this.$scrollState;
        Object objRememberedValue2 = composer.rememberedValue();
        if (zChanged || objRememberedValue2 == companion.getEmpty()) {
            objRememberedValue2 = new ScrollableTabData(scrollState, y22Var, finiteAnimationSpecValue);
            composer.updateRememberedValue(objRememberedValue2);
        }
        final ScrollableTabData scrollableTabData = (ScrollableTabData) objRememberedValue2;
        Modifier modifierClipToBounds = ClipKt.clipToBounds(SelectableGroupKt.selectableGroup(ScrollKt.horizontalScroll$default(SizeKt.wrapContentSize$default(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, null), Alignment.Companion.getCenterStart(), false, 2, null), this.$scrollState, false, null, false, 14, null)));
        boolean zChanged2 = composer.changed(this.$edgePadding) | composer.changed(this.$tabs) | composer.changed(this.$divider) | composer.changed(this.$indicator) | composer.changedInstance(scrollableTabData) | composer.changed(this.$selectedTabIndex);
        final float f = this.$edgePadding;
        final bm3<Composer, Integer, j59> bm3Var = this.$tabs;
        final bm3<Composer, Integer, j59> bm3Var2 = this.$divider;
        final int i2 = this.$selectedTabIndex;
        final dm3<List<TabPosition>, Composer, Integer, j59> dm3Var = this.$indicator;
        Object objRememberedValue3 = composer.rememberedValue();
        if (zChanged2 || objRememberedValue3 == companion.getEmpty()) {
            Object obj = new bm3() { // from class: androidx.compose.material3.k4
                @Override // defpackage.bm3
                public final Object invoke(Object obj2, Object obj3) {
                    return TabRowKt$ScrollableTabRowWithSubcomposeImpl$1.invoke$lambda$9$lambda$8(f, bm3Var, bm3Var2, scrollableTabData, i2, dm3Var, (SubcomposeMeasureScope) obj2, (Constraints) obj3);
                }
            };
            composer.updateRememberedValue(obj);
            objRememberedValue3 = obj;
        }
        SubcomposeLayoutKt.SubcomposeLayout(modifierClipToBounds, (bm3) objRememberedValue3, composer, 0, 0);
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
