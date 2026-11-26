package androidx.compose.ui.focus;

import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class FocusOrderToProperties implements FocusPropertiesScope {
    public static final int $stable = 0;
    private final nl3<FocusOrder, j59> focusOrderReceiver;

    /* JADX WARN: Multi-variable type inference failed */
    public FocusOrderToProperties(nl3<? super FocusOrder, j59> nl3Var) {
        this.focusOrderReceiver = nl3Var;
    }

    @Override // androidx.compose.ui.focus.FocusPropertiesScope
    public void apply(FocusProperties focusProperties) {
        this.focusOrderReceiver.invoke(new FocusOrder(focusProperties));
    }

    public final nl3<FocusOrder, j59> getFocusOrderReceiver() {
        return this.focusOrderReceiver;
    }
}
