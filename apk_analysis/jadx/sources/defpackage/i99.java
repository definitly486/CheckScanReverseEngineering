package defpackage;

import android.net.Uri;
import androidx.webkit.ProxyConfig;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class i99<Data> implements nc5<Uri, Data> {
    public static final Set<String> b = Collections.unmodifiableSet(new HashSet(Arrays.asList(ProxyConfig.MATCH_HTTP, ProxyConfig.MATCH_HTTPS)));
    public final nc5<cr3, Data> a;

    public static class a implements oc5<Uri, InputStream> {
        @Override // defpackage.oc5
        public final nc5<Uri, InputStream> d(if5 if5Var) {
            return new i99(if5Var.a(cr3.class, InputStream.class));
        }
    }

    public i99(nc5<cr3, Data> nc5Var) {
        this.a = nc5Var;
    }

    @Override // defpackage.nc5
    public final nc5.a a(Uri uri, int i, int i2, xz5 xz5Var) {
        return this.a.a(new cr3(uri.toString(), lv3.a), i, i2, xz5Var);
    }

    @Override // defpackage.nc5
    public final boolean b(Uri uri) {
        return b.contains(uri.getScheme());
    }
}
