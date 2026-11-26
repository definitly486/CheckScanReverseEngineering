package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.util.TypedValue;
import android.webkit.MimeTypeMap;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.res.ResourcesCompat;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import java.io.IOException;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes3.dex */
public final class w47 implements u83 {
    public final b99 a;
    public final zz5 b;

    public static final class a implements u83.a<b99> {
        @Override // u83.a
        public final u83 a(Object obj, zz5 zz5Var, sy6 sy6Var) {
            b99 b99Var = (b99) obj;
            if (aa4.e(b99Var.c, "android.resource")) {
                return new w47(b99Var, zz5Var);
            }
            return null;
        }
    }

    public w47(b99 b99Var, zz5 zz5Var) {
        this.a = b99Var;
        this.b = zz5Var;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x005b  */
    @Override // defpackage.u83
    public final Object a(pz2 pz2Var) throws XmlPullParserException, IOException {
        Integer numO;
        String mimeTypeFromExtension;
        Drawable drawable;
        b99 b99Var = this.a;
        String str = b99Var.d;
        if (str != null) {
            if (ta8.M(str)) {
                str = null;
            }
            if (str != null) {
                String str2 = (String) qn1.c0(xz2.d(b99Var));
                if (str2 == null || (numO = qa8.o(10, str2)) == null) {
                    qz0.i(b99Var, "Invalid android.resource URI: ");
                    return null;
                }
                int iIntValue = numO.intValue();
                zz5 zz5Var = this.b;
                Context context = zz5Var.a;
                Resources resources = str.equals(context.getPackageName()) ? context.getResources() : context.getPackageManager().getResourcesForApplication(str);
                TypedValue typedValue = new TypedValue();
                resources.getValue(iIntValue, typedValue, true);
                String string = typedValue.string.toString();
                if (ta8.M(string)) {
                    mimeTypeFromExtension = null;
                } else {
                    String strD0 = ta8.d0(ta8.d0(string, '#'), '?');
                    String strB0 = ta8.b0('.', ta8.b0('/', strD0, strD0), "");
                    if (ta8.M(strB0)) {
                        mimeTypeFromExtension = null;
                    } else {
                        String lowerCase = strB0.toLowerCase(Locale.ROOT);
                        lowerCase.getClass();
                        mimeTypeFromExtension = (String) eb5.a.get(lowerCase);
                        if (mimeTypeFromExtension == null) {
                            mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(lowerCase);
                        }
                    }
                }
                if (!aa4.e(mimeTypeFromExtension, "text/xml")) {
                    return new x48(new a58(new iy6(vp3.g(resources.openRawResource(iIntValue, new TypedValue()))), zz5Var.f, new r47(str, iIntValue)), mimeTypeFromExtension, z82.DISK);
                }
                if (str.equals(context.getPackageName())) {
                    drawable = AppCompatResources.getDrawable(context, iIntValue);
                    if (drawable == null) {
                        j2.d(jh.b(iIntValue, "Invalid resource ID: "));
                        return null;
                    }
                } else {
                    XmlResourceParser xml = resources.getXml(iIntValue);
                    int next = xml.next();
                    while (next != 2 && next != 1) {
                        next = xml.next();
                    }
                    if (next != 2) {
                        throw new XmlPullParserException("No start tag found.");
                    }
                    drawable = ResourcesCompat.getDrawable(resources, iIntValue, context.getTheme());
                    if (drawable == null) {
                        j2.d(jh.b(iIntValue, "Invalid resource ID: "));
                        return null;
                    }
                }
                Drawable bitmapDrawable = drawable;
                Bitmap.Config[] configArr = sb9.a;
                boolean z = (bitmapDrawable instanceof VectorDrawable) || (bitmapDrawable instanceof VectorDrawableCompat);
                if (z) {
                    bitmapDrawable = new BitmapDrawable(context.getResources(), ss2.a(bitmapDrawable, (Bitmap.Config) c53.b(zz5Var, f24.b), zz5Var.b, zz5Var.c, (t18) c53.b(zz5Var, d24.b), zz5Var.d == re6.INEXACT));
                }
                return new k14(n24.b(bitmapDrawable), z, z82.DISK);
            }
        }
        qz0.i(b99Var, "Invalid android.resource URI: ");
        return null;
    }
}
