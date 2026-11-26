package yads;

import android.content.res.Resources;
import androidx.appcompat.view.ContextThemeWrapper;
import defpackage.fh8;

/* JADX INFO: loaded from: classes6.dex */
public final class x60 extends ContextThemeWrapper {
    public final defpackage.cl4 a;

    public x60(android.view.ContextThemeWrapper contextThemeWrapper, int i) {
        super(contextThemeWrapper, i);
        this.a = new fh8(new defpackage.ef(this, 6));
    }

    public static final j05 a(x60 x60Var) {
        return new j05(super.getResources());
    }

    @Override // androidx.appcompat.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        return (Resources) this.a.getValue();
    }
}
