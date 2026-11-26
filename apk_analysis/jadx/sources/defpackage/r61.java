package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class r61 extends gh4 implements nl3<List<? extends l17>, l17> {
    public final /* synthetic */ p61 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r61(p61 p61Var) {
        super(1);
        this.f = p61Var;
    }

    @Override // defpackage.nl3
    public final l17 invoke(List<? extends l17> list) {
        List<? extends l17> list2 = list;
        list2.getClass();
        ArrayList arrayList = new ArrayList();
        for (Object obj : list2) {
            l17 l17Var = (l17) obj;
            if (!aa4.e(l17Var.b(), "---") && l17Var.a() != this.f.c.O0()) {
                arrayList.add(obj);
            }
        }
        return (l17) arrayList.get(0);
    }
}
