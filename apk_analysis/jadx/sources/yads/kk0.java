package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class kk0 implements vc0 {
    public final Context a;
    public final vc0 b;

    public kk0(Context context) {
        dl0 dl0Var = new dl0();
        this.a = context.getApplicationContext();
        this.b = dl0Var;
    }

    @Override // yads.vc0
    public final wc0 a() {
        return new lk0(this.a, this.b.a());
    }

    public kk0(Context context, cf5 cf5Var) {
        this.a = context.getApplicationContext();
        this.b = cf5Var;
    }
}
