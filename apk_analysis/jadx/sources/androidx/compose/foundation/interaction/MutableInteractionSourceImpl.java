package androidx.compose.foundation.interaction;

import defpackage.a32;
import defpackage.bt7;
import defpackage.cu0;
import defpackage.e02;
import defpackage.j59;
import defpackage.vg5;

/* JADX INFO: loaded from: classes.dex */
final class MutableInteractionSourceImpl implements MutableInteractionSource {
    private final vg5<Interaction> interactions = bt7.b(0, 16, cu0.DROP_OLDEST, 1);

    @Override // androidx.compose.foundation.interaction.MutableInteractionSource
    public Object emit(Interaction interaction, e02<? super j59> e02Var) {
        Object objEmit = getInteractions().emit(interaction, e02Var);
        return objEmit == a32.COROUTINE_SUSPENDED ? objEmit : j59.a;
    }

    @Override // androidx.compose.foundation.interaction.MutableInteractionSource
    public boolean tryEmit(Interaction interaction) {
        return getInteractions().e(interaction);
    }

    @Override // androidx.compose.foundation.interaction.InteractionSource
    public vg5<Interaction> getInteractions() {
        return this.interactions;
    }
}
