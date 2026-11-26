package defpackage;

import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import androidx.lifecycle.Lifecycle;

/* JADX INFO: loaded from: classes3.dex */
public final class f24 {
    public static final b53.b<j29> a = new b53.b<>(j29.a);
    public static final b53.b<Bitmap.Config> b = new b53.b<>(sb9.b);
    public static final b53.b<ColorSpace> c = new b53.b<>(null);
    public static final b53.b<Boolean> d;
    public static final b53.b<Lifecycle> e;
    public static final b53.b<Boolean> f;
    public static final b53.b<Boolean> g;

    static {
        Boolean bool = Boolean.TRUE;
        d = new b53.b<>(bool);
        e = new b53.b<>(null);
        f = new b53.b<>(bool);
        g = new b53.b<>(Boolean.FALSE);
    }

    public static final Bitmap.Config a(zz5 zz5Var) {
        return (Bitmap.Config) c53.b(zz5Var, b);
    }
}
