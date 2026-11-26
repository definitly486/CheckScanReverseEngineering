package yads;

import defpackage.ll3;

/* JADX INFO: loaded from: classes6.dex */
public final class ks2 extends os {
    public final ll3 b;

    public ks2(boolean z, ll3 ll3Var) {
        super(z);
        this.b = ll3Var;
    }

    @Override // yads.os
    public final boolean a(String str) {
        return (this.a && str.length() == 0) || ((Boolean) this.b.invoke()).booleanValue();
    }
}
