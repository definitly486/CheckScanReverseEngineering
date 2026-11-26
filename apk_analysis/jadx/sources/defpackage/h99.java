package defpackage;

import java.io.InputStream;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public final class h99 implements nc5<URL, InputStream> {
    public final nc5<cr3, InputStream> a;

    public static class a implements oc5<URL, InputStream> {
        @Override // defpackage.oc5
        public final nc5<URL, InputStream> d(if5 if5Var) {
            return new h99(if5Var.a(cr3.class, InputStream.class));
        }
    }

    public h99(nc5<cr3, InputStream> nc5Var) {
        this.a = nc5Var;
    }

    @Override // defpackage.nc5
    public final nc5.a<InputStream> a(URL url, int i, int i2, xz5 xz5Var) {
        return this.a.a(new cr3(url), i, i2, xz5Var);
    }

    @Override // defpackage.nc5
    public final boolean b(URL url) {
        return true;
    }
}
