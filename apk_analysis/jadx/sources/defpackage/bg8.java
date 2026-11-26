package defpackage;

import androidx.camera.camera2.adapter.SupportedSurfaceCombination;
import java.util.List;
import yads.bo6;
import yads.tm6;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class bg8 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ bg8(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(SupportedSurfaceCombination.getOrderedSupportedStreamUseCaseSurfaceConfigList$lambda$0((SupportedSurfaceCombination) obj2, (List) obj));
            default:
                return bo6.a((bo6) obj2, (tm6) obj);
        }
    }
}
