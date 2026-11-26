package yads;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class m81 extends gh4 implements nl3 {
    public final /* synthetic */ i81 b;
    public final /* synthetic */ jj2 c;
    public final /* synthetic */ a91 d;
    public final /* synthetic */ fs2 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m81(i81 i81Var, fs2 fs2Var, jj2 jj2Var, a91 a91Var, fs2 fs2Var2) {
        super(1);
        this.b = i81Var;
        this.c = jj2Var;
        this.d = a91Var;
        this.e = fs2Var2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        i81 i81Var = this.b;
        jj2 jj2Var = this.c;
        a91 a91Var = this.d;
        fs2 fs2Var = this.e;
        a91Var.getClass();
        jj2Var.setShowLineSeparators(a91.a(i81Var, fs2Var));
        return j59.a;
    }
}
