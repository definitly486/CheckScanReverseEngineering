package yads;

import defpackage.ta8;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class zk4 implements ac6 {
    public final e4 a;

    public zk4(e4 e4Var) {
        this.a = e4Var;
    }

    @Override // yads.ac6
    public final Map a() {
        String str = this.a.c.a;
        if (str == null || ta8.M(str)) {
            str = StringUtils.UNDEFINED;
        }
        return defpackage.n05.e(new defpackage.b36("ad_unit_id", str), new defpackage.b36("ad_type", this.a.a.b));
    }
}
