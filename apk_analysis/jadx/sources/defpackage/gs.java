package defpackage;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.net.Uri;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class gs<Data> implements nc5<Uri, Data> {
    public final AssetManager a;
    public final a<Data> b;

    public interface a<Data> {
        s82<Data> a(AssetManager assetManager, String str);
    }

    public static class b implements oc5<Uri, AssetFileDescriptor>, a<AssetFileDescriptor> {
        public final AssetManager a;

        public b(AssetManager assetManager) {
            this.a = assetManager;
        }

        @Override // gs.a
        public final s82<AssetFileDescriptor> a(AssetManager assetManager, String str) {
            return new i93(assetManager, str);
        }

        @Override // defpackage.oc5
        public final nc5<Uri, AssetFileDescriptor> d(if5 if5Var) {
            return new gs(this.a, this);
        }
    }

    public static class c implements oc5<Uri, InputStream>, a<InputStream> {
        public final AssetManager a;

        public c(AssetManager assetManager) {
            this.a = assetManager;
        }

        @Override // gs.a
        public final s82<InputStream> a(AssetManager assetManager, String str) {
            return new f98(assetManager, str);
        }

        @Override // defpackage.oc5
        public final nc5<Uri, InputStream> d(if5 if5Var) {
            return new gs(this.a, this);
        }
    }

    public gs(AssetManager assetManager, a<Data> aVar) {
        this.a = assetManager;
        this.b = aVar;
    }

    @Override // defpackage.nc5
    public final nc5.a a(Uri uri, int i, int i2, xz5 xz5Var) {
        Uri uri2 = uri;
        return new nc5.a(new oq5(uri2), this.b.a(this.a, uri2.toString().substring(22)));
    }

    @Override // defpackage.nc5
    public final boolean b(Uri uri) {
        Uri uri2 = uri;
        return "file".equals(uri2.getScheme()) && !uri2.getPathSegments().isEmpty() && "android_asset".equals(uri2.getPathSegments().get(0));
    }
}
