package androidx.compose.ui.platform;

import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.r07;

/* JADX INFO: loaded from: classes2.dex */
public final class ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed$installFor$2 extends gh4 implements ll3<j59> {
    final /* synthetic */ r07<ll3<j59>> $disposer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed$installFor$2(r07<ll3<j59>> r07Var) {
        super(0);
        this.$disposer = r07Var;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.$disposer.b.invoke();
    }

    @Override // defpackage.ll3
    public /* bridge */ /* synthetic */ j59 invoke() {
        invoke2();
        return j59.a;
    }
}
