package androidx.compose.ui;

import androidx.compose.runtime.State;
import defpackage.gh4;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class MediaQueryKt$derivedMediaQuery$1$1 extends gh4 implements ll3<Boolean> {
    final /* synthetic */ State<nl3<UiMediaScope, Boolean>> $currentQuery$delegate;
    final /* synthetic */ UiMediaScope $mediaScope;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public MediaQueryKt$derivedMediaQuery$1$1(UiMediaScope uiMediaScope, State<? extends nl3<? super UiMediaScope, Boolean>> state) {
        super(0);
        this.$mediaScope = uiMediaScope;
        this.$currentQuery$delegate = state;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.ll3
    public final Boolean invoke() {
        return (Boolean) MediaQueryKt.derivedMediaQuery$lambda$0(this.$currentQuery$delegate).invoke(this.$mediaScope);
    }
}
