package yads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.datasource.RawResourceDataSource;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class lk0 implements wc0 {
    public final Context a;
    public final ArrayList b;
    public final wc0 c;
    public ex2 d;
    public jk e;
    public h60 f;
    public wc0 g;
    public z36 h;
    public uc0 i;
    public r45 j;
    public wc0 k;

    public lk0(Context context, wc0 wc0Var) {
        this.a = context.getApplicationContext();
        wc0Var.getClass();
        this.c = wc0Var;
        this.b = new ArrayList();
    }

    @Override // yads.wc0
    public final long a(bd0 bd0Var) {
        wc0 wc0Var;
        if (this.k != null) {
            defpackage.ud.g();
            return 0L;
        }
        String scheme = bd0Var.a.getScheme();
        Uri uri = bd0Var.a;
        int i = u56.a;
        String scheme2 = uri.getScheme();
        if (TextUtils.isEmpty(scheme2) || "file".equals(scheme2)) {
            String path = bd0Var.a.getPath();
            if (path == null || !path.startsWith("/android_asset/")) {
                if (this.d == null) {
                    ex2 ex2Var = new ex2();
                    this.d = ex2Var;
                    a(ex2Var);
                }
                wc0Var = this.d;
                this.k = wc0Var;
            } else {
                if (this.e == null) {
                    jk jkVar = new jk(this.a);
                    this.e = jkVar;
                    a(jkVar);
                }
                wc0Var = this.e;
                this.k = wc0Var;
            }
        } else if ("asset".equals(scheme)) {
            if (this.e == null) {
                jk jkVar2 = new jk(this.a);
                this.e = jkVar2;
                a(jkVar2);
            }
            wc0Var = this.e;
            this.k = wc0Var;
        } else if (FirebaseAnalytics.Param.CONTENT.equals(scheme)) {
            if (this.f == null) {
                h60 h60Var = new h60(this.a);
                this.f = h60Var;
                a(h60Var);
            }
            wc0Var = this.f;
            this.k = wc0Var;
        } else if ("rtmp".equals(scheme)) {
            wc0Var = this.g;
            if (wc0Var == null) {
                try {
                    wc0 wc0Var2 = (wc0) Class.forName("com.monetization.ads.exo.ext.rtmp.RtmpDataSource").getConstructor(null).newInstance(null);
                    this.g = wc0Var2;
                    a(wc0Var2);
                } catch (ClassNotFoundException unused) {
                    sv3.d("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
                } catch (Exception e) {
                    defpackage.mg.e("Error instantiating RTMP extension", e);
                    return 0L;
                }
                wc0Var = this.g;
                if (wc0Var == null) {
                    wc0Var = this.c;
                    this.g = wc0Var;
                }
            }
            this.k = wc0Var;
        } else if ("udp".equals(scheme)) {
            if (this.h == null) {
                z36 z36Var = new z36();
                this.h = z36Var;
                a(z36Var);
            }
            wc0Var = this.h;
            this.k = wc0Var;
        } else if ("data".equals(scheme)) {
            if (this.i == null) {
                uc0 uc0Var = new uc0();
                this.i = uc0Var;
                a(uc0Var);
            }
            wc0Var = this.i;
            this.k = wc0Var;
        } else if (RawResourceDataSource.RAW_RESOURCE_SCHEME.equals(scheme) || "android.resource".equals(scheme)) {
            if (this.j == null) {
                r45 r45Var = new r45(this.a);
                this.j = r45Var;
                a(r45Var);
            }
            wc0Var = this.j;
            this.k = wc0Var;
        } else {
            wc0Var = this.c;
            this.k = wc0Var;
        }
        return wc0Var.a(bd0Var);
    }

    @Override // yads.wc0
    public final Map b() {
        wc0 wc0Var = this.k;
        return wc0Var == null ? Collections.EMPTY_MAP : wc0Var.b();
    }

    @Override // yads.tc0
    public final int c(byte[] bArr, int i, int i2) {
        wc0 wc0Var = this.k;
        wc0Var.getClass();
        return wc0Var.c(bArr, i, i2);
    }

    @Override // yads.wc0
    public final void close() {
        wc0 wc0Var = this.k;
        if (wc0Var != null) {
            try {
                wc0Var.close();
            } finally {
                this.k = null;
            }
        }
    }

    @Override // yads.wc0
    public final Uri d() {
        wc0 wc0Var = this.k;
        if (wc0Var == null) {
            return null;
        }
        return wc0Var.d();
    }

    @Override // yads.wc0
    public final void a(p16 p16Var) {
        p16Var.getClass();
        this.c.a(p16Var);
        this.b.add(p16Var);
        ex2 ex2Var = this.d;
        if (ex2Var != null) {
            ex2Var.a(p16Var);
        }
        jk jkVar = this.e;
        if (jkVar != null) {
            jkVar.a(p16Var);
        }
        h60 h60Var = this.f;
        if (h60Var != null) {
            h60Var.a(p16Var);
        }
        wc0 wc0Var = this.g;
        if (wc0Var != null) {
            wc0Var.a(p16Var);
        }
        z36 z36Var = this.h;
        if (z36Var != null) {
            z36Var.a(p16Var);
        }
        uc0 uc0Var = this.i;
        if (uc0Var != null) {
            uc0Var.a(p16Var);
        }
        r45 r45Var = this.j;
        if (r45Var != null) {
            r45Var.a(p16Var);
        }
    }

    public final void a(wc0 wc0Var) {
        for (int i = 0; i < this.b.size(); i++) {
            wc0Var.a((p16) this.b.get(i));
        }
    }
}
