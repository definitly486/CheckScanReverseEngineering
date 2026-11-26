package defpackage;

import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.InfiniteTransitionKt;
import androidx.compose.runtime.DisposableEffectScope;
import java.util.List;
import yads.sy0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class w44 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ w44(int i, Object obj, Object obj2) {
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
                return InfiniteTransitionKt.animateValue$lambda$2$0((InfiniteTransition) obj3, (InfiniteTransition.TransitionAnimationState) obj2, (DisposableEffectScope) obj);
            default:
                return sy0.a((Integer) obj3, obj2, (List) obj);
        }
    }
}
