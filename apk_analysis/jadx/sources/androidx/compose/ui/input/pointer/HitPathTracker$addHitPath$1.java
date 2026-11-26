package androidx.compose.ui.input.pointer;

import androidx.compose.ui.Modifier;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class HitPathTracker$addHitPath$1 extends gh4 implements ll3<j59> {
    final /* synthetic */ Modifier.Node $pointerInputNode;
    final /* synthetic */ HitPathTracker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HitPathTracker$addHitPath$1(HitPathTracker hitPathTracker, Modifier.Node node) {
        super(0);
        this.this$0 = hitPathTracker;
        this.$pointerInputNode = node;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.removePointerInputModifierNode(this.$pointerInputNode);
    }

    @Override // defpackage.ll3
    public /* bridge */ /* synthetic */ j59 invoke() {
        invoke2();
        return j59.a;
    }
}
