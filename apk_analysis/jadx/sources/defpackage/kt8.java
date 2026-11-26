package defpackage;

import androidx.compose.material3.TopAppBarState;
import androidx.compose.runtime.saveable.SaverScope;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class kt8 implements bm3 {
    public final /* synthetic */ int b;

    public /* synthetic */ kt8(int i) {
        this.b = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                tt8 tt8Var = (tt8) obj;
                o22.a aVar = (o22.a) obj2;
                if (aVar instanceof it8) {
                    it8<Object> it8Var = (it8) aVar;
                    Object objUpdateThreadContext = it8Var.updateThreadContext(tt8Var.a);
                    Object[] objArr = tt8Var.b;
                    int i = tt8Var.d;
                    objArr[i] = objUpdateThreadContext;
                    it8<Object>[] it8VarArr = tt8Var.c;
                    tt8Var.d = i + 1;
                    it8VarArr[i] = it8Var;
                }
                return tt8Var;
            default:
                return TopAppBarState.Saver$lambda$0((SaverScope) obj, (TopAppBarState) obj2);
        }
    }
}
