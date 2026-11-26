package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import java.io.File;
import java.io.FileNotFoundException;

/* JADX INFO: loaded from: classes3.dex */
public final class d95 implements nc5<Uri, File> {
    public final Context a;

    public static final class a implements oc5<Uri, File> {
        public final Context a;

        public a(Context context) {
            this.a = context;
        }

        @Override // defpackage.oc5
        public final nc5<Uri, File> d(if5 if5Var) {
            return new d95(this.a);
        }
    }

    public static class b implements s82<File> {
        public static final String[] d = {"_data"};
        public final Context b;
        public final Uri c;

        public b(Context context, Uri uri) {
            this.b = context;
            this.c = uri;
        }

        @Override // defpackage.s82
        public final Class<File> a() {
            return File.class;
        }

        @Override // defpackage.s82
        public final void b() {
        }

        @Override // defpackage.s82
        public final y82 c() {
            return y82.LOCAL;
        }

        @Override // defpackage.s82
        public final void cancel() {
        }

        @Override // defpackage.s82
        public final void f(jg6 jg6Var, s82.a<? super File> aVar) {
            ContentResolver contentResolver = this.b.getContentResolver();
            Uri uri = this.c;
            Cursor cursorQuery = contentResolver.query(uri, d, null, null, null);
            String string = null;
            if (cursorQuery != null) {
                try {
                    string = cursorQuery.moveToFirst() ? cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data")) : null;
                    cursorQuery.close();
                } catch (Throwable th) {
                    cursorQuery.close();
                    throw th;
                }
            }
            if (!TextUtils.isEmpty(string)) {
                aVar.d(new File(string));
                return;
            }
            aVar.e(new FileNotFoundException("Failed to find file path for: " + uri));
        }
    }

    public d95(Context context) {
        this.a = context;
    }

    @Override // defpackage.nc5
    public final nc5.a<File> a(Uri uri, int i, int i2, xz5 xz5Var) {
        Uri uri2 = uri;
        return new nc5.a<>(new oq5(uri2), new b(this.a, uri2));
    }

    @Override // defpackage.nc5
    public final boolean b(Uri uri) {
        return f95.b(uri);
    }
}
