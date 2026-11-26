package androidx.activity;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import defpackage.aa4;
import defpackage.cl4;
import defpackage.ll3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
public final class ActivityViewModelLazyKt {

    /* JADX INFO: renamed from: androidx.activity.ActivityViewModelLazyKt$viewModels$1, reason: invalid class name */
    public static final class AnonymousClass1 implements ll3<ViewModelStore> {
        final /* synthetic */ ComponentActivity $this_viewModels;

        public AnonymousClass1(ComponentActivity componentActivity) {
            this.$this_viewModels = componentActivity;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final ViewModelStore invoke() {
            return this.$this_viewModels.getViewModelStore();
        }
    }

    /* JADX INFO: renamed from: androidx.activity.ActivityViewModelLazyKt$viewModels$2, reason: invalid class name */
    public static final class AnonymousClass2 implements ll3<CreationExtras> {
        final /* synthetic */ ComponentActivity $this_viewModels;

        public AnonymousClass2(ComponentActivity componentActivity) {
            this.$this_viewModels = componentActivity;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final CreationExtras invoke() {
            return this.$this_viewModels.getDefaultViewModelCreationExtras();
        }
    }

    /* JADX INFO: renamed from: androidx.activity.ActivityViewModelLazyKt$viewModels$3, reason: invalid class name */
    public static final class AnonymousClass3 implements ll3<ViewModelStore> {
        final /* synthetic */ ComponentActivity $this_viewModels;

        public AnonymousClass3(ComponentActivity componentActivity) {
            this.$this_viewModels = componentActivity;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final ViewModelStore invoke() {
            return this.$this_viewModels.getViewModelStore();
        }
    }

    /* JADX INFO: renamed from: androidx.activity.ActivityViewModelLazyKt$viewModels$4, reason: invalid class name */
    public static final class AnonymousClass4 implements ll3<CreationExtras> {
        final /* synthetic */ ll3<CreationExtras> $extrasProducer;
        final /* synthetic */ ComponentActivity $this_viewModels;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass4(ll3<? extends CreationExtras> ll3Var, ComponentActivity componentActivity) {
            this.$extrasProducer = ll3Var;
            this.$this_viewModels = componentActivity;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final CreationExtras invoke() {
            CreationExtras creationExtrasInvoke;
            ll3<CreationExtras> ll3Var = this.$extrasProducer;
            return (ll3Var == null || (creationExtrasInvoke = ll3Var.invoke()) == null) ? this.$this_viewModels.getDefaultViewModelCreationExtras() : creationExtrasInvoke;
        }
    }

    @ul2
    public static final <VM extends ViewModel> cl4<VM> viewModels(ComponentActivity componentActivity, ll3<? extends ViewModelProvider.Factory> ll3Var) {
        componentActivity.getClass();
        if (ll3Var == null) {
            new ActivityViewModelLazyKt$viewModels$factoryPromise$1(componentActivity);
        }
        aa4.i();
        throw null;
    }

    public static cl4 viewModels$default(ComponentActivity componentActivity, ll3 ll3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            ll3Var = null;
        }
        componentActivity.getClass();
        if (ll3Var == null) {
            new ActivityViewModelLazyKt$viewModels$factoryPromise$1(componentActivity);
        }
        aa4.i();
        throw null;
    }

    public static final <VM extends ViewModel> cl4<VM> viewModels(ComponentActivity componentActivity, ll3<? extends CreationExtras> ll3Var, ll3<? extends ViewModelProvider.Factory> ll3Var2) {
        componentActivity.getClass();
        if (ll3Var2 == null) {
            new ActivityViewModelLazyKt$viewModels$factoryPromise$2(componentActivity);
        }
        aa4.i();
        throw null;
    }

    public static cl4 viewModels$default(ComponentActivity componentActivity, ll3 ll3Var, ll3 ll3Var2, int i, Object obj) {
        if ((i & 2) != 0) {
            ll3Var2 = null;
        }
        componentActivity.getClass();
        if (ll3Var2 == null) {
            new ActivityViewModelLazyKt$viewModels$factoryPromise$2(componentActivity);
        }
        aa4.i();
        throw null;
    }
}
