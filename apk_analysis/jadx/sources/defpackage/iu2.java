package defpackage;

import com.google.firebase.dynamiclinks.DynamicLink;

/* JADX INFO: loaded from: classes4.dex */
public final class iu2 extends gh4 implements nl3<DynamicLink.IosParameters.Builder, j59> {
    public final /* synthetic */ nu2 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public iu2(nu2 nu2Var) {
        super(1);
        this.f = nu2Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(DynamicLink.IosParameters.Builder builder) {
        DynamicLink.IosParameters.Builder builder2 = builder;
        builder2.getClass();
        builder2.setAppStoreId(this.f.e);
        return j59.a;
    }
}
