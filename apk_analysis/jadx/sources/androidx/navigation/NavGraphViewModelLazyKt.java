package androidx.navigation;

import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;
import defpackage.aa4;
import defpackage.cl4;
import defpackage.fh8;
import defpackage.ll3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes3.dex */
public final class NavGraphViewModelLazyKt {

    /* JADX INFO: renamed from: androidx.navigation.NavGraphViewModelLazyKt$navGraphViewModels$1, reason: invalid class name */
    public static final class AnonymousClass1 implements ll3<CreationExtras> {
        final /* synthetic */ cl4<NavBackStackEntry> $backStackEntry$delegate;

        public AnonymousClass1(cl4<NavBackStackEntry> cl4Var) {
            this.$backStackEntry$delegate = cl4Var;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final CreationExtras invoke() {
            return NavGraphViewModelLazyKt.m9351navGraphViewModels$lambda0(this.$backStackEntry$delegate).getDefaultViewModelCreationExtras();
        }
    }

    /* JADX INFO: renamed from: androidx.navigation.NavGraphViewModelLazyKt$navGraphViewModels$2, reason: invalid class name */
    public static final class AnonymousClass2 implements ll3<ViewModelProvider.Factory> {
        final /* synthetic */ cl4<NavBackStackEntry> $backStackEntry$delegate;

        public AnonymousClass2(cl4<NavBackStackEntry> cl4Var) {
            this.$backStackEntry$delegate = cl4Var;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final ViewModelProvider.Factory invoke() {
            return NavGraphViewModelLazyKt.m9351navGraphViewModels$lambda0(this.$backStackEntry$delegate).getDefaultViewModelProviderFactory();
        }
    }

    /* JADX INFO: renamed from: androidx.navigation.NavGraphViewModelLazyKt$navGraphViewModels$3, reason: invalid class name */
    public static final class AnonymousClass3 implements ll3<CreationExtras> {
        final /* synthetic */ cl4<NavBackStackEntry> $backStackEntry$delegate;
        final /* synthetic */ ll3<CreationExtras> $extrasProducer;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass3(ll3<? extends CreationExtras> ll3Var, cl4<NavBackStackEntry> cl4Var) {
            this.$extrasProducer = ll3Var;
            this.$backStackEntry$delegate = cl4Var;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final CreationExtras invoke() {
            CreationExtras creationExtrasInvoke;
            ll3<CreationExtras> ll3Var = this.$extrasProducer;
            return (ll3Var == null || (creationExtrasInvoke = ll3Var.invoke()) == null) ? NavGraphViewModelLazyKt.m9352navGraphViewModels$lambda1(this.$backStackEntry$delegate).getDefaultViewModelCreationExtras() : creationExtrasInvoke;
        }
    }

    /* JADX INFO: renamed from: androidx.navigation.NavGraphViewModelLazyKt$navGraphViewModels$4, reason: invalid class name */
    public static final class AnonymousClass4 implements ll3<ViewModelProvider.Factory> {
        final /* synthetic */ cl4<NavBackStackEntry> $backStackEntry$delegate;

        public AnonymousClass4(cl4<NavBackStackEntry> cl4Var) {
            this.$backStackEntry$delegate = cl4Var;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final ViewModelProvider.Factory invoke() {
            return NavGraphViewModelLazyKt.m9352navGraphViewModels$lambda1(this.$backStackEntry$delegate).getDefaultViewModelProviderFactory();
        }
    }

    /* JADX INFO: renamed from: androidx.navigation.NavGraphViewModelLazyKt$navGraphViewModels$5, reason: invalid class name */
    public static final class AnonymousClass5 implements ll3<CreationExtras> {
        final /* synthetic */ cl4<NavBackStackEntry> $backStackEntry$delegate;

        public AnonymousClass5(cl4<NavBackStackEntry> cl4Var) {
            this.$backStackEntry$delegate = cl4Var;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final CreationExtras invoke() {
            return NavGraphViewModelLazyKt.m9353navGraphViewModels$lambda2(this.$backStackEntry$delegate).getDefaultViewModelCreationExtras();
        }
    }

    /* JADX INFO: renamed from: androidx.navigation.NavGraphViewModelLazyKt$navGraphViewModels$6, reason: invalid class name */
    public static final class AnonymousClass6 implements ll3<ViewModelProvider.Factory> {
        final /* synthetic */ cl4<NavBackStackEntry> $backStackEntry$delegate;

        public AnonymousClass6(cl4<NavBackStackEntry> cl4Var) {
            this.$backStackEntry$delegate = cl4Var;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final ViewModelProvider.Factory invoke() {
            return NavGraphViewModelLazyKt.m9353navGraphViewModels$lambda2(this.$backStackEntry$delegate).getDefaultViewModelProviderFactory();
        }
    }

