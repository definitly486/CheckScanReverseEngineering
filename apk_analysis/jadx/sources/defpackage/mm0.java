package defpackage;

import androidx.compose.runtime.ComposerKt;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.bonuses.domain.BonusBlockInteractor", f = "BonusBlockInteractor.kt", l = {ComposerKt.reuseKey}, m = "fetchSpecials")
public final class mm0 extends f02 {
    public ArrayList l;
    public ArrayList m;
    public /* synthetic */ Object n;
    public final /* synthetic */ wl0 o;
    public int p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mm0(wl0 wl0Var, f02 f02Var) {
        super(f02Var);
        this.o = wl0Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.n = obj;
        this.p |= Integer.MIN_VALUE;
        return this.o.h(null, null, false, this);
    }
}
