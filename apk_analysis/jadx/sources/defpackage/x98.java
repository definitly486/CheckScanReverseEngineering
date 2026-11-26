package defpackage;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import java.io.File;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class x98<Data> implements nc5<String, Data> {
    public final nc5<Uri, Data> a;

    public static final class a implements oc5<String, AssetFileDescriptor> {
        @Override // defpackage.oc5
        public final nc5<String, AssetFileDescriptor> d(if5 if5Var) {
            return new x98(if5Var.a(Uri.class, AssetFileDescriptor.class));
        }
    }

    public static class b implements oc5<String, ParcelFileDescriptor> {
        @Override // defpackage.oc5
        public final nc5<String, ParcelFileDescriptor> d(if5 if5Var) {
            return new x98(if5Var.a(Uri.class, ParcelFileDescriptor.class));
        }
    }

    public static class c implements oc5<String, InputStream> {
        @Override // defpackage.oc5
        public final nc5<String, InputStream> d(if5 if5Var) {
            return new x98(if5Var.a(Uri.class, InputStream.class));
        }
    }

    public x98(nc5<Uri, Data> nc5Var) {
        this.a = nc5Var;
    }

    @Override // defpackage.nc5
    public final nc5.a a(String str, int i, int i2, xz5 xz5Var) {
        Uri uriFromFile;
        String str2 = str;
        if (TextUtils.isEmpty(str2)) {
            uriFromFile = null;
        } else if (str2.charAt(0) == '/') {
            uriFromFile = Uri.fromFile(new File(str2));
        } else {
            Uri uri = Uri.parse(str2);
            uriFromFile = uri.getScheme() == null ? Uri.fromFile(new File(str2)) : uri;
        }
        if (uriFromFile != null) {
            nc5<Uri, Data> nc5Var = this.a;
            if (nc5Var.b(uriFromFile)) {
                return nc5Var.a(uriFromFile, i, i2, xz5Var);
            }
        }
        return null;
    }

    @Override // defpackage.nc5
    public final boolean b(String str) {
        return true;
    }
}
