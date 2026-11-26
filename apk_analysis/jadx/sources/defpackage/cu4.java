package defpackage;

import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;
import java.io.FileNotFoundException;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class cu4<T> implements s82<T> {
    public final boolean b;
    public final Uri c;
    public final ContentResolver d;
    public T e;

    public cu4(ContentResolver contentResolver, Uri uri, boolean z) {
        this.d = contentResolver;
        this.c = uri;
        this.b = z;
    }

    @Override // defpackage.s82
    public final void b() {
        T t = this.e;
        if (t != null) {
            try {
                d(t);
            } catch (IOException unused) {
            }
        }
    }

    @Override // defpackage.s82
    public final y82 c() {
        return y82.LOCAL;
    }

    @Override // defpackage.s82
    public final void cancel() {
    }

    public abstract void d(T t);

    public abstract Object e(ContentResolver contentResolver, Uri uri);

    /* JADX WARN: Type inference failed for: r2v5, types: [T, java.lang.Object] */
    @Override // defpackage.s82
    public final void f(jg6 jg6Var, s82.a<? super T> aVar) {
        try {
            ?? r2 = (T) e(this.d, this.c);
            this.e = r2;
            aVar.d(r2);
        } catch (FileNotFoundException e) {
            if (Log.isLoggable("LocalUriFetcher", 3)) {
                Log.d("LocalUriFetcher", "Failed to open Uri", e);
            }
            aVar.e(e);
        }
    }
}
