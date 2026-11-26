package defpackage;

import android.content.res.AssetManager;
import android.util.Log;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class es<T> implements s82<T> {
    public final String b;
    public final AssetManager c;
    public T d;

    public es(AssetManager assetManager, String str) {
        this.c = assetManager;
        this.b = str;
    }

    @Override // defpackage.s82
    public final void b() {
        T t = this.d;
        if (t == null) {
            return;
        }
        try {
            d(t);
        } catch (IOException unused) {
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

    public abstract T e(AssetManager assetManager, String str);

    @Override // defpackage.s82
    public final void f(jg6 jg6Var, s82.a<? super T> aVar) {
        try {
            T tE = e(this.c, this.b);
            this.d = tE;
            aVar.d(tE);
        } catch (IOException e) {
            if (Log.isLoggable("AssetPathFetcher", 3)) {
                Log.d("AssetPathFetcher", "Failed to load data from asset manager", e);
            }
            aVar.e(e);
        }
    }
}
