package defpackage;

import androidx.compose.material3.DefaultModalWideNavigationRailOverride;
import androidx.compose.runtime.State;
import yads.tq3;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class kca implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ kca(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return tq3.u0((tq3) obj);
            case 1:
                return tq3.t5((tq3) obj);
            case 2:
                return tq3.g7((tq3) obj);
            case 3:
                return tq3.q8((tq3) obj);
            case 4:
                return tq3.ia((tq3) obj);
            case 5:
                return tq3.B2((tq3) obj);
            default:
                return Boolean.valueOf(DefaultModalWideNavigationRailOverride.ModalWideNavigationRail$lambda$6$lambda$5((State) obj));
        }
    }
}
