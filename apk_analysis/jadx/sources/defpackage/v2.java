package defpackage;

import androidx.compose.animation.core.AnimationScope;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.TopAppBarState;
import androidx.compose.material3.internal.AccessibilityServiceStateProvider_androidKt;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.lifecycle.LifecycleOwner;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class v2 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ v2(Object obj, Object obj2, Object obj3, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.e;
        Object obj3 = this.d;
        Object obj4 = this.c;
        switch (i) {
            case 0:
                return AccessibilityServiceStateProvider_androidKt.ObserveState$lambda$12$lambda$11((LifecycleOwner) obj4, (nl3) obj3, (ll3) obj2, (DisposableEffectScope) obj);
            default:
                return AppBarKt.settleAppBar$lambda$54((o07) obj4, (TopAppBarState) obj3, (o07) obj2, (AnimationScope) obj);
        }
    }
}
