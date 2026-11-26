package yads;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class qs3 extends gh4 implements nl3 {
    public final /* synthetic */ ts3 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qs3(ts3 ts3Var) {
        super(1);
        this.b = ts3Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        e85 e85Var = (e85) this.b.d.invoke();
        e85Var.getClass();
        e85Var.a(new b85("light_bundle_js_request_tag"));
        return j59.a;
    }
}