    /* JADX INFO: renamed from: androidx.navigation.NavGraphViewModelLazyKt$navGraphViewModels$7, reason: invalid class name */
    public static final class AnonymousClass7 implements ll3<CreationExtras> {
        final /* synthetic */ cl4<NavBackStackEntry> $backStackEntry$delegate;
        final /* synthetic */ ll3<CreationExtras> $extrasProducer;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass7(ll3<? extends CreationExtras> ll3Var, cl4<NavBackStackEntry> cl4Var) {
            this.$extrasProducer = ll3Var;
            this.$backStackEntry$delegate = cl4Var;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final CreationExtras invoke() {
            CreationExtras creationExtrasInvoke;
            ll3<CreationExtras> ll3Var = this.$extrasProducer;
            return (ll3Var == null || (creationExtrasInvoke = ll3Var.invoke()) == null) ? NavGraphViewModelLazyKt.m9354navGraphViewModels$lambda3(this.$backStackEntry$delegate).getDefaultViewModelCreationExtras() : creationExtrasInvoke;
        }
    }

    /* JADX INFO: renamed from: androidx.navigation.NavGraphViewModelLazyKt$navGraphViewModels$8, reason: invalid class name */
    public static final class AnonymousClass8 implements ll3<ViewModelProvider.Factory> {
        final /* synthetic */ cl4<NavBackStackEntry> $backStackEntry$delegate;

        public AnonymousClass8(cl4<NavBackStackEntry> cl4Var) {
            this.$backStackEntry$delegate = cl4Var;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final ViewModelProvider.Factory invoke() {
            return NavGraphViewModelLazyKt.m9354navGraphViewModels$lambda3(this.$backStackEntry$delegate).getDefaultViewModelProviderFactory();
        }
    }

    @ul2
    public static final <VM extends ViewModel> cl4<VM> navGraphViewModels(Fragment fragment, String str, ll3<? extends ViewModelProvider.Factory> ll3Var) {
        fragment.getClass();
        str.getClass();
        new NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$3(new fh8(new NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$8(fragment, str)));
        aa4.i();
        throw null;
    }

    public static cl4 navGraphViewModels$default(Fragment fragment, String str, ll3 ll3Var, int i, Object obj) {
        fragment.getClass();
        str.getClass();
        new NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$3(new fh8(new NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$8(fragment, str)));
        aa4.i();
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: navGraphViewModels$lambda-0, reason: not valid java name */
    public static final NavBackStackEntry m9351navGraphViewModels$lambda0(cl4<NavBackStackEntry> cl4Var) {
        return cl4Var.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: navGraphViewModels$lambda-1, reason: not valid java name */
    public static final NavBackStackEntry m9352navGraphViewModels$lambda1(cl4<NavBackStackEntry> cl4Var) {
        return cl4Var.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: navGraphViewModels$lambda-2, reason: not valid java name */
    public static final NavBackStackEntry m9353navGraphViewModels$lambda2(cl4<NavBackStackEntry> cl4Var) {
        return cl4Var.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: navGraphViewModels$lambda-3, reason: not valid java name */
    public static final NavBackStackEntry m9354navGraphViewModels$lambda3(cl4<NavBackStackEntry> cl4Var) {
        return cl4Var.getValue();
    }

    public static final <VM extends ViewModel> cl4<VM> navGraphViewModels(Fragment fragment, int i, ll3<? extends CreationExtras> ll3Var, ll3<? extends ViewModelProvider.Factory> ll3Var2) {
        fragment.getClass();
        new NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$2(new fh8(new NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$5(fragment, i)));
        aa4.i();
        throw null;
    }

    public static cl4 navGraphViewModels$default(Fragment fragment, int i, ll3 ll3Var, ll3 ll3Var2, int i2, Object obj) {
        fragment.getClass();
        new NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$2(new fh8(new NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$5(fragment, i)));
        aa4.i();
        throw null;
    }

    @ul2
    public static final <VM extends ViewModel> cl4<VM> navGraphViewModels(Fragment fragment, int i, ll3<? extends ViewModelProvider.Factory> ll3Var) {
        fragment.getClass();
        new NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$1(new fh8(new NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$2(fragment, i)));
        aa4.i();
        throw null;
    }

    public static cl4 navGraphViewModels$default(Fragment fragment, int i, ll3 ll3Var, int i2, Object obj) {
        fragment.getClass();
        new NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$1(new fh8(new NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$2(fragment, i)));
        aa4.i();
        throw null;
    }

    public static final <VM extends ViewModel> cl4<VM> navGraphViewModels(Fragment fragment, String str, ll3<? extends CreationExtras> ll3Var, ll3<? extends ViewModelProvider.Factory> ll3Var2) {
        fragment.getClass();
        str.getClass();
        new NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$4(new fh8(new NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$11(fragment, str)));
        aa4.i();
        throw null;
    }

    public static cl4 navGraphViewModels$default(Fragment fragment, String str, ll3 ll3Var, ll3 ll3Var2, int i, Object obj) {
        fragment.getClass();
        str.getClass();
        new NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$4(new fh8(new NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$11(fragment, str)));
        aa4.i();
        throw null;
    }
}
