package defpackage;

import android.content.Context;
import android.net.Uri;
import androidx.media3.common.MimeTypes;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class g95 implements nc5<Uri, InputStream> {
    public final Context a;

    public static class a implements oc5<Uri, InputStream> {
        public final Context a;

        public a(Context context) {
            this.a = context;
        }

        @Override // defpackage.oc5
        public final nc5<Uri, InputStream> d(if5 if5Var) {
            return new g95(this.a);
        }
    }

    public g95(Context context) {
        this.a = context.getApplicationContext();
    }

    @Override // defpackage.nc5
    public final nc5.a<InputStream> a(Uri uri, int i, int i2, xz5 xz5Var) {
        Long l;
        Uri uri2 = uri;
        if (i == Integer.MIN_VALUE || i2 == Integer.MIN_VALUE || i > 512 || i2 > 384 || (l = (Long) xz5Var.c(kd9.d)) == null || l.longValue() != -1) {
            return null;
        }
        oq5 oq5Var = new oq5(uri2);
        Context context = this.a;
        return new nc5.a<>(oq5Var, zt8.d(context, uri2, new zt8.b(context.getContentResolver())));
    }

    @Override // defpackage.nc5
    public final boolean b(Uri uri) {
        Uri uri2 = uri;
        return f95.b(uri2) && uri2.getPathSegments().contains(MimeTypes.BASE_TYPE_VIDEO);
    }
}
