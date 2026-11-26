package defpackage;

import com.warefly.checkscan.presentation.a;
import org.koin.core.error.ClosedScopeException;
import org.koin.core.error.MissingScopeValueException;
import org.koin.core.error.NoDefinitionFoundException;

/* JADX INFO: loaded from: classes5.dex */
public final class yc5 extends gh4 implements ll3<j59> {
    public final /* synthetic */ ze7 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yc5(ze7 ze7Var) {
        super(0);
        this.f = ze7Var;
    }

    @Override // defpackage.ll3
    public final j59 invoke() {
        Object objE;
        ba8 ba8Var = p72.g;
        zk1 zk1VarA = x07.a(fu1.class);
        ze7 ze7Var = this.f;
        lx2 lx2Var = ze7Var.e.a;
        try {
            objE = ze7Var.e(zk1VarA, null, ba8Var);
        } catch (ClosedScopeException unused) {
            String str = "* Scope closed - no instance found for " + oe4.a(zk1VarA) + " on scope " + ze7Var;
            lx2Var.getClass();
            lx2Var.a(uo4.DEBUG, str);
            objE = null;
        } catch (MissingScopeValueException unused2) {
            String str2 = "* No Scoped value found for type '" + oe4.a(zk1VarA) + "' on scope '" + ze7Var + '\'';
            lx2Var.getClass();
            lx2Var.a(uo4.DEBUG, str2);
            objE = null;
        } catch (NoDefinitionFoundException unused3) {
            String str3 = "* No instance found for type '" + oe4.a(zk1VarA) + "' on scope '" + ze7Var + '\'';
            lx2Var.getClass();
            lx2Var.a(uo4.DEBUG, str3);
            objE = null;
        }
        fu1 fu1Var = (fu1) objE;
        if (fu1Var != null) {
            fu1Var.d();
        }
        ((a) ze7Var.e(x07.a(a.class), null, null)).j.onNext(Boolean.TRUE);
        return j59.a;
    }
}
