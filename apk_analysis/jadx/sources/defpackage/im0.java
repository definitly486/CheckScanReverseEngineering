package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.bonuses.domain.BonusBlockInteractor", f = "BonusBlockInteractor.kt", l = {273}, m = "fetchGroupShops")
public final class im0 extends f02 {
    public List l;
    public List m;
    public Collection n;
    public Iterator o;
    public ak0.b p;
    public /* synthetic */ Object q;
    public final /* synthetic */ wl0 r;
    public int s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public im0(wl0 wl0Var, f02 f02Var) {
        super(f02Var);
        this.r = wl0Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.q = obj;
        this.s |= Integer.MIN_VALUE;
        return this.r.f(null, null, null, this);
    }
}
