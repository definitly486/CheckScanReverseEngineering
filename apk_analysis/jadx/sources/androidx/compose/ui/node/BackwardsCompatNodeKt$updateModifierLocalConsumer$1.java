package androidx.compose.ui.node;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class BackwardsCompatNodeKt$updateModifierLocalConsumer$1 extends gh4 implements nl3<BackwardsCompatNode, j59> {
    public static final BackwardsCompatNodeKt$updateModifierLocalConsumer$1 INSTANCE = new BackwardsCompatNodeKt$updateModifierLocalConsumer$1();

    public BackwardsCompatNodeKt$updateModifierLocalConsumer$1() {
        super(1);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(BackwardsCompatNode backwardsCompatNode) {
        invoke2(backwardsCompatNode);
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(BackwardsCompatNode backwardsCompatNode) {
        backwardsCompatNode.updateModifierLocalConsumer();
    }
}
