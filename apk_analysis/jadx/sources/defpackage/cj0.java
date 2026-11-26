package defpackage;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes3.dex */
public final class cj0 implements u83 {
    public final Bitmap a;

    public static final class a implements u83.a<Bitmap> {
        @Override // u83.a
        public final u83 a(Object obj, zz5 zz5Var, sy6 sy6Var) {
            return new cj0((Bitmap) obj);
        }
    }

    public cj0(Bitmap bitmap) {
        this.a = bitmap;
    }

    @Override // defpackage.u83
    public final Object a(pz2 pz2Var) {
        return new k14(new dj0(this.a), false, z82.MEMORY);
    }
}
