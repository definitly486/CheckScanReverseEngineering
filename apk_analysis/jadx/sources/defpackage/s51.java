package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class s51 extends gh4 implements nl3<List<? extends gq6>, gq6> {
    public final /* synthetic */ int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s51(int i) {
        super(1);
        this.f = i;
    }

    @Override // defpackage.nl3
    public final gq6 invoke(List<? extends gq6> list) {
        List<? extends gq6> list2 = list;
        list2.getClass();
        for (gq6 gq6Var : list2) {
            if (gq6Var.c() == this.f) {
                return gq6Var;
            }
        }
        ag.g("Collection contains no element matching the predicate.");
        return null;
    }
}
