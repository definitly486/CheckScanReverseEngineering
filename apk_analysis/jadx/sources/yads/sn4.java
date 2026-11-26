package yads;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes6.dex */
public final class sn4 {
    public final tn4 a;

    public sn4(tn4 tn4Var) {
        this.a = tn4Var;
    }

    public final Bitmap a(String str) {
        return (Bitmap) this.a.get(str);
    }

    public final void a(String str, Bitmap bitmap) {
        this.a.put(str, bitmap);
    }
}
