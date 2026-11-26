package androidx.compose.foundation.text;

import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.unit.Density;
import defpackage.aa4;
import defpackage.b36;
import defpackage.j59;
import defpackage.k39;
import defpackage.n05;
import defpackage.nl3;
import defpackage.y12;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class CoreTextFieldKt$CoreTextField$8$1$1$2 implements MeasurePolicy {
    final /* synthetic */ Density $density;
    final /* synthetic */ int $maxLines;
    final /* synthetic */ OffsetMapping $offsetMapping;
    final /* synthetic */ nl3<TextLayoutResult, j59> $onTextLayout;
    final /* synthetic */ LegacyTextFieldState $state;
    final /* synthetic */ TextFieldValue $value;

    /* JADX WARN: Multi-variable type inference failed */
    public CoreTextFieldKt$CoreTextField$8$1$1$2(LegacyTextFieldState legacyTextFieldState, nl3<? super TextLayoutResult, j59> nl3Var, TextFieldValue textFieldValue, OffsetMapping offsetMapping, Density density, int i) {
        this.$state = legacyTextFieldState;
        this.$onTextLayout = nl3Var;
        this.$value = textFieldValue;
        this.$offsetMapping = offsetMapping;
        this.$density = density;
        this.$maxLines = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$2(Placeable.PlacementScope placementScope) {
        return j59.a;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i) {
        this.$state.getTextDelegate().layoutIntrinsics(intrinsicMeasureScope.getLayoutDirection());
        return this.$state.getTextDelegate().getMaxIntrinsicWidth();
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
        Snapshot.Companion companion = Snapshot.Companion;
        LegacyTextFieldState legacyTextFieldState = this.$state;
        Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
        nl3<Object, j59> readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
        Snapshot snapshotMakeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
        try {
            TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
            TextLayoutResult value = layoutResult != null ? layoutResult.getValue() : null;
            k39<Integer, Integer, TextLayoutResult> k39VarM2606layout_EkL_Y$foundation = TextFieldDelegate.Companion.m2606layout_EkL_Y$foundation(this.$state.getTextDelegate(), j, measureScope.getLayoutDirection(), value);
            int iIntValue = k39VarM2606layout_EkL_Y$foundation.b.intValue();
            int iIntValue2 = k39VarM2606layout_EkL_Y$foundation.c.intValue();
            TextLayoutResult textLayoutResult = k39VarM2606layout_EkL_Y$foundation.d;
            if (!aa4.e(value, textLayoutResult)) {
                this.$state.setLayoutResult(new TextLayoutResultProxy(textLayoutResult, null, layoutResult != null ? layoutResult.getDecorationBoxCoordinates() : null, 2, null));
                this.$onTextLayout.invoke(textLayoutResult);
                CoreTextFieldKt.notifyFocusedRect(this.$state, this.$value, this.$offsetMapping);
            }
            int i = 0;
            this.$state.m2566setMinHeightForSingleLineField0680j_4(this.$density.mo1431toDpu2uoSUM(this.$maxLines == 1 ? TextDelegateKt.ceilToIntPx(textLayoutResult.getLineBottom(0)) : 0));
            return measureScope.layout(iIntValue, iIntValue2, n05.e(new b36(AlignmentLineKt.getFirstBaseline(), Integer.valueOf(Math.round(textLayoutResult.getFirstBaseline()))), new b36(AlignmentLineKt.getLastBaseline(), Integer.valueOf(Math.round(textLayoutResult.getLastBaseline())))), new y12(i));
        } catch (Throwable th) {
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
            throw th;
        }
    }
}
