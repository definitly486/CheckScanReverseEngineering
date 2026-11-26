package defpackage;

import androidx.camera.core.UseCase;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.internal.StreamSpecsCalculatorImpl;
import androidx.sqlite.SQLiteConnection;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class du6 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ du6(int i, Object obj, Object obj2) {
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
                gu6 gu6Var = ((ku6) obj3).c;
                gu6Var.insert((SQLiteConnection) obj, (wt6) obj2);
                return j59.a;
            default:
                return StreamSpecsCalculatorImpl.calculateSuggestedStreamSpecsForNewUseCases$lambda$0((Map) obj3, (CameraInfoInternal) obj2, (UseCase) obj);
        }
    }
}
