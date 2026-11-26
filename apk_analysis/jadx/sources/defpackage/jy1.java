package defpackage;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import androidx.media3.common.MimeTypes;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.FileNotFoundException;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class jy1 implements u83 {
    public final b99 a;
    public final zz5 b;

    public static final class a implements u83.a<b99> {
        @Override // u83.a
        public final u83 a(Object obj, zz5 zz5Var, sy6 sy6Var) {
            b99 b99Var = (b99) obj;
            if (aa4.e(b99Var.c, FirebaseAnalytics.Param.CONTENT)) {
                return new jy1(b99Var, zz5Var);
            }
            return null;
        }
    }

    public jy1(b99 b99Var, zz5 zz5Var) {
        this.a = b99Var;
        this.b = zz5Var;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00a2  */
    @Override // defpackage.u83
    public final Object a(pz2 pz2Var) throws FileNotFoundException {
        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor;
        List listD;
        int size;
        Bundle bundle;
        b99 b99Var = this.a;
        Uri uri = Uri.parse(b99Var.a);
        zz5 zz5Var = this.b;
        ContentResolver contentResolver = zz5Var.a.getContentResolver();
        String str = b99Var.d;
        if (aa4.e(str, "com.android.contacts") && aa4.e(qn1.c0(xz2.d(b99Var)), "display_photo")) {
            assetFileDescriptorOpenAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, "r");
            if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                wg.c(uri, "Unable to find a contact photo associated with '", "'.");
                return null;
            }
        } else if (Build.VERSION.SDK_INT >= 29 && aa4.e(str, "media") && (size = (listD = xz2.d(b99Var)).size()) >= 3 && aa4.e(listD.get(size - 3), MimeTypes.BASE_TYPE_AUDIO) && aa4.e(listD.get(size - 2), "albums")) {
            t18 t18Var = zz5Var.b;
            hn2 hn2Var = t18Var.a;
            hn2.a aVar = hn2Var instanceof hn2.a ? (hn2.a) hn2Var : null;
            if (aVar != null) {
                int i = aVar.a;
                hn2 hn2Var2 = t18Var.b;
                hn2.a aVar2 = hn2Var2 instanceof hn2.a ? (hn2.a) hn2Var2 : null;
                if (aVar2 != null) {
                    int i2 = aVar2.a;
                    bundle = new Bundle(1);
                    bundle.putParcelable("android.content.extra.SIZE", new Point(i, i2));
                } else {
                    bundle = null;
                }
            } else {
                bundle = null;
            }
            assetFileDescriptorOpenAssetFileDescriptor = contentResolver.openTypedAssetFile(uri, "image/*", bundle, null);
            if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                wg.c(uri, "Unable to find a music thumbnail associated with '", "'.");
                return null;
            }
        } else {
            assetFileDescriptorOpenAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, "r");
            if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                wg.c(uri, "Unable to open '", "'.");
                return null;
            }
        }
        return new x48(new a58(new iy6(vp3.g(assetFileDescriptorOpenAssetFileDescriptor.createInputStream())), zz5Var.f, new cy1(assetFileDescriptorOpenAssetFileDescriptor)), contentResolver.getType(uri), z82.DISK);
    }
}
