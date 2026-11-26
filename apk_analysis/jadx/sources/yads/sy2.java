package yads;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;
import java.util.UUID;

/* JADX INFO: loaded from: classes6.dex */
public final class sy2 extends gh4 implements nl3 {
    public final /* synthetic */ vy2 b;
    public final /* synthetic */ UUID c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sy2(vy2 vy2Var, UUID uuid) {
        super(1);
        this.b = vy2Var;
        this.c = uuid;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        e85 e85Var = (e85) this.b.b.getValue();
        UUID uuid = this.c;
        e85Var.getClass();
        if (uuid != null) {
            e85Var.a(new b85(uuid));
            return j59.a;
        }
        defpackage.fg.c("Cannot cancelAll with a null tag");
        return null;
    }
}
