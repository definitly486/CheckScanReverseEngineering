package defpackage;

import com.google.firebase.remoteconfig.RemoteConfigConstants;

/* JADX INFO: loaded from: classes.dex */
public final class n72 extends gh4 implements nl3<a64, j59> {
    public final /* synthetic */ ru6 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n72(ru6 ru6Var) {
        super(1);
        this.f = ru6Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(a64 a64Var) {
        a64 a64Var2 = a64Var;
        if (a64Var2 != null) {
            ow9 ow9Var = this.f.d;
            String str = a64Var2.b;
            ow9Var.getClass();
            str.getClass();
            uz4 uz4Var = new uz4();
            uz4Var.put(RemoteConfigConstants.RequestFieldKey.SDK_VERSION, "10.0.0");
            uz4Var.put(RemoteConfigConstants.RequestFieldKey.APP_VERSION, String.valueOf(ow9Var.a()));
            uz4Var.put("referrer_id", str);
            ow9Var.b(uz4Var);
            j59 j59Var = j59.a;
            ow9Var.c("SDKInstallReferrerRefidResponse", uz4Var.b());
        }
        return j59.a;
    }
}
