package androidx.compose.animation;

import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class SharedTransitionScopeImpl$observeAnimatingBlock$1 extends gh4 implements ll3<j59> {
    final /* synthetic */ SharedTransitionScopeImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharedTransitionScopeImpl$observeAnimatingBlock$1(SharedTransitionScopeImpl sharedTransitionScopeImpl) {
        super(0);
        this.this$0 = sharedTransitionScopeImpl;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        Collection collectionValues = this.this$0.sharedElements.toMap().values();
        if ((collectionValues instanceof Collection) && collectionValues.isEmpty()) {
            return;
        }
        Iterator it = collectionValues.iterator();
        while (it.hasNext() && !((SharedElement) it.next()).isAnimating()) {
        }
    }

    @Override // defpackage.ll3
    public /* bridge */ /* synthetic */ j59 invoke() {
        invoke2();
        return j59.a;
    }
}
