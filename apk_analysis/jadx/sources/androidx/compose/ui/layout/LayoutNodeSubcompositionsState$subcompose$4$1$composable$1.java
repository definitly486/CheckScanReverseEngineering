package androidx.compose.ui.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class LayoutNodeSubcompositionsState$subcompose$4$1$composable$1 extends gh4 implements bm3<Composer, Integer, j59> {
    final /* synthetic */ bm3<Composer, Integer, j59> $content;
    final /* synthetic */ LayoutNodeSubcompositionsState.NodeState $nodeState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LayoutNodeSubcompositionsState$subcompose$4$1$composable$1(LayoutNodeSubcompositionsState.NodeState nodeState, bm3<? super Composer, ? super Integer, j59> bm3Var) {
        super(2);
        this.$nodeState = nodeState;
        this.$content = bm3Var;
    }

    public final void invoke(Composer composer, int i) {
        if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1524156494, i, -1, "androidx.compose.ui.layout.LayoutNodeSubcompositionsState.subcompose.<anonymous>.<anonymous>.<anonymous> (SubcomposeLayout.kt:706)");
        }
        boolean active = this.$nodeState.getActive();
        bm3<Composer, Integer, j59> bm3Var = this.$content;
        composer.startReusableGroup(ComposerKt.reuseKey, Boolean.valueOf(active));
        boolean zChanged = composer.changed(active);
        if (active) {
            bm3Var.invoke(composer, 0);
        } else {
            composer.deactivateToEndGroup(zChanged);
        }
        composer.endReusableGroup();
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
