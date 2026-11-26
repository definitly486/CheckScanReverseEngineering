package androidx.fragment.app;

import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import defpackage.aa4;
import defpackage.cl4;
import defpackage.gh4;
import defpackage.ll3;
import defpackage.ne4;
import defpackage.nm4;
import defpackage.po4;
import defpackage.ul2;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentViewModelLazyKt {

    /* JADX INFO: renamed from: androidx.fragment.app.FragmentViewModelLazyKt$activityViewModels$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements ll3<ViewModelStore> {
        final /* synthetic */ Fragment $this_activityViewModels;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Fragment fragment) {
            super(0);
            this.$this_activityViewModels = fragment;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final ViewModelStore invoke() {
            return this.$this_activityViewModels.requireActivity().getViewModelStore();
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.FragmentViewModelLazyKt$activityViewModels$2, reason: invalid class name */
    public static final class AnonymousClass2 extends gh4 implements ll3<CreationExtras> {
        final /* synthetic */ Fragment $this_activityViewModels;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Fragment fragment) {
            super(0);
            this.$this_activityViewModels = fragment;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final CreationExtras invoke() {
            return this.$this_activityViewModels.requireActivity().getDefaultViewModelCreationExtras();
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.FragmentViewModelLazyKt$activityViewModels$3, reason: invalid class name */
    public static final class AnonymousClass3 extends gh4 implements ll3<ViewModelProvider.Factory> {
        final /* synthetic */ Fragment $this_activityViewModels;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(Fragment fragment) {
            super(0);
            this.$this_activityViewModels = fragment;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final ViewModelProvider.Factory invoke() {
            return this.$this_activityViewModels.requireActivity().getDefaultViewModelProviderFactory();
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.FragmentViewModelLazyKt$activityViewModels$4, reason: invalid class name */
    public static final class AnonymousClass4 extends gh4 implements ll3<ViewModelStore> {
        final /* synthetic */ Fragment $this_activityViewModels;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(Fragment fragment) {
            super(0);
            this.$this_activityViewModels = fragment;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final ViewModelStore invoke() {
            return this.$this_activityViewModels.requireActivity().getViewModelStore();
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.FragmentViewModelLazyKt$activityViewModels$5, reason: invalid class name */
    public static final class AnonymousClass5 extends gh4 implements ll3<CreationExtras> {
        final /* synthetic */ ll3<CreationExtras> $extrasProducer;
        final /* synthetic */ Fragment $this_activityViewModels;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass5(ll3<? extends CreationExtras> ll3Var, Fragment fragment) {
            super(0);
            this.$extrasProducer = ll3Var;
            this.$this_activityViewModels = fragment;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final CreationExtras invoke() {
            CreationExtras creationExtrasInvoke;
            ll3<CreationExtras> ll3Var = this.$extrasProducer;
            return (ll3Var == null || (creationExtrasInvoke = ll3Var.invoke()) == null) ? this.$this_activityViewModels.requireActivity().getDefaultViewModelCreationExtras() : creationExtrasInvoke;
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.FragmentViewModelLazyKt$activityViewModels$6, reason: invalid class name */
    public static final class AnonymousClass6 extends gh4 implements ll3<ViewModelProvider.Factory> {
        final /* synthetic */ Fragment $this_activityViewModels;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass6(Fragment fragment) {
            super(0);
            this.$this_activityViewModels = fragment;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final ViewModelProvider.Factory invoke() {
            return this.$this_activityViewModels.requireActivity().getDefaultViewModelProviderFactory();
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.FragmentViewModelLazyKt$createViewModelLazy$1, reason: invalid class name and case insensitive filesystem */
    public static final class C06841 extends gh4 implements ll3<CreationExtras> {
        final /* synthetic */ Fragment $this_createViewModelLazy;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06841(Fragment fragment) {
            super(0);
            this.$this_createViewModelLazy = fragment;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final CreationExtras invoke() {
            return this.$this_createViewModelLazy.getDefaultViewModelCreationExtras();
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.FragmentViewModelLazyKt$createViewModelLazy$2, reason: invalid class name and case insensitive filesystem */
    public static final class C06852 extends gh4 implements ll3<CreationExtras> {
        final /* synthetic */ Fragment $this_createViewModelLazy;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06852(Fragment fragment) {
            super(0);
            this.$this_createViewModelLazy = fragment;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final CreationExtras invoke() {
            return this.$this_createViewModelLazy.getDefaultViewModelCreationExtras();
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.FragmentViewModelLazyKt$viewModels$2, reason: invalid class name and case insensitive filesystem */
    public static final class C06872 extends gh4 implements ll3<ViewModelStore> {
        final /* synthetic */ cl4<ViewModelStoreOwner> $owner$delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C06872(cl4<? extends ViewModelStoreOwner> cl4Var) {
            super(0);
            this.$owner$delegate = cl4Var;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final ViewModelStore invoke() {
            return FragmentViewModelLazyKt.m9310viewModels$lambda0(this.$owner$delegate).getViewModelStore();
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.FragmentViewModelLazyKt$viewModels$3, reason: invalid class name and case insensitive filesystem */
    public static final class C06883 extends gh4 implements ll3<CreationExtras> {
        final /* synthetic */ cl4<ViewModelStoreOwner> $owner$delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C06883(cl4<? extends ViewModelStoreOwner> cl4Var) {
            super(0);
            this.$owner$delegate = cl4Var;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final CreationExtras invoke() {
            CreationExtras defaultViewModelCreationExtras;
            ViewModelStoreOwner viewModelStoreOwnerM9310viewModels$lambda0 = FragmentViewModelLazyKt.m9310viewModels$lambda0(this.$owner$delegate);
            HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM9310viewModels$lambda0 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM9310viewModels$lambda0 : null;
            return (hasDefaultViewModelProviderFactory == null || (defaultViewModelCreationExtras = hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras()) == null) ? CreationExtras.Empty.INSTANCE : defaultViewModelCreationExtras;
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.FragmentViewModelLazyKt$viewModels$4, reason: invalid class name and case insensitive filesystem */
    public static final class C06894 extends gh4 implements ll3<ViewModelProvider.Factory> {
        final /* synthetic */ cl4<ViewModelStoreOwner> $owner$delegate;
        final /* synthetic */ Fragment $this_viewModels;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C06894(Fragment fragment, cl4<? extends ViewModelStoreOwner> cl4Var) {
            super(0);
            this.$this_viewModels = fragment;
            this.$owner$delegate = cl4Var;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final ViewModelProvider.Factory invoke() {
            ViewModelProvider.Factory defaultViewModelProviderFactory;
            ViewModelStoreOwner viewModelStoreOwnerM9310viewModels$lambda0 = FragmentViewModelLazyKt.m9310viewModels$lambda0(this.$owner$delegate);
            HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM9310viewModels$lambda0 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM9310viewModels$lambda0 : null;
            return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? this.$this_viewModels.getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory;
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.FragmentViewModelLazyKt$viewModels$6, reason: invalid class name and case insensitive filesystem */
    public static final class C06916 extends gh4 implements ll3<ViewModelStore> {
        final /* synthetic */ cl4<ViewModelStoreOwner> $owner$delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C06916(cl4<? extends ViewModelStoreOwner> cl4Var) {
            super(0);
            this.$owner$delegate = cl4Var;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final ViewModelStore invoke() {
            return FragmentViewModelLazyKt.m9311viewModels$lambda1(this.$owner$delegate).getViewModelStore();
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.FragmentViewModelLazyKt$viewModels$7, reason: invalid class name */
    public static final class AnonymousClass7 extends gh4 implements ll3<CreationExtras> {
        final /* synthetic */ ll3<CreationExtras> $extrasProducer;
        final /* synthetic */ cl4<ViewModelStoreOwner> $owner$delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass7(ll3<? extends CreationExtras> ll3Var, cl4<? extends ViewModelStoreOwner> cl4Var) {
            super(0);
            this.$extrasProducer = ll3Var;
            this.$owner$delegate = cl4Var;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final CreationExtras invoke() {
            CreationExtras creationExtrasInvoke;
            ll3<CreationExtras> ll3Var = this.$extrasProducer;
            if (ll3Var != null && (creationExtrasInvoke = ll3Var.invoke()) != null) {
                return creationExtrasInvoke;
            }
            ViewModelStoreOwner viewModelStoreOwnerM9311viewModels$lambda1 = FragmentViewModelLazyKt.m9311viewModels$lambda1(this.$owner$delegate);
            HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM9311viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM9311viewModels$lambda1 : null;
            return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.FragmentViewModelLazyKt$viewModels$8, reason: invalid class name */
    public static final class AnonymousClass8 extends gh4 implements ll3<ViewModelProvider.Factory> {
        final /* synthetic */ cl4<ViewModelStoreOwner> $owner$delegate;
        final /* synthetic */ Fragment $this_viewModels;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass8(Fragment fragment, cl4<? extends ViewModelStoreOwner> cl4Var) {
            super(0);
            this.$this_viewModels = fragment;
            this.$owner$delegate = cl4Var;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final ViewModelProvider.Factory invoke() {
            ViewModelProvider.Factory defaultViewModelProviderFactory;
            ViewModelStoreOwner viewModelStoreOwnerM9311viewModels$lambda1 = FragmentViewModelLazyKt.m9311viewModels$lambda1(this.$owner$delegate);
            HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM9311viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM9311viewModels$lambda1 : null;
            return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? this.$this_viewModels.getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory;
        }
    }

    @ul2
    public static final <VM extends ViewModel> cl4<VM> activityViewModels(Fragment fragment, ll3<? extends ViewModelProvider.Factory> ll3Var) {
        aa4.i();
        throw null;
    }

    public static cl4 activityViewModels$default(Fragment fragment, ll3 ll3Var, int i, Object obj) {
        aa4.i();
        throw null;
    }

    public static final <VM extends ViewModel> cl4<VM> createViewModelLazy(Fragment fragment, ne4<VM> ne4Var, ll3<? extends ViewModelStore> ll3Var, ll3<? extends CreationExtras> ll3Var2, ll3<? extends ViewModelProvider.Factory> ll3Var3) {
        if (ll3Var3 == null) {
            ll3Var3 = new FragmentViewModelLazyKt$createViewModelLazy$factoryPromise$1(fragment);
        }
        return new ViewModelLazy(ne4Var, ll3Var, ll3Var3, ll3Var2);
    }

    public static /* synthetic */ cl4 createViewModelLazy$default(Fragment fragment, ne4 ne4Var, ll3 ll3Var, ll3 ll3Var2, ll3 ll3Var3, int i, Object obj) {
        if ((i & 4) != 0) {
            ll3Var2 = new C06852(fragment);
        }
        if ((i & 8) != 0) {
            ll3Var3 = null;
        }
        return createViewModelLazy(fragment, ne4Var, ll3Var, ll3Var2, ll3Var3);
    }

    @ul2
    public static final <VM extends ViewModel> cl4<VM> viewModels(Fragment fragment, ll3<? extends ViewModelStoreOwner> ll3Var, ll3<? extends ViewModelProvider.Factory> ll3Var2) {
        nm4.a(po4.NONE, new FragmentViewModelLazyKt$viewModels$owner$2(ll3Var));
        aa4.i();
        throw null;
    }

    public static cl4 viewModels$default(Fragment fragment, ll3 ll3Var, ll3 ll3Var2, int i, Object obj) {
        if ((i & 1) != 0) {
            ll3Var = new C06861(fragment);
        }
        nm4.a(po4.NONE, new FragmentViewModelLazyKt$viewModels$owner$2(ll3Var));
        aa4.i();
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: viewModels$lambda-0, reason: not valid java name */
    public static final ViewModelStoreOwner m9310viewModels$lambda0(cl4<? extends ViewModelStoreOwner> cl4Var) {
        return cl4Var.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: viewModels$lambda-1, reason: not valid java name */
    public static final ViewModelStoreOwner m9311viewModels$lambda1(cl4<? extends ViewModelStoreOwner> cl4Var) {
        return cl4Var.getValue();
    }

    /* JADX INFO: renamed from: androidx.fragment.app.FragmentViewModelLazyKt$viewModels$1, reason: invalid class name and case insensitive filesystem */
    public static final class C06861 extends gh4 implements ll3<Fragment> {
        final /* synthetic */ Fragment $this_viewModels;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06861(Fragment fragment) {
            super(0);
            this.$this_viewModels = fragment;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final Fragment invoke() {
            return this.$this_viewModels;
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.FragmentViewModelLazyKt$viewModels$5, reason: invalid class name and case insensitive filesystem */
    public static final class C06905 extends gh4 implements ll3<Fragment> {
        final /* synthetic */ Fragment $this_viewModels;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06905(Fragment fragment) {
            super(0);
            this.$this_viewModels = fragment;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final Fragment invoke() {
            return this.$this_viewModels;
        }
    }

    public static final <VM extends ViewModel> cl4<VM> activityViewModels(Fragment fragment, ll3<? extends CreationExtras> ll3Var, ll3<? extends ViewModelProvider.Factory> ll3Var2) {
        aa4.i();
        throw null;
    }

    public static cl4 activityViewModels$default(Fragment fragment, ll3 ll3Var, ll3 ll3Var2, int i, Object obj) {
        aa4.i();
        throw null;
    }

    @ul2
    public static final /* synthetic */ cl4 createViewModelLazy(Fragment fragment, ne4 ne4Var, ll3 ll3Var, ll3 ll3Var2) {
        return createViewModelLazy(fragment, ne4Var, ll3Var, new C06841(fragment), ll3Var2);
    }

    public static final <VM extends ViewModel> cl4<VM> viewModels(Fragment fragment, ll3<? extends ViewModelStoreOwner> ll3Var, ll3<? extends CreationExtras> ll3Var2, ll3<? extends ViewModelProvider.Factory> ll3Var3) {
        nm4.a(po4.NONE, new FragmentViewModelLazyKt$viewModels$owner$4(ll3Var));
        aa4.i();
        throw null;
    }

    public static /* synthetic */ cl4 createViewModelLazy$default(Fragment fragment, ne4 ne4Var, ll3 ll3Var, ll3 ll3Var2, int i, Object obj) {
        if ((i & 4) != 0) {
            ll3Var2 = null;
        }
        return createViewModelLazy(fragment, ne4Var, ll3Var, ll3Var2);
    }

    public static cl4 viewModels$default(Fragment fragment, ll3 ll3Var, ll3 ll3Var2, ll3 ll3Var3, int i, Object obj) {
        if ((i & 1) != 0) {
            ll3Var = new C06905(fragment);
        }
        nm4.a(po4.NONE, new FragmentViewModelLazyKt$viewModels$owner$4(ll3Var));
        aa4.i();
        throw null;
    }
}
