package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.domain.interactor.balance.BalanceInteractor$subscribeOnContent$1", f = "BalanceInteractor.kt", l = {}, m = "invokeSuspend")
public final class w40 extends pg8 implements bm3<List<? extends pz3>, e02<? super List<? extends pz3>>, Object> {
    public /* synthetic */ Object l;

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        w40 w40Var = new w40(2, e02Var);
        w40Var.l = obj;
        return w40Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(List<? extends pz3> list, e02<? super List<? extends pz3>> e02Var) {
        return ((w40) create(list, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        Object next;
        Object next2;
        int i;
        int i2;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        List arrayList = (List) this.l;
        List list = arrayList;
        Iterator it = list.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!(next instanceof p20));
        if (!(next instanceof p20)) {
            next = null;
        }
        p20 p20Var = (p20) next;
        if (p20Var != null && !p20Var.b) {
            Iterator it2 = list.iterator();
            do {
                if (!it2.hasNext()) {
                    next2 = null;
                    break;
                }
                next2 = it2.next();
            } while (!(next2 instanceof z30));
            if (!(next2 instanceof z30)) {
                next2 = null;
            }
            z30 z30Var = (z30) next2;
            int i3 = 0;
            if ((list instanceof Collection) && list.isEmpty()) {
                i = 0;
            } else {
                Iterator it3 = list.iterator();
                i = 0;
                while (it3.hasNext()) {
                    if ((((pz3) it3.next()) instanceof z30) && (i = i + 1) < 0) {
                        u96.n();
                        throw null;
                    }
                }
            }
            if (i > 4) {
                Iterator it4 = arrayList.iterator();
                int i4 = 0;
                while (true) {
                    i2 = -1;
                    if (!it4.hasNext()) {
                        i4 = -1;
                        break;
                    }
                    if (aa4.e(((pz3) it4.next()).id(), z30Var != null ? z30Var.id() : null)) {
                        break;
                    }
                    i4++;
                }
                int i5 = i4 + 4;
                Iterator it5 = arrayList.iterator();
                int i6 = 0;
                while (it5.hasNext()) {
                    if (aa4.e(((pz3) it5.next()).id(), (byte) 127)) {
                        i2 = i6;
                        break;
                    }
                    i6++;
                }
                int i7 = i2 - 1;
                ArrayList arrayList2 = new ArrayList(arrayList);
                arrayList = new ArrayList();
                for (Object obj2 : arrayList2) {
                    int i8 = i3 + 1;
                    if (i3 < 0) {
                        u96.o();
                        throw null;
                    }
                    if (i5 > i3 || i3 > i7) {
                        arrayList.add(obj2);
                    }
                    i3 = i8;
                }
            }
        }
        return arrayList;
    }
}
