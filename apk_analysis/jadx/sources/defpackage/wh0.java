package defpackage;

import androidx.compose.animation.core.Animatable;
import androidx.compose.material3.DefaultModalWideNavigationRailOverride;
import androidx.compose.material3.TooltipState;
import androidx.compose.material3.internal.BasicTooltipKt;
import androidx.work.WorkRequest;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.WorkerUpdater;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class wh0 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ wh0(int i, Object obj, Object obj2) {
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
                return Boolean.valueOf(BasicTooltipKt.anchorSemantics$lambda$12$lambda$11((y22) obj2, (TooltipState) obj));
            case 1:
                return DefaultModalWideNavigationRailOverride.ModalWideNavigationRail$lambda$22$lambda$21((y22) obj2, (Animatable) obj);
            case 2:
                return rp7.e((String) obj2, ba6.b.a, new mp7[0], new vb5((aj7) obj, 1));
            default:
                return WorkerUpdater.updateWorkImpl$lambda$4((WorkManagerImpl) obj2, (WorkRequest) obj);
        }
    }
}
