package defpackage;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class g13 implements ws6 {
    public final ws6<Context> a;

    public g13(ws6<Context> ws6Var) {
        this.a = ws6Var;
    }

    @Override // defpackage.ws6
    public final Object get() {
        String packageName = this.a.get().getPackageName();
        if (packageName != null) {
            return packageName;
        }
        o2.d("Cannot return null from a non-@Nullable @Provides method");
        return null;
    }
}
