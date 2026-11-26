package defpackage;

import com.warefly.checkscan.component.logger.CrashlyticsException;
import com.warefly.checkscan.presentation.a;

/* JADX INFO: loaded from: classes5.dex */
public final class rp extends gh4 implements nl3<Throwable, j59> {
    public final /* synthetic */ a f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rp(a aVar) {
        super(1);
        this.f = aVar;
    }

    @Override // defpackage.nl3
    public final j59 invoke(Throwable th) {
        Throwable th2 = th;
        th2.getClass();
        s0.d(new CrashlyticsException.ColdStart("Cold start: ".concat(i13.a(th2))));
        this.f.k.onNext(Boolean.TRUE);
        return j59.a;
    }
}
