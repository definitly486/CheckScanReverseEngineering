package androidx.core.transition;

import android.transition.Transition;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class TransitionKt$addListener$listener$1 implements Transition.TransitionListener {
    final /* synthetic */ nl3<Transition, j59> $onCancel;
    final /* synthetic */ nl3<Transition, j59> $onEnd;
    final /* synthetic */ nl3<Transition, j59> $onPause;
    final /* synthetic */ nl3<Transition, j59> $onResume;
    final /* synthetic */ nl3<Transition, j59> $onStart;

    /* JADX WARN: Multi-variable type inference failed */
    public TransitionKt$addListener$listener$1(nl3<? super Transition, j59> nl3Var, nl3<? super Transition, j59> nl3Var2, nl3<? super Transition, j59> nl3Var3, nl3<? super Transition, j59> nl3Var4, nl3<? super Transition, j59> nl3Var5) {
        this.$onEnd = nl3Var;
        this.$onResume = nl3Var2;
        this.$onPause = nl3Var3;
        this.$onCancel = nl3Var4;
        this.$onStart = nl3Var5;
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionCancel(Transition transition) {
        this.$onCancel.invoke(transition);
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionEnd(Transition transition) {
        this.$onEnd.invoke(transition);
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionPause(Transition transition) {
        this.$onPause.invoke(transition);
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionResume(Transition transition) {
        this.$onResume.invoke(transition);
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionStart(Transition transition) {
        this.$onStart.invoke(transition);
    }
}
