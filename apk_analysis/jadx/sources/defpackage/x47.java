package defpackage;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.util.Log;
import java.io.InputStream;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class x47<DataT> implements nc5<Uri, DataT> {
    public final Context a;
    public final nc5<Integer, DataT> b;

    public static final class a implements oc5<Uri, AssetFileDescriptor> {
        public final Context a;

        public a(Context context) {
            this.a = context;
        }

        @Override // defpackage.oc5
        public final nc5<Uri, AssetFileDescriptor> d(if5 if5Var) {
            return new x47(this.a, if5Var.a(Integer.class, AssetFileDescriptor.class));
        }
    }

    public static final class b implements oc5<Uri, InputStream> {
        public final Context a;

        public b(Context context) {
            this.a = context;
        }

        @Override // defpackage.oc5
        public final nc5<Uri, InputStream> d(if5 if5Var) {
            return new x47(this.a, if5Var.a(Integer.class, InputStream.class));
        }
    }

    public x47(Context context, nc5<Integer, DataT> nc5Var) {
        this.a = context.getApplicationContext();
        this.b = nc5Var;
    }

    @Override // defpackage.nc5
    public final nc5.a a(Uri uri, int i, int i2, xz5 xz5Var) {
        Uri uri2 = uri;
        List<String> pathSegments = uri2.getPathSegments();
        int size = pathSegments.size();
        nc5<Integer, DataT> nc5Var = this.b;
        if (size == 1) {
            try {
                int i3 = Integer.parseInt(uri2.getPathSegments().get(0));
                if (i3 != 0) {
                    return nc5Var.a(Integer.valueOf(i3), i, i2, xz5Var);
                }
                if (Log.isLoggable("ResourceUriLoader", 5)) {
                    Log.w("ResourceUriLoader", "Failed to parse a valid non-0 resource id from: " + uri2);
                    return null;
                }
            } catch (NumberFormatException e) {
                if (Log.isLoggable("ResourceUriLoader", 5)) {
                    Log.w("ResourceUriLoader", "Failed to parse resource id from: " + uri2, e);
                }
            }
        } else if (pathSegments.size() == 2) {
            List<String> pathSegments2 = uri2.getPathSegments();
            String str = pathSegments2.get(0);
            String str2 = pathSegments2.get(1);
            Context context = this.a;
            int identifier = context.getResources().getIdentifier(str2, str, context.getPackageName());
            if (identifier != 0) {
                return nc5Var.a(Integer.valueOf(identifier), i, i2, xz5Var);
            }
            if (Log.isLoggable("ResourceUriLoader", 5)) {
                Log.w("ResourceUriLoader", "Failed to find resource id for: " + uri2);
                return null;
            }
        } else if (Log.isLoggable("ResourceUriLoader", 5)) {
            Log.w("ResourceUriLoader", "Failed to parse resource uri: " + uri2);
        }
        return null;
    }

    @Override // defpackage.nc5
    public final boolean b(Uri uri) {
        Uri uri2 = uri;
        return "android.resource".equals(uri2.getScheme()) && this.a.getPackageName().equals(uri2.getAuthority());
    }
}
