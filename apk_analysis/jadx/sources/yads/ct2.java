package yads;

import android.content.Context;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes6.dex */
public final class ct2 implements dt2 {
    public final Context a;
    public final by4 b;

    public ct2(Context context, by4 by4Var) {
        this.a = context;
        this.b = by4Var;
    }

    @Override // yads.dt2
    public final Parcelable getValue() {
        return cy4.a(this.a, this.b);
    }
}
