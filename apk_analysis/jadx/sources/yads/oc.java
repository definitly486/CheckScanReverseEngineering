package yads;

import defpackage.u96;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class oc implements ga3 {
    public final uq4 a;
    public final zc b;
    public final List c;
    public pc d;

    public oc(uq4 uq4Var) {
        zc zcVar = new zc();
        this.a = uq4Var;
        this.b = zcVar;
        this.c = u96.h(new bd("noInterestAd", new nc(this)));
    }

    public final void a(String str) {
        try {
            URI uri = new URI(str);
            String scheme = uri.getScheme();
            String host = uri.getHost();
            for (bd bdVar : this.c) {
                if (bdVar.a(scheme, host)) {
                    bdVar.a();
                    return;
                }
            }
        } catch (URISyntaxException unused) {
        }
    }

    @Override // yads.ga3
    public final void a(int i) {
        for (int i2 : this.b.a) {
            if (i == i2) {
                pc pcVar = this.d;
                if (pcVar != null) {
                    eo0.a(((jc) pcVar).a.a);
                    return;
                }
                return;
            }
        }
    }
}
