package defpackage;

import android.graphics.Bitmap;
import android.webkit.MimeTypeMap;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public final class z93 implements u83 {
    public final b99 a;
    public final zz5 b;

    public static final class a implements u83.a<b99> {
        @Override // u83.a
        public final u83 a(Object obj, zz5 zz5Var, sy6 sy6Var) {
            b99 b99Var = (b99) obj;
            String str = b99Var.c;
            if ((str != null && !str.equals("file")) || b99Var.e == null) {
                return null;
            }
            Bitmap.Config[] configArr = sb9.a;
            if (aa4.e(b99Var.c, "file") && aa4.e(qn1.V(xz2.d(b99Var)), "android_asset")) {
                return null;
            }
            return new z93(b99Var, zz5Var);
        }
    }

    public z93(b99 b99Var, zz5 zz5Var) {
        this.a = b99Var;
        this.b = zz5Var;
    }

    @Override // defpackage.u83
    public final Object a(pz2 pz2Var) {
        String str = j46.c;
        String strC = xz2.c(this.a);
        String mimeTypeFromExtension = null;
        if (strC == null) {
            ah.f("filePath == null");
            return null;
        }
        j46 j46VarA = j46.a.a(strC, false);
        n93 n93VarA = i24.a(j46VarA, this.b.f, null, null, 28);
        String strB0 = ta8.b0('.', j46VarA.c(), "");
        if (!ta8.M(strB0)) {
            String lowerCase = strB0.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            mimeTypeFromExtension = (String) eb5.a.get(lowerCase);
            if (mimeTypeFromExtension == null) {
                mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(lowerCase);
            }
        }
        return new x48(n93VarA, mimeTypeFromExtension, z82.DISK);
    }
}
