package defpackage;

import androidx.arch.core.util.Function;
import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.graphics.colorspace.Rgb;
import androidx.paging.PositionalDataSource;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class v90 implements xl3, Function, DoubleFunction {
    public final /* synthetic */ int b;
    public final /* synthetic */ nl3 c;

    public /* synthetic */ v90(nl3 nl3Var, int i) {
        this.b = i;
        this.c = nl3Var;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        nl3 nl3Var = this.c;
        switch (i) {
            case 0:
                return (String) nl3Var.invoke(obj);
            case 1:
                return (List) nl3Var.invoke(obj);
            default:
                return PositionalDataSource.mapByPage$lambda$0(nl3Var, (List) obj);
        }
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public double invoke(double d) {
        return Rgb._init_$lambda$0(this.c, d);
    }
}
