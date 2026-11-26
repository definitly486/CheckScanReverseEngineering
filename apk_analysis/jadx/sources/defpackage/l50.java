package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class l50 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ m50 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l50(m50 m50Var) {
        super(1);
        this.f = m50Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        this.f.b.onManagementClick();
        return j59.a;
    }
}
