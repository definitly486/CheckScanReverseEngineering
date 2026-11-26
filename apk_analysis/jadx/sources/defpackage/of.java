package defpackage;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.foundation.gestures.AnchoredDraggableState;
import yads.as2;
import yads.bn1;
import yads.fs2;
import yads.jk1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class of implements nl3 {
    public final /* synthetic */ int b = 0;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;
    public final /* synthetic */ Object g;

    public /* synthetic */ of(AnimationSpec animationSpec, DecayAnimationSpec decayAnimationSpec, nl3 nl3Var, ll3 ll3Var, nl3 nl3Var2) {
        this.c = nl3Var;
        this.e = ll3Var;
        this.f = animationSpec;
        this.g = decayAnimationSpec;
        this.d = nl3Var2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.g;
        Object obj3 = this.f;
        Object obj4 = this.e;
        Object obj5 = this.d;
        Object obj6 = this.c;
        switch (i) {
            case 0:
                return AnchoredDraggableState.Companion.Saver$lambda$7((nl3) obj6, (ll3) obj4, (AnimationSpec) obj3, (DecayAnimationSpec) obj2, (nl3) obj5, obj);
            default:
                return jk1.a((jk1) obj6, (bn1) obj5, (as2) obj4, (fs2) obj3, (as2) obj2, obj);
        }
    }

    public /* synthetic */ of(jk1 jk1Var, bn1 bn1Var, as2 as2Var, fs2 fs2Var, as2 as2Var2) {
        this.c = jk1Var;
        this.d = bn1Var;
        this.e = as2Var;
        this.f = fs2Var;
        this.g = as2Var2;
    }
}
