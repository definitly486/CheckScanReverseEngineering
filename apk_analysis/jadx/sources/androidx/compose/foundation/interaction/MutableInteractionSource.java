package androidx.compose.foundation.interaction;

import defpackage.e02;
import defpackage.j59;

/* JADX INFO: loaded from: classes.dex */
public interface MutableInteractionSource extends InteractionSource {
    Object emit(Interaction interaction, e02<? super j59> e02Var);

    boolean tryEmit(Interaction interaction);
}
