package defpackage;

import androidx.arch.core.util.Function;
import androidx.paging.PageKeyedDataSource;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class hf1 implements xl3, Function {
    public final /* synthetic */ int b;
    public final /* synthetic */ nl3 c;

    public /* synthetic */ hf1(nl3 nl3Var, int i) {
        this.b = i;
        this.c = nl3Var;
    }

    @Override // defpackage.xl3
    public final Object apply(Object obj) {
        int i = this.b;
        nl3 nl3Var = this.c;
        switch (i) {
            case 0:
                return (qq1) nl3Var.invoke(obj);
            default:
                return PageKeyedDataSource.map$lambda$1(nl3Var, (List) obj);
        }
    }
}
