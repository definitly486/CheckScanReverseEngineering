package yads;

import android.net.Uri;
import android.view.View;
import androidx.collection.ArrayMap;
import androidx.webkit.ProxyConfig;
import defpackage.j59;
import defpackage.ll3;
import java.util.ArrayList;
import yads.ti2;

/* JADX INFO: loaded from: classes6.dex */
public final class ti2 {
    public final ArrayList a;
    public final lu0 b;
    public final ys0 c;
    public final ArrayMap d = new ArrayMap();
    public final ArrayMap e = new ArrayMap();

    public ti2(ArrayList arrayList, lu0 lu0Var, ys0 ys0Var) {
        this.a = arrayList;
        this.b = lu0Var;
        this.c = ys0Var;
    }

    public static final j59 a(r02[] r02VarArr, ti2 ti2Var, vq0 vq0Var, fs2 fs2Var, View view) {
        Uri uri;
        for (r02 r02Var : r02VarArr) {
            ti2Var.getClass();
            b50 b50VarA = c50.a((String) r02Var.g().a(fs2Var), vq0Var);
            boolean z = r02Var instanceof si2;
            ArrayMap arrayMap = z ? ti2Var.d : ti2Var.e;
            Object obj = arrayMap.get(b50VarA);
            if (obj == null) {
                obj = 0;
                arrayMap.put(b50VarA, obj);
            }
            int iIntValue = ((Number) obj).intValue();
            int i = cr3.a;
            vj5[] vj5VarArr = vj5.b;
            cr3.a();
            long jLongValue = ((Number) r02Var.f().a(fs2Var)).longValue();
            if (jLongValue == 0 || iIntValue < jLongValue) {
                ti2Var.b.getClass();
                lu0 lu0Var = vq0Var.R;
                if (!(lu0Var != null ? lu0Var.a(r02Var, vq0Var, fs2Var) : false) && !ti2Var.b.a(r02Var, vq0Var, fs2Var)) {
                    if (!z) {
                    }
                    ti2Var.c.getClass();
                    as2 url = r02Var.getUrl();
                    if (url != null && (uri = (Uri) url.a(fs2Var)) != null) {
                        String scheme = uri.getScheme();
                        if (!defpackage.aa4.e(scheme, ProxyConfig.MATCH_HTTP) && !defpackage.aa4.e(scheme, ProxyConfig.MATCH_HTTPS)) {
                            cr3.a();
                        }
                    }
                }
                (z ? ti2Var.d : ti2Var.e).put(b50VarA, Integer.valueOf(iIntValue + 1));
                cr3.a();
            }
        }
        return j59.a;
    }

    public final void a(final vq0 vq0Var, final fs2 fs2Var, final View view, final r02[] r02VarArr) {
        vq0Var.a(new ll3() { // from class: e9a
            @Override // defpackage.ll3
            public final Object invoke() {
                return ti2.a(r02VarArr, this, vq0Var, fs2Var, view);
            }
        });
    }
}
