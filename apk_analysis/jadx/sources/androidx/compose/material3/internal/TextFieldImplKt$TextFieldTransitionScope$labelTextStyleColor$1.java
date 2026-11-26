package androidx.compose.material3.internal;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.Color;
import defpackage.dm3;

/* JADX INFO: loaded from: classes2.dex */
public final class TextFieldImplKt$TextFieldTransitionScope$labelTextStyleColor$1 implements dm3<Transition.Segment<InputPhase>, Composer, Integer, FiniteAnimationSpec<Color>> {
    final /* synthetic */ FiniteAnimationSpec<Color> $colorTransitionSpec;

    public TextFieldImplKt$TextFieldTransitionScope$labelTextStyleColor$1(FiniteAnimationSpec<Color> finiteAnimationSpec) {
        this.$colorTransitionSpec = finiteAnimationSpec;
    }

    public final FiniteAnimationSpec<Color> invoke(Transition.Segment<InputPhase> segment, Composer composer, int i) {
        composer.startReplaceGroup(1954111929);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1954111929, i, -1, "androidx.compose.material3.internal.TextFieldTransitionScope.<anonymous> (TextFieldImpl.kt:438)");
        }
        FiniteAnimationSpec<Color> finiteAnimationSpec = this.$colorTransitionSpec;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return finiteAnimationSpec;
    }

    @Override // defpackage.dm3
    public /* bridge */ /* synthetic */ FiniteAnimationSpec<Color> invoke(Transition.Segment<InputPhase> segment, Composer composer, Integer num) {
        return invoke(segment, composer, num.intValue());
    }
}
