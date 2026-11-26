package androidx.compose.foundation.layout;

import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Density;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.eq;
import defpackage.hm;
import defpackage.j59;
import defpackage.jg;
import defpackage.ll3;
import defpackage.n7;
import defpackage.nl3;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class FlexBoxKt {
    private static final Density DefaultDensity = new Density() { // from class: androidx.compose.foundation.layout.FlexBoxKt$DefaultDensity$1
        private final float density = 1.0f;
        private final float fontScale = 1.0f;

        @Override // androidx.compose.ui.unit.Density
        public float getDensity() {
            return this.density;
        }

        @Override // androidx.compose.ui.unit.FontScaling
        public float getFontScale() {
            return this.fontScale;
        }
    };

    public static final void FlexBox(Modifier modifier, FlexBoxConfig flexBoxConfig, dm3<? super FlexBoxScope, ? super Composer, ? super Integer, j59> dm3Var, Composer composer, int i, int i2) {
        if ((i2 & 1) != 0) {
            modifier = Modifier.Companion;
        }
        if ((i2 & 2) != 0) {
            flexBoxConfig = FlexBoxConfig.Companion;
        }
        int i3 = i >> 3;
        MeasurePolicy measurePolicyFlexMultiContentMeasurePolicy = flexMultiContentMeasurePolicy(SnapshotStateKt.rememberUpdatedState(flexBoxConfig, composer, i3 & 14), composer, 0);
        int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer, 0));
        CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifier);
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        ll3<ComposeUiNode> constructor = companion.getConstructor();
        if (composer.getApplier() == null) {
            ComposablesKt.invalidApplier();
        }
        composer.startReusableNode();
        if (composer.getInserting()) {
            composer.createNode(constructor);
        } else {
            composer.useNode();
        }
        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer);
        jg.d(companion, composerM5355constructorimpl, measurePolicyFlexMultiContentMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, (bm3<? super T, ? super Modifier, j59>) hm.b(companion, composerM5355constructorimpl, Integer.valueOf(iHashCode), composerM5355constructorimpl));
        dm3Var.invoke(FlexBoxScopeInstance.INSTANCE, composer, Integer.valueOf((i3 & 112) | 6));
        composer.endNode();
    }

    private static final <T> void fastForEachUntil(ArrayList<T> arrayList, int i, int i2, nl3<? super T, j59> nl3Var) {
        if (i < 0 || i > arrayList.size()) {
            eq.c(arrayList.size(), n7.c(i, "fromIndex (", ") is out of bounds [0, "));
        } else if (i2 < 0 || i2 > arrayList.size()) {
            eq.c(arrayList.size(), n7.c(i2, "toIndex (", ") is out of bounds [0, "));
        } else {
            while (i < i2) {
                nl3Var.invoke(arrayList.get(i));
                i++;
            }
        }
    }

    private static final <T> int fastSumBy(ArrayList<T> arrayList, int i, int i2, nl3<? super T, Integer> nl3Var) {
        if (i < 0 || i > arrayList.size()) {
            eq.c(arrayList.size(), n7.c(i, "fromIndex (", ") is out of bounds [0, "));
            return 0;
        }
        if (i2 < 0 || i2 > arrayList.size()) {
            eq.c(arrayList.size(), n7.c(i2, "toIndex (", ") is out of bounds [0, "));
            return 0;
        }
        int iIntValue = 0;
        while (i < i2) {
            iIntValue += nl3Var.invoke(arrayList.get(i)).intValue();
            i++;
        }
        return iIntValue;
    }

    public static final MeasurePolicy flexMultiContentMeasurePolicy(State<? extends FlexBoxConfig> state, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(958632450, i, -1, "androidx.compose.foundation.layout.flexMultiContentMeasurePolicy (FlexBox.kt:156)");
        }
        boolean z = (((i & 14) ^ 6) > 4 && composer.changed(state)) || (i & 6) == 4;
        Object objRememberedValue = composer.rememberedValue();
        if (z || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new FlexBoxMeasurePolicy(state);
            composer.updateRememberedValue(objRememberedValue);
        }
        FlexBoxMeasurePolicy flexBoxMeasurePolicy = (FlexBoxMeasurePolicy) objRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return flexBoxMeasurePolicy;
    }

    public static final Density getDefaultDensity() {
        return DefaultDensity;
    }

    private static final int intrinsicCrossAxisSize(ResolvedFlexBoxConfig resolvedFlexBoxConfig, List<? extends IntrinsicMeasurable> list, int i, bm3<? super IntrinsicMeasurable, ? super Integer, Integer> bm3Var, bm3<? super IntrinsicMeasurable, ? super Integer, Integer> bm3Var2) {
        int i2;
        if (list.isEmpty()) {
            return 0;
        }
        int iMainAxisGap = resolvedFlexBoxConfig.mainAxisGap();
        int iCrossAxisGap = resolvedFlexBoxConfig.crossAxisGap();
        int size = list.size();
        int i3 = 0;
        int iMax = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            IntrinsicMeasurable intrinsicMeasurable = list.get(i5);
            int iIntValue = bm3Var.invoke(intrinsicMeasurable, Integer.MAX_VALUE).intValue();
            int iIntValue2 = bm3Var2.invoke(intrinsicMeasurable, Integer.valueOf(iIntValue)).intValue();
            if ((FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfig.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(1)) || FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfig.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(2))) && i4 != 0 && i4 + iIntValue > i) {
                i2 = iIntValue + iMainAxisGap;
                i3 = iMax + iCrossAxisGap + i3;
                iMax = iIntValue2;
            } else {
                i2 = iIntValue + iMainAxisGap + i4;
                iMax = Math.max(iMax, iIntValue2);
            }
            i4 = i2;
        }
        return i3 + iMax;
    }

    private static final int intrinsicMainAxisSize(ResolvedFlexBoxConfig resolvedFlexBoxConfig, List<? extends IntrinsicMeasurable> list, int i, bm3<? super IntrinsicMeasurable, ? super Integer, Integer> bm3Var) {
        if (list.isEmpty()) {
            return 0;
        }
        int iMainAxisGap = resolvedFlexBoxConfig.mainAxisGap();
        if (FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfig.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(1)) || FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfig.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(2))) {
            int size = list.size();
            int iMax = 0;
            for (int i2 = 0; i2 < size; i2++) {
                iMax = Math.max(iMax, bm3Var.invoke(list.get(i2), Integer.valueOf(i)).intValue());
            }
            return iMax;
        }
        int size2 = list.size();
        int iIntValue = 0;
        for (int i3 = 0; i3 < size2; i3++) {
            iIntValue += bm3Var.invoke(list.get(i3), Integer.valueOf(i)).intValue();
        }
        int size3 = list.size() - 1;
        return ((size3 >= 0 ? size3 : 0) * iMainAxisGap) + iIntValue;
    }
}
