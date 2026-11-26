package androidx.compose.ui.layout;

import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class SubcomposeLayoutKt$SubcomposeLayout$4$1 extends gh4 implements ll3<j59> {
    final /* synthetic */ SubcomposeLayoutState $state;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubcomposeLayoutKt$SubcomposeLayout$4$1(SubcomposeLayoutState subcomposeLayoutState) {
        super(0);
        this.$state = subcomposeLayoutState;
    }

    @Override // defpackage.ll3
    public /* bridge */ /* synthetic */ j59 invoke() {
        invoke2();
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.$state.forceRecomposeChildren$ui();
    }
}
