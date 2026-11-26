package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class bm8 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ am8 f;
    public final /* synthetic */ kz7 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bm8(am8 am8Var, kz7 kz7Var) {
        super(1);
        this.f = am8Var;
        this.g = kz7Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        am8.b bVar = this.f.b;
        kz7 kz7Var = this.g;
        bVar.onTaskClicked(kz7Var.a, kz7Var.j, kz7Var.l);
        return j59.a;
    }
}
