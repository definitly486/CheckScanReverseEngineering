package yads;

import defpackage.u96;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class yc implements ga3 {
    public final lc a;
    public final yb b;
    public final zc c;
    public final List d;
    public ad e;

    public yc(lc lcVar, yb ybVar) {
        zc zcVar = new zc();
        this.a = lcVar;
        this.b = ybVar;
        this.c = zcVar;
        this.d = u96.i(new bd("adtuneRendered", new xc(this)), new bd("adtuneClosed", new vc(this)), new bd("openOptOut", new wc(this)));
    }

    public final void a(String str) {
        try {
            URI uri = new URI(str);
            String scheme = uri.getScheme();
            String host = uri.getHost();
            for (bd bdVar : this.d) {
                if (bdVar.a(scheme, host)) {
                    bdVar.a();
                    return;
                }
            }
            ad adVar = this.e;
            if (adVar != null) {
                ((cc) adVar).a.d.a(str);
            }
        } catch (URISyntaxException unused) {
            a(false);
        }
    }

    @Override // yads.ga3
    public final void a(int i) {
        for (int i2 : this.c.a) {
            if (i == i2) {
                a(false);
                return;
            }
        }
    }

    public final void a(boolean z) {
        ad adVar = this.e;
        if (adVar != null) {
            cc ccVar = (cc) adVar;
            if (z) {
                ccVar.a.c.a();
            }
            ccVar.a.a.dismiss();
        }
    }
}
