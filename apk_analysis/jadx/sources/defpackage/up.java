package defpackage;

import com.warefly.checkscan.presentation.Deeplink;
import com.warefly.checkscan.presentation.a;

/* JADX INFO: loaded from: classes5.dex */
public final class up extends gh4 implements ll3<j59> {
    public final /* synthetic */ a f;
    public final /* synthetic */ Deeplink g;
    public final /* synthetic */ uj1 h;
    public final /* synthetic */ vj1 i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public up(a aVar, Deeplink deeplink, uj1 uj1Var, vj1 vj1Var) {
        super(0);
        this.f = aVar;
        this.g = deeplink;
        this.h = uj1Var;
        this.i = vj1Var;
    }

    @Override // defpackage.ll3
    public final j59 invoke() {
        a aVar = this.f;
        aVar.l.onNext(Boolean.FALSE);
        aVar.c(this.g, true, this.h, this.i);
        return j59.a;
    }
}
