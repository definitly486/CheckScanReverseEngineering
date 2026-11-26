package defpackage;

import androidx.compose.foundation.lazy.layout.LazySaveableStateHolder;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.sqlite.SQLiteConnection;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xn4 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ xn4(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return LazySaveableStateHolder.Companion.saver$lambda$1((SaveableStateRegistry) obj3, (SaveableStateHolder) obj2, (Map) obj);
            default:
                hu6 hu6Var = ((ku6) obj3).d;
                hu6Var.insert((SQLiteConnection) obj, (pt6) obj2);
                return j59.a;
        }
    }
}
