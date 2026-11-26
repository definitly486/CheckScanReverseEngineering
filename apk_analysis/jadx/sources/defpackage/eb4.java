package defpackage;

import android.webkit.MimeTypeMap;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public final class eb4 implements u83 {
    public final b99 a;
    public final zz5 b;

    public static final class a implements u83.a<b99> {
        @Override // u83.a
        public final u83 a(Object obj, zz5 zz5Var, sy6 sy6Var) {
            b99 b99Var = (b99) obj;
            if (aa4.e(b99Var.c, "jar:file")) {
                return new eb4(b99Var, zz5Var);
            }
            return null;
        }
    }

    public eb4(b99 b99Var, zz5 zz5Var) {
        this.a = b99Var;
        this.b = zz5Var;
    }

    @Override // defpackage.u83
    public final Object a(pz2 pz2Var) {
        b99 b99Var = this.a;
        String str = b99Var.e;
        if (str == null) {
            str = "";
        }
        int iJ = ta8.J('!', 0, 6, str);
        String mimeTypeFromExtension = null;
        if (iJ == -1) {
            vh.e(b99Var, "Invalid jar:file URI: ");
            return null;
        }
        String str2 = j46.c;
        j46 j46VarA = j46.a.a(str.substring(0, iJ), false);
        j46 j46VarA2 = j46.a.a(str.substring(iJ + 1, str.length()), false);
        w93 w93Var = this.b.f;
        w93Var.getClass();
        n93 n93VarA = i24.a(j46VarA2, mm9.c(j46VarA, w93Var, new xr2(1)), null, null, 28);
        String strB0 = ta8.b0('.', j46VarA2.c(), "");
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
