package defpackage;

import androidx.arch.core.util.Function;
import androidx.paging.DataSource;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class jf1 implements xl3, Function {
    public final /* synthetic */ int b;
    public final /* synthetic */ nl3 c;

    public /* synthetic */ jf1(nl3 nl3Var, int i) {
        this.b = i;
        this.c = nl3Var;
    }

    @Override // defpackage.xl3
    public final Object apply(Object obj) {
        int i = this.b;
        nl3 nl3Var = this.c;
        switch (i) {
            case 0:
                return (List) nl3Var.invoke(obj);
            default:
                return DataSource.mapByPage$lambda$0(nl3Var, (List) obj);
        }
    }
}
