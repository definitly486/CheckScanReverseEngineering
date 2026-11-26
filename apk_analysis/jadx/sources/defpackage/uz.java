package defpackage;

import android.content.ServiceConnection;
import ru.rustore.sdk.core.exception.RuStoreException;

/* JADX INFO: loaded from: classes.dex */
public final class uz extends gh4 implements nl3<RuStoreException, j59> {
    public final /* synthetic */ a08<a64> f;
    public final /* synthetic */ ru6 g;
    public final /* synthetic */ r07<ServiceConnection> h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public uz(r07 r07Var, ru6 ru6Var, a08 a08Var) {
        super(1);
        this.f = a08Var;
        this.g = ru6Var;
        this.h = r07Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(RuStoreException ruStoreException) {
        RuStoreException ruStoreException2 = ruStoreException;
        ruStoreException2.getClass();
        this.f.b(ruStoreException2);
        ny1.a(this.g.a, this.h.b);
        return j59.a;
    }
}
