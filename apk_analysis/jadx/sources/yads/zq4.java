package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class zq4 implements pn0 {
    public final int a;

    public zq4(int i) {
        this.a = i;
    }

    @Override // yads.pn0
    public final boolean a(Context context) {
        return this.a == context.getResources().getConfiguration().orientation;
    }
}
