package defpackage;

import androidx.camera.camera2.impl.UseCaseManager;
import yads.d22;
import yads.in5;
import yads.s22;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n99 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ n99(int i, Object obj, Object obj2) {
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
                return UseCaseManager.closeCurrentUseCases$lambda$0$0$0((UseCaseManager) obj3, (mb4) obj2, (Throwable) obj);
            default:
                return d22.a((s22) obj3, (in5) obj2, ((Long) obj).longValue());
        }
    }
}
