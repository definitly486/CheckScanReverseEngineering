package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class k47 implements i47<Uri, Drawable> {
    public static final qz5<Resources.Theme> b = new qz5<>("com.bumptech.glide.load.resource.bitmap.Downsampler.Theme", null, qz5.e);
    public final Context a;

    public k47(Context context) {
        this.a = context.getApplicationContext();
    }

    @Override // defpackage.i47
    public final /* bridge */ /* synthetic */ e47<Drawable> a(Uri uri, int i, int i2, xz5 xz5Var) {
        return c(uri, xz5Var);
    }

    @Override // defpackage.i47
    public final boolean b(Uri uri, xz5 xz5Var) {
        String scheme = uri.getScheme();
        return scheme != null && scheme.equals("android.resource");
    }

    public final e47 c(Uri uri, xz5 xz5Var) {
        Context contextCreatePackageContext;
        int identifier;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            c9.g(uri, "Package name for ", " is null or empty");
            return null;
        }
        Context context = this.a;
        if (authority.equals(context.getPackageName())) {
            contextCreatePackageContext = context;
        } else {
            try {
                contextCreatePackageContext = context.createPackageContext(authority, 0);
            } catch (PackageManager.NameNotFoundException e) {
                if (!authority.contains(context.getPackageName())) {
                    cc.e(rk3.c(uri, "Failed to obtain context or unrecognized Uri format for: "), e);
                    return null;
                }
                contextCreatePackageContext = context;
            }
        }
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            List<String> pathSegments2 = uri.getPathSegments();
            String authority2 = uri.getAuthority();
            String str = pathSegments2.get(0);
            String str2 = pathSegments2.get(1);
            identifier = contextCreatePackageContext.getResources().getIdentifier(str2, str, authority2);
            if (identifier == 0) {
                identifier = Resources.getSystem().getIdentifier(str2, str, "android");
            }
            if (identifier == 0) {
                fg.c(rk3.c(uri, "Failed to find resource id for: "));
                return null;
            }
        } else {
            if (pathSegments.size() != 1) {
                fg.c(rk3.c(uri, "Unrecognized Uri format: "));
                return null;
            }
            try {
                identifier = Integer.parseInt(uri.getPathSegments().get(0));
            } catch (NumberFormatException e2) {
                cc.e(rk3.c(uri, "Unrecognized Uri format: "), e2);
                return null;
            }
        }
        Resources.Theme theme = authority.equals(context.getPackageName()) ? (Resources.Theme) xz5Var.c(b) : null;
        Drawable drawableA = theme == null ? cs2.a(context, contextCreatePackageContext, identifier, null) : cs2.a(context, context, identifier, theme);
        if (drawableA != null) {
            return new ho5(drawableA);
        }
        return null;
    }
}
