package yads;

import defpackage.g17;

/* JADX INFO: loaded from: classes6.dex */
public final class j55 extends os {
    public final g17 b;

    public j55(g17 g17Var, boolean z) {
        super(z);
        this.b = g17Var;
    }

    @Override // yads.os
    public final boolean a(String str) {
        return (this.a && str.length() == 0) || this.b.e(str);
    }
}
