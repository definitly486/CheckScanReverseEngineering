package yads;

import androidx.core.app.NotificationCompat;
import defpackage.mr7;
import defpackage.y68;
import defpackage.z68;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class ec6 {
    public static final /* synthetic */ defpackage.ze4[] e = {mo.a(ec6.class, NotificationCompat.CATEGORY_STATUS, "getStatus()Lcom/monetization/ads/video/status/VideoAdStatus;", 0)};
    public final Set a;
    public final defpackage.xg5 b;
    public final y68 c;
    public final dc6 d;

    public ec6() {
        cc6 cc6Var = cc6.INITIAL;
        this.a = mr7.k(cc6Var);
        z68 z68VarA = defpackage.px.a(cc6Var);
        this.b = z68VarA;
        this.c = defpackage.bf3.b(z68VarA);
        this.d = new dc6(this);
    }

    public final cc6 a() {
        return (cc6) this.d.getValue(this, e[0]);
    }

    public final void a(cc6 cc6Var) {
        this.d.setValue(this, e[0], cc6Var);
    }
}
