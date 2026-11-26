package androidx.compose.ui.focus;

import defpackage.gh4;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class FocusRestorerKt$saveFocusedChild$1$1 extends gh4 implements ll3<Object> {
    final /* synthetic */ int $previouslyFocusedChildHash;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FocusRestorerKt$saveFocusedChild$1$1(int i) {
        super(0);
        this.$previouslyFocusedChildHash = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        return Integer.valueOf(this.$previouslyFocusedChildHash);
    }
}
