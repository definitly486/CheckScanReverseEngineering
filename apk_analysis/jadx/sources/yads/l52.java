package yads;

import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class l52 implements i36 {
    public final /* synthetic */ s52 a;

    public l52(s52 s52Var) {
        this.a = s52Var;
    }

    @Override // yads.i36
    public final void a(Object obj) {
        Boolean bool = (Boolean) obj;
        if (bool != null) {
            this.a.setChecked(bool.booleanValue());
        }
    }

    @Override // yads.i36
    public final void a(nl3 nl3Var) {
        this.a.setOnCheckedChangeListener(nl3Var);
    }
}
