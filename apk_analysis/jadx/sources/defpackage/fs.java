package defpackage;

import android.graphics.Bitmap;
import android.webkit.MimeTypeMap;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public final class fs implements u83 {
    public final b99 a;
    public final zz5 b;

    public static final class a implements u83.a<b99> {
        @Override // u83.a
        public final u83 a(Object obj, zz5 zz5Var, sy6 sy6Var) {
            b99 b99Var = (b99) obj;
            Bitmap.Config[] configArr = sb9.a;
            if (aa4.e(b99Var.c, "file") && aa4.e(qn1.V(xz2.d(b99Var)), "android_asset")) {
                return new fs(b99Var, zz5Var);
            }
            return null;
        }
    }

    public fs(b99 b99Var, zz5 zz5Var) {
        this.a = b99Var;
        this.b = zz5Var;
    }

    @Override // defpackage.u83
    public final Object a(pz2 pz2Var) {
        String strA0 = qn1.a0(qn1.O(xz2.d(this.a), 1), "/", null, null, 0, null, 62);
        zz5 zz5Var = this.b;
        a58 a58Var = new a58(new iy6(vp3.g(zz5Var.a.getAssets().open(strA0))), zz5Var.f, new ds(strA0));
        String mimeTypeFromExtension = null;
        if (!ta8.M(strA0)) {
            String strD0 = ta8.d0(ta8.d0(strA0, '#'), '?');
            String strB0 = ta8.b0('.', ta8.b0('/', strD0, strD0), "");
            if (!ta8.M(strB0)) {
                String lowerCase = strB0.toLowerCase(Locale.ROOT);
                lowerCase.getClass();
                mimeTypeFromExtension = (String) eb5.a.get(lowerCase);
                if (mimeTypeFromExtension == null) {
                    mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(lowerCase);
                }
            }
        }
        return new x48(a58Var, mimeTypeFromExtension, z82.DISK);
    }
}
