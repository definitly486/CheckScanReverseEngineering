package defpackage;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.util.Log;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class q47<Data> implements nc5<Integer, Data> {
    public final nc5<Uri, Data> a;
    public final Resources b;

    public static final class a implements oc5<Integer, AssetFileDescriptor> {
        public final Resources a;

        public a(Resources resources) {
            this.a = resources;
        }

        @Override // defpackage.oc5
        public final nc5<Integer, AssetFileDescriptor> d(if5 if5Var) {
            return new q47(this.a, if5Var.a(Uri.class, AssetFileDescriptor.class));
        }
    }

    public static class b implements oc5<Integer, InputStream> {
        public final Resources a;

        public b(Resources resources) {
            this.a = resources;
        }

        @Override // defpackage.oc5
        public final nc5<Integer, InputStream> d(if5 if5Var) {
            return new q47(this.a, if5Var.a(Uri.class, InputStream.class));
        }
    }

    public static class c implements oc5<Integer, Uri> {
        public final Resources a;

        public c(Resources resources) {
            this.a = resources;
        }

        @Override // defpackage.oc5
        public final nc5<Integer, Uri> d(if5 if5Var) {
            return new q47(this.a, m59.a);
        }
    }

    public q47(Resources resources, nc5<Uri, Data> nc5Var) {
        this.b = resources;
        this.a = nc5Var;
    }

    @Override // defpackage.nc5
    public final nc5.a a(Integer num, int i, int i2, xz5 xz5Var) {
        Uri uri;
        Integer num2 = num;
        try {
            uri = Uri.parse("android.resource://" + this.b.getResourcePackageName(num2.intValue()) + '/' + num2);
        } catch (Resources.NotFoundException e) {
            if (Log.isLoggable("ResourceLoader", 5)) {
                Log.w("ResourceLoader", "Received invalid resource id: " + num2, e);
            }
            uri = null;
        }
        if (uri == null) {
            return null;
        }
        return this.a.a(uri, i, i2, xz5Var);
    }

    @Override // defpackage.nc5
    public final boolean b(Integer num) {
        return true;
    }
}
