package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class qb0 implements xl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ nl3 c;

    public /* synthetic */ qb0(nl3 nl3Var, int i) {
        this.b = i;
        this.c = nl3Var;
    }

    @Override // defpackage.xl3
    public final Object apply(Object obj) {
        int i = this.b;
        nl3 nl3Var = this.c;
        switch (i) {
            case 0:
                return (c18) nl3Var.invoke(obj);
            default:
                return (List) nl3Var.invoke(obj);
        }
    }
}
