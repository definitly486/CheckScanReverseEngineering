package defpackage;

import android.view.View;
import android.view.animation.Animation;
import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.foundation.pager.PagerState;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class x16 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ x16(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        Animation animation;
        Animation animation2;
        int i = this.b;
        Object obj = this.d;
        switch (i) {
            case 0:
                return Boolean.valueOf(PagerKt.pagerSemantics$performForwardPaging((PagerState) this.c, (y22) obj));
            default:
                View view = (View) obj;
                if (view.hasTransientState() && (animation = view.getAnimation()) != null && animation.hasStarted() && (animation2 = view.getAnimation()) != null) {
                    animation2.hasEnded();
                }
                return j59.a;
        }
    }
}
