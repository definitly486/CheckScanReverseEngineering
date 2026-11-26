package defpackage;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.koin.core.error.ScopeAlreadyCreatedException;

/* JADX INFO: loaded from: classes5.dex */
public final class pg4 implements ViewModelProvider.Factory {
    public final zk1 a;
    public final ze7 b;
    public final sk c;

    public pg4(zk1 zk1Var, ze7 ze7Var, sk skVar) {
        this.a = zk1Var;
        this.b = ze7Var;
        this.c = skVar;
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    public final <T extends ViewModel> T create(ne4<T> ne4Var, CreationExtras creationExtras) throws ScopeAlreadyCreatedException {
        ne4Var.getClass();
        creationExtras.getClass();
        jj jjVar = new jj(this.c, creationExtras);
        ze7 ze7Var = this.b;
        hg4 hg4Var = ze7Var.e;
        jx0 jx0Var = hg4Var.f;
        jx0Var.getClass();
        ng4 ng4Var = ng4.VIEWMODEL_SCOPE_FACTORY;
        ng4Var.getClass();
        Object obj = ((HashMap) jx0Var.a).get(ng4Var);
        if (obj == null) {
            obj = null;
        }
        boolean zE = aa4.e(obj, Boolean.TRUE);
        zk1 zk1Var = this.a;
        if (!zE) {
            return (T) ze7Var.e(zk1Var, jjVar, null);
        }
        String str = ne4Var.f() + '-' + g.a();
        w39 w39Var = new w39(ne4Var);
        w39 w39Var2 = ee9.a;
        bf7 bf7Var = hg4Var.c;
        ConcurrentHashMap concurrentHashMap = bf7Var.c;
        hg4 hg4Var2 = bf7Var.a;
        lx2 lx2Var = hg4Var2.a;
        lx2Var.getClass();
        uo4 uo4Var = uo4.DEBUG;
        lx2Var.a(uo4Var, "| (+) Scope - id:'" + str + "' q:'" + w39Var + '\'');
        Set<kv6> set = bf7Var.b;
        if (!set.contains(w39Var)) {
            lx2Var.a(uo4Var, "| Scope '" + w39Var + "' not defined. Creating it ...");
            set.add(w39Var);
        }
        if (concurrentHashMap.containsKey(str)) {
            throw new ScopeAlreadyCreatedException(me0.c("Scope with id '", str, "' is already created"));
        }
        ze7 ze7Var2 = new ze7(w39Var, str, w39Var2, hg4Var2, 4);
        ze7[] ze7VarArr = {bf7Var.d};
        boolean z = ze7Var2.c;
        if (z) {
            ah.f("Can't add scope link to a root scope");
            return null;
        }
        List listH0 = yr.h0(ze7VarArr);
        ArrayList<ze7> arrayList = ze7Var2.f;
        arrayList.addAll(0, listH0);
        concurrentHashMap.put(str, ze7Var2);
        if (!ze7Var.c) {
            ze7[] ze7VarArr2 = {ze7Var};
            if (z) {
                ah.f("Can't add scope link to a root scope");
                return null;
            }
            arrayList.addAll(0, yr.h0(ze7VarArr2));
        }
        T t = (T) ze7Var2.e(zk1Var, jjVar, null);
        t.addCloseable(new fe9(str, hg4Var));
        return t;
    }
}
