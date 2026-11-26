package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
public final class cn0 extends gh4 implements nl3<List<? extends sx5>, c18<? extends k57<? extends Boolean>>> {
    public final /* synthetic */ bm0 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cn0(bm0 bm0Var) {
        super(1);
        this.f = bm0Var;
    }

    @Override // defpackage.nl3
    public final c18<? extends k57<? extends Boolean>> invoke(List<? extends sx5> list) {
        final List<? extends sx5> list2 = list;
        list2.getClass();
        final bm0 bm0Var = this.f;
        return new l08(new Callable() { // from class: bn0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                List<cs0> list3;
                bm0 bm0Var2 = bm0Var;
                x68<cs0> x68VarJ = bm0Var2.m.j();
                ArrayList arrayList = (x68VarJ == null || (list3 = x68VarJ.a) == null) ? new ArrayList() : new ArrayList(list3);
                List list4 = list2;
                arrayList.addAll(bm0.c(list4));
                bm0Var2.m.onNext(new x68.a(arrayList));
                return new k57(Boolean.valueOf(!list4.isEmpty()));
            }
        });
    }
}
