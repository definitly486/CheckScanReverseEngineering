package defpackage;

import androidx.compose.material3.BottomAppBarState;
import androidx.compose.runtime.ComposableSingletons$CompositionKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.saveable.SaverScope;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class vs0 implements bm3 {
    public final /* synthetic */ int b;

    public /* synthetic */ vs0(int i) {
        this.b = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                return BottomAppBarState.Companion.Saver$lambda$0((SaverScope) obj, (BottomAppBarState) obj2);
            default:
                return ComposableSingletons$CompositionKt.lambda_1918065384$lambda$0((Composer) obj, ((Integer) obj2).intValue());
        }
    }
}
