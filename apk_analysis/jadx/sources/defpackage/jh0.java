package defpackage;

import androidx.compose.material3.TooltipState;
import androidx.compose.material3.internal.BasicTooltipKt;
import androidx.compose.runtime.MutableState;
import androidx.navigationevent.NavigationEventInfo;
import androidx.navigationevent.compose.NavigationEventState;
import androidx.navigationevent.compose.RememberNavigationEventStateKt;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class jh0 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;

    public /* synthetic */ jh0(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
        this.f = obj4;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return BasicTooltipKt.TooltipPopup$lambda$9$lambda$8((ll3) this.c, (TooltipState) this.d, (y22) this.e, (MutableState) this.f);
            default:
                return RememberNavigationEventStateKt.rememberNavigationEventState$lambda$2$lambda$1((NavigationEventState) this.c, (NavigationEventInfo) this.d, (List) this.e, (List) this.f);
        }
    }
}
