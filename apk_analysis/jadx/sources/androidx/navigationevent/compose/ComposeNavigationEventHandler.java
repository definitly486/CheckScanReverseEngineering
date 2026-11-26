package androidx.navigationevent.compose;

import androidx.navigationevent.NavigationEvent;
import androidx.navigationevent.NavigationEventHandler;
import androidx.navigationevent.NavigationEventInfo;
import androidx.navigationevent.NavigationEventTransitionState;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes3.dex */
final class ComposeNavigationEventHandler<T extends NavigationEventInfo> extends NavigationEventHandler<T> {
    private ll3<j59> currentOnBackCancelled;
    private ll3<j59> currentOnBackCompleted;
    private ll3<j59> currentOnForwardCancelled;
    private ll3<j59> currentOnForwardCompleted;
    private final nl3<NavigationEventTransitionState, j59> onTransitionStateChanged;

    /* JADX WARN: Multi-variable type inference failed */
    public ComposeNavigationEventHandler(T t, nl3<? super NavigationEventTransitionState, j59> nl3Var) {
        super(t, false, false);
        this.onTransitionStateChanged = nl3Var;
        this.currentOnForwardCancelled = new b();
        this.currentOnForwardCompleted = new c();
        this.currentOnBackCancelled = new d();
        this.currentOnBackCompleted = new e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _init_$lambda$0(NavigationEventTransitionState navigationEventTransitionState) {
        return j59.a;
    }

    public final ll3<j59> getCurrentOnBackCancelled() {
        return this.currentOnBackCancelled;
    }

    public final ll3<j59> getCurrentOnBackCompleted() {
        return this.currentOnBackCompleted;
    }

    public final ll3<j59> getCurrentOnForwardCancelled() {
        return this.currentOnForwardCancelled;
    }

    public final ll3<j59> getCurrentOnForwardCompleted() {
        return this.currentOnForwardCompleted;
    }

    @Override // androidx.navigationevent.NavigationEventHandler
    public void onBackCancelled() {
        this.onTransitionStateChanged.invoke(getTransitionState());
        this.currentOnBackCancelled.invoke();
    }

    @Override // androidx.navigationevent.NavigationEventHandler
    public void onBackCompleted() {
        this.onTransitionStateChanged.invoke(getTransitionState());
        this.currentOnBackCompleted.invoke();
    }

    @Override // androidx.navigationevent.NavigationEventHandler
    public void onBackProgressed(NavigationEvent navigationEvent) {
        this.onTransitionStateChanged.invoke(getTransitionState());
    }

    @Override // androidx.navigationevent.NavigationEventHandler
    public void onBackStarted(NavigationEvent navigationEvent) {
        this.onTransitionStateChanged.invoke(getTransitionState());
    }

    @Override // androidx.navigationevent.NavigationEventHandler
    public void onForwardCancelled() {
        this.onTransitionStateChanged.invoke(getTransitionState());
        this.currentOnForwardCancelled.invoke();
    }

    @Override // androidx.navigationevent.NavigationEventHandler
    public void onForwardCompleted() {
        this.onTransitionStateChanged.invoke(getTransitionState());
        this.currentOnForwardCompleted.invoke();
    }

    @Override // androidx.navigationevent.NavigationEventHandler
    public void onForwardProgressed(NavigationEvent navigationEvent) {
        this.onTransitionStateChanged.invoke(getTransitionState());
    }

    @Override // androidx.navigationevent.NavigationEventHandler
    public void onForwardStarted(NavigationEvent navigationEvent) {
        this.onTransitionStateChanged.invoke(getTransitionState());
    }

    public final void setCurrentOnBackCancelled(ll3<j59> ll3Var) {
        this.currentOnBackCancelled = ll3Var;
    }

    public final void setCurrentOnBackCompleted(ll3<j59> ll3Var) {
        this.currentOnBackCompleted = ll3Var;
    }

    public final void setCurrentOnForwardCancelled(ll3<j59> ll3Var) {
        this.currentOnForwardCancelled = ll3Var;
    }

    public final void setCurrentOnForwardCompleted(ll3<j59> ll3Var) {
        this.currentOnForwardCompleted = ll3Var;
    }

    public /* synthetic */ ComposeNavigationEventHandler(NavigationEventInfo navigationEventInfo, nl3 nl3Var, int i, jh2 jh2Var) {
        this(navigationEventInfo, (i & 2) != 0 ? new a() : nl3Var);
    }
}
