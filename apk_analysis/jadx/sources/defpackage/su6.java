package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore;
import android.text.TextUtils;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class su6<DataT> implements nc5<Uri, DataT> {
    public final Context a;
    public final nc5<File, DataT> b;
    public final nc5<Uri, DataT> c;
    public final Class<DataT> d;

    public static abstract class a<DataT> implements oc5<Uri, DataT> {
        public final Context a;
        public final Class<DataT> b;

        public a(Context context, Class<DataT> cls) {
            this.a = context;
            this.b = cls;
        }

        @Override // defpackage.oc5
        public final nc5<Uri, DataT> d(if5 if5Var) {
            Class<DataT> cls = this.b;
            return new su6(this.a, if5Var.a(File.class, cls), if5Var.a(Uri.class, cls), cls);
        }
    }

    public static final class b extends a<ParcelFileDescriptor> {
    }

    public static final class c extends a<InputStream> {
    }

    public static final class d<DataT> implements s82<DataT> {
        public static final String[] l = {"_data"};
        public final Context b;
        public final nc5<File, DataT> c;
        public final nc5<Uri, DataT> d;
        public final Uri e;
        public final int f;
        public final int g;
        public final xz5 h;
        public final Class<DataT> i;
        public volatile boolean j;
        public volatile s82<DataT> k;

        public d(Context context, nc5<File, DataT> nc5Var, nc5<Uri, DataT> nc5Var2, Uri uri, int i, int i2, xz5 xz5Var, Class<DataT> cls) {
            this.b = context.getApplicationContext();
            this.c = nc5Var;
            this.d = nc5Var2;
            this.e = uri;
            this.f = i;
            this.g = i2;
            this.h = xz5Var;
            this.i = cls;
        }

        @Override // defpackage.s82
        public final Class<DataT> a() {
            return this.i;
        }

        @Override // defpackage.s82
        public final void b() {
            s82<DataT> s82Var = this.k;
            if (s82Var != null) {
                s82Var.b();
            }
        }

        @Override // defpackage.s82
        public final y82 c() {
            return y82.LOCAL;
        }

        @Override // defpackage.s82
        public final void cancel() {
            this.j = true;
            s82<DataT> s82Var = this.k;
            if (s82Var != null) {
                s82Var.cancel();
            }
        }

        public final s82<DataT> d() throws Throwable {
            nc5.a<DataT> aVarA;
            Throwable th;
            boolean zIsExternalStorageLegacy = Environment.isExternalStorageLegacy();
            Cursor cursor = null;
            Context context = this.b;
            Uri requireOriginal = this.e;
            xz5 xz5Var = this.h;
            int i = this.g;
            int i2 = this.f;
            if (zIsExternalStorageLegacy) {
                try {
                    Cursor cursorQuery = context.getContentResolver().query(requireOriginal, l, null, null, null);
                    if (cursorQuery != null) {
                        try {
                            if (cursorQuery.moveToFirst()) {
                                String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                                if (TextUtils.isEmpty(string)) {
                                    throw new FileNotFoundException("File path was empty in media store for: " + requireOriginal);
                                }
                                File file = new File(string);
                                cursorQuery.close();
                                aVarA = this.c.a(file, i2, i, xz5Var);
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            cursor = cursorQuery;
                            if (cursor == null) {
                                throw th;
                            }
                            cursor.close();
                            throw th;
                        }
                    }
                    throw new FileNotFoundException("Failed to media store entry for: " + requireOriginal);
                } catch (Throwable th3) {
                    th = th3;
                }
            } else {
                boolean zB = f95.b(requireOriginal);
                nc5<Uri, DataT> nc5Var = this.d;
                if (zB && requireOriginal.getPathSegments().contains("picker")) {
                    aVarA = nc5Var.a(requireOriginal, i2, i, xz5Var);
                } else {
                    if (context.checkSelfPermission("android.permission.ACCESS_MEDIA_LOCATION") == 0) {
                        requireOriginal = MediaStore.setRequireOriginal(requireOriginal);
                    }
                    aVarA = nc5Var.a(requireOriginal, i2, i, xz5Var);
                }
            }
            if (aVarA != null) {
                return aVarA.c;
            }
            return null;
        }

        @Override // defpackage.s82
        public final void f(jg6 jg6Var, s82.a<? super DataT> aVar) throws Throwable {
            try {
                s82<DataT> s82VarD = d();
                if (s82VarD == null) {
                    aVar.e(new IllegalArgumentException("Failed to build fetcher for: " + this.e));
                } else {
                    this.k = s82VarD;
                    if (this.j) {
                        cancel();
                    } else {
                        s82VarD.f(jg6Var, aVar);
                    }
                }
            } catch (FileNotFoundException e) {
                aVar.e(e);
            }
        }
    }

    public su6(Context context, nc5<File, DataT> nc5Var, nc5<Uri, DataT> nc5Var2, Class<DataT> cls) {
        this.a = context.getApplicationContext();
        this.b = nc5Var;
        this.c = nc5Var2;
        this.d = cls;
    }

    @Override // defpackage.nc5
    public final nc5.a a(Uri uri, int i, int i2, xz5 xz5Var) {
        Uri uri2 = uri;
        return new nc5.a(new oq5(uri2), new d(this.a, this.b, this.c, uri2, i, i2, xz5Var, this.d));
    }

    @Override // defpackage.nc5
    public final boolean b(Uri uri) {
        return Build.VERSION.SDK_INT >= 29 && f95.b(uri);
    }
}
