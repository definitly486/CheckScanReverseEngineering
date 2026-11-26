package defpackage;

import androidx.compose.material3.BottomAppBarDefaults;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class us0 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ us0(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return Boolean.valueOf(BottomAppBarDefaults.exitAlwaysScrollBehavior$lambda$1$lambda$0());
            case 1:
                oi2 oi2Var = qo2.a;
                return uy4.a.k0();
            default:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isClassActivityRuleBuilderLevel2Valid$lambda$19());
        }
    }
}
