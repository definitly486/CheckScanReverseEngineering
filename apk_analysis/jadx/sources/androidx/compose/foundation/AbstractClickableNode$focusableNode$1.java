package androidx.compose.foundation;

import defpackage.j59;
import defpackage.nl3;
import defpackage.qm3;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class AbstractClickableNode$focusableNode$1 extends qm3 implements nl3<Boolean, j59> {
    public AbstractClickableNode$focusableNode$1(Object obj) {
        super(1, obj, AbstractClickableNode.class, "onFocusChange", "onFocusChange(Z)V", 0);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(Boolean bool) {
        invoke(bool.booleanValue());
        return j59.a;
    }

    public final void invoke(boolean z) {
        ((AbstractClickableNode) this.receiver).onFocusChange(z);
    }
}
