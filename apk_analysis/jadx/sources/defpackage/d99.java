package defpackage;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class d99<Data> implements nc5<Uri, Data> {
    public static final Set<String> b = Collections.unmodifiableSet(new HashSet(Arrays.asList("file", FirebaseAnalytics.Param.CONTENT, "android.resource")));
    public final c<Data> a;

    public static final class a implements oc5<Uri, AssetFileDescriptor>, c<AssetFileDescriptor> {
        public final ContentResolver a;
        public final boolean b;

        public a(ContentResolver contentResolver, boolean z) {
            this.a = contentResolver;
            this.b = z;
        }

        @Override // d99.c
        public final s82<AssetFileDescriptor> a(Uri uri) {
            return new cs(this.a, uri, this.b);
        }

        @Override // defpackage.oc5
        public final nc5<Uri, AssetFileDescriptor> d(if5 if5Var) {
            return new d99(this);
        }
    }

    public static class b implements oc5<Uri, ParcelFileDescriptor>, c<ParcelFileDescriptor> {
        public final ContentResolver a;
        public final boolean b;

        public b(ContentResolver contentResolver, boolean z) {
            this.a = contentResolver;
            this.b = z;
        }

        @Override // d99.c
        public final s82<ParcelFileDescriptor> a(Uri uri) {
            return new k93(this.a, uri, this.b);
        }

        @Override // defpackage.oc5
        public final nc5<Uri, ParcelFileDescriptor> d(if5 if5Var) {
            return new d99(this);
        }
    }

    public interface c<Data> {
        s82<Data> a(Uri uri);
    }

    public static class d implements oc5<Uri, InputStream>, c<InputStream> {
        public final ContentResolver a;
        public final boolean b;

        public d(ContentResolver contentResolver, boolean z) {
            this.a = contentResolver;
            this.b = z;
        }

        @Override // d99.c
        public final s82<InputStream> a(Uri uri) {
            return new k98(this.a, uri, this.b);
        }

        @Override // defpackage.oc5
        public final nc5<Uri, InputStream> d(if5 if5Var) {
            return new d99(this);
        }
    }

    public d99(c<Data> cVar) {
        this.a = cVar;
    }

    @Override // defpackage.nc5
    public final nc5.a a(Uri uri, int i, int i2, xz5 xz5Var) {
        Uri uri2 = uri;
        return new nc5.a(new oq5(uri2), this.a.a(uri2));
    }

    @Override // defpackage.nc5
    public final boolean b(Uri uri) {
        return b.contains(uri.getScheme());
    }
}
