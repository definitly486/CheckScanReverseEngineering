package defpackage;

import androidx.camera.camera2.impl.TorchControl;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.DependencyDao_Impl;
import java.util.Map;
import yads.kn5;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class sl2 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ sl2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(DependencyDao_Impl.hasDependents$lambda$4("SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?", (String) obj2, (SQLiteConnection) obj));
            case 1:
                al1 al1Var = (al1) obj;
                al1Var.getClass();
                for (Map.Entry entry : ((aj7) obj2).e.entrySet()) {
                    al1Var.a((String) entry.getKey(), ((df4) entry.getValue()).getDescriptor());
                }
                return j59.a;
            case 2:
                return TorchControl.updateTorchStrengthLevelAsync$lambda$0((TorchControl) obj2, (Throwable) obj);
            default:
                return kn5.a((kn5) obj2, ((Boolean) obj).booleanValue());
        }
    }
}
