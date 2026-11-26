package androidx.compose.ui.semantics;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class SemanticsNode$emitFakeNodes$fakeNode$1 extends gh4 implements nl3<SemanticsPropertyReceiver, j59> {
    final /* synthetic */ Role $nodeRole;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SemanticsNode$emitFakeNodes$fakeNode$1(Role role) {
        super(1);
        this.$nodeRole = role;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.m8280setRolekuIjeqM(semanticsPropertyReceiver, this.$nodeRole.m8260unboximpl());
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        invoke2(semanticsPropertyReceiver);
        return j59.a;
    }
}
