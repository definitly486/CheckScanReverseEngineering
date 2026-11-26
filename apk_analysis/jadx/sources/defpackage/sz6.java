package defpackage;

import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.ControlledComposition;
import androidx.compose.runtime.Recomposer;
import yads.bn1;
import yads.jk1;
import yads.qg3;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class sz6 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ sz6(int i, Object obj, Object obj2) {
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
                return Recomposer.writeObserverOf$lambda$0((ControlledComposition) obj3, (MutableScatterSet) obj2, obj);
            default:
                return jk1.a((r07) obj3, (bn1) obj2, (qg3) obj);
        }
    }
}
