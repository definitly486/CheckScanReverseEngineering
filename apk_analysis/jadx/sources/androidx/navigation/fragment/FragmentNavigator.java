package androidx.navigation.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentOnAttachListener;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.InitializerViewModelFactoryBuilder;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import androidx.navigation.NavigatorProvider;
import androidx.navigation.NavigatorState;
import androidx.navigation.fragment.FragmentNavigator;
import defpackage.aa4;
import defpackage.ah;
import defpackage.b03;
import defpackage.b36;
import defpackage.c9;
import defpackage.f29;
import defpackage.gk3;
import defpackage.hk3;
import defpackage.ik3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.jp7;
import defpackage.ll3;
import defpackage.n05;
import defpackage.n1;
import defpackage.ni;
import defpackage.nl3;
import defpackage.nn1;
import defpackage.qn1;
import defpackage.ul2;
import defpackage.x07;
import defpackage.xp;
import defpackage.y68;
import defpackage.yz1;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
@Navigator.Name("fragment")
public class FragmentNavigator extends Navigator<Destination> {
    private static final Companion Companion = new Companion(null);
    private static final String KEY_SAVED_IDS = "androidx-nav-fragment:navigator:savedIds";
    private static final String TAG = "FragmentNavigator";
    private final int containerId;
    private final Context context;
    private final FragmentManager fragmentManager;
    private final LifecycleEventObserver fragmentObserver;
    private final nl3<NavBackStackEntry, LifecycleEventObserver> fragmentViewObserver;
    private final List<b36<String, Boolean>> pendingOps;
    private final Set<String> savedIds;

    public static final class ClearEntryStateViewModel extends ViewModel {
        public WeakReference<ll3<j59>> completeTransition;

        public final WeakReference<ll3<j59>> getCompleteTransition() {
            WeakReference<ll3<j59>> weakReference = this.completeTransition;
            if (weakReference != null) {
                return weakReference;
            }
            aa4.j("completeTransition");
            throw null;
        }

        @Override // androidx.lifecycle.ViewModel
        public void onCleared() {
            super.onCleared();
            ll3<j59> ll3Var = getCompleteTransition().get();
            if (ll3Var != null) {
                ll3Var.invoke();
            }
        }

        public final void setCompleteTransition(WeakReference<ll3<j59>> weakReference) {
            weakReference.getClass();
            this.completeTransition = weakReference;
        }
    }

    public static final class Extras implements Navigator.Extras {
        private final LinkedHashMap<View, String> _sharedElements;

        public static final class Builder {
            private final LinkedHashMap<View, String> _sharedElements = new LinkedHashMap<>();

            public final Builder addSharedElement(View view, String str) {
                view.getClass();
                str.getClass();
                this._sharedElements.put(view, str);
                return this;
            }

            public final Builder addSharedElements(Map<View, String> map) {
                map.getClass();
                for (Map.Entry<View, String> entry : map.entrySet()) {
                    addSharedElement(entry.getKey(), entry.getValue());
                }
                return this;
            }

            public final Extras build() {
                return new Extras(this._sharedElements);
            }
        }

        public Extras(Map<View, String> map) {
            map.getClass();
            LinkedHashMap<View, String> linkedHashMap = new LinkedHashMap<>();
            this._sharedElements = linkedHashMap;
            linkedHashMap.putAll(map);
        }

        public final Map<View, String> getSharedElements() {
            return n05.l(this._sharedElements);
        }
    }

    public FragmentNavigator(Context context, FragmentManager fragmentManager, int i) {
        context.getClass();
        fragmentManager.getClass();
        this.context = context;
        this.fragmentManager = fragmentManager;
        this.containerId = i;
        this.savedIds = new LinkedHashSet();
        this.pendingOps = new ArrayList();
        this.fragmentObserver = new LifecycleEventObserver() { // from class: fk3
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                FragmentNavigator.fragmentObserver$lambda$1(this.b, lifecycleOwner, event);
            }
        };
        this.fragmentViewObserver = new gk3(this, 0);
    }

    private final void addPendingOps(String str, boolean z, boolean z2) {
        if (z2) {
            nn1.y(new yz1(str, 1), this.pendingOps);
        }
        this.pendingOps.add(new b36<>(str, Boolean.valueOf(z)));
    }

    public static /* synthetic */ void addPendingOps$default(FragmentNavigator fragmentNavigator, String str, boolean z, boolean z2, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: addPendingOps");
            return;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = true;
        }
        fragmentNavigator.addPendingOps(str, z, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean addPendingOps$lambda$16(String str, b36 b36Var) {
        b36Var.getClass();
        return aa4.e(b36Var.b, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 attachClearViewModel$lambda$12(NavBackStackEntry navBackStackEntry, NavigatorState navigatorState, FragmentNavigator fragmentNavigator, Fragment fragment) {
        for (NavBackStackEntry navBackStackEntry2 : navigatorState.getTransitionsInProgress().getValue()) {
            if (fragmentNavigator.isLoggingEnabled(2)) {
                Log.v(TAG, "Marking transition complete for entry " + navBackStackEntry2 + " due to fragment " + fragment + " viewmodel being cleared");
            }
            navigatorState.markTransitionComplete(navBackStackEntry2);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ClearEntryStateViewModel attachClearViewModel$lambda$9$lambda$8(CreationExtras creationExtras) {
        creationExtras.getClass();
        return new ClearEntryStateViewModel();
    }

    private final void attachObservers(NavBackStackEntry navBackStackEntry, Fragment fragment) {
        fragment.getViewLifecycleOwnerLiveData().observe(fragment, new FragmentNavigator$sam$androidx_lifecycle_Observer$0(new b03(this, fragment, navBackStackEntry, 1)));
        fragment.getLifecycle().addObserver(this.fragmentObserver);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 attachObservers$lambda$7(FragmentNavigator fragmentNavigator, Fragment fragment, NavBackStackEntry navBackStackEntry, LifecycleOwner lifecycleOwner) {
        List<b36<String, Boolean>> list = fragmentNavigator.pendingOps;
        boolean z = false;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (aa4.e(((b36) it.next()).b, fragment.getTag())) {
                    z = true;
                    break;
                }
            }
        }
        if (lifecycleOwner != null && !z) {
            Lifecycle lifecycle = fragment.getViewLifecycleOwner().getLifecycle();
            if (lifecycle.getCurrentState().isAtLeast(Lifecycle.State.CREATED)) {
                lifecycle.addObserver(fragmentNavigator.fragmentViewObserver.invoke(navBackStackEntry));
            }
        }
        return j59.a;
    }

    private final FragmentTransaction createFragmentTransaction(NavBackStackEntry navBackStackEntry, NavOptions navOptions) {
        NavDestination destination = navBackStackEntry.getDestination();
        destination.getClass();
        Bundle arguments = navBackStackEntry.getArguments();
        String className = ((Destination) destination).getClassName();
        if (className.charAt(0) == '.') {
            className = this.context.getPackageName() + className;
        }
        Fragment fragmentInstantiate = this.fragmentManager.getFragmentFactory().instantiate(this.context.getClassLoader(), className);
        fragmentInstantiate.getClass();
        fragmentInstantiate.setArguments(arguments);
        FragmentTransaction fragmentTransactionBeginTransaction = this.fragmentManager.beginTransaction();
        fragmentTransactionBeginTransaction.getClass();
        int enterAnim = navOptions != null ? navOptions.getEnterAnim() : -1;
        int exitAnim = navOptions != null ? navOptions.getExitAnim() : -1;
        int popEnterAnim = navOptions != null ? navOptions.getPopEnterAnim() : -1;
        int popExitAnim = navOptions != null ? navOptions.getPopExitAnim() : -1;
        if (enterAnim != -1 || exitAnim != -1 || popEnterAnim != -1 || popExitAnim != -1) {
            if (enterAnim == -1) {
                enterAnim = 0;
            }
            if (exitAnim == -1) {
                exitAnim = 0;
            }
            if (popEnterAnim == -1) {
                popEnterAnim = 0;
            }
            fragmentTransactionBeginTransaction.setCustomAnimations(enterAnim, exitAnim, popEnterAnim, popExitAnim != -1 ? popExitAnim : 0);
        }
        fragmentTransactionBeginTransaction.replace(this.containerId, fragmentInstantiate, navBackStackEntry.getId());
        fragmentTransactionBeginTransaction.setPrimaryNavigationFragment(fragmentInstantiate);
        fragmentTransactionBeginTransaction.setReorderingAllowed(true);
        return fragmentTransactionBeginTransaction;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void fragmentObserver$lambda$1(FragmentNavigator fragmentNavigator, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        lifecycleOwner.getClass();
        event.getClass();
        if (event == Lifecycle.Event.ON_DESTROY) {
            Fragment fragment = (Fragment) lifecycleOwner;
            Object obj = null;
            for (Object obj2 : fragmentNavigator.getState().getTransitionsInProgress().getValue()) {
                if (aa4.e(((NavBackStackEntry) obj2).getId(), fragment.getTag())) {
                    obj = obj2;
                }
            }
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
            if (navBackStackEntry != null) {
                if (fragmentNavigator.isLoggingEnabled(2)) {
                    Log.v(TAG, "Marking transition complete for entry " + navBackStackEntry + " due to fragment " + lifecycleOwner + " lifecycle reaching DESTROYED");
                }
                fragmentNavigator.getState().markTransitionComplete(navBackStackEntry);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LifecycleEventObserver fragmentViewObserver$lambda$3(FragmentNavigator fragmentNavigator, NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        return new hk3(0, fragmentNavigator, navBackStackEntry);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void fragmentViewObserver$lambda$3$lambda$2(FragmentNavigator fragmentNavigator, NavBackStackEntry navBackStackEntry, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        lifecycleOwner.getClass();
        event.getClass();
        if (event == Lifecycle.Event.ON_RESUME && fragmentNavigator.getState().getBackStack().getValue().contains(navBackStackEntry)) {
            if (fragmentNavigator.isLoggingEnabled(2)) {
                Log.v(TAG, "Marking transition complete for entry " + navBackStackEntry + " due to fragment " + lifecycleOwner + " view lifecycle reaching RESUMED");
            }
            fragmentNavigator.getState().markTransitionComplete(navBackStackEntry);
        }
        if (event == Lifecycle.Event.ON_DESTROY) {
            if (fragmentNavigator.isLoggingEnabled(2)) {
                Log.v(TAG, "Marking transition complete for entry " + navBackStackEntry + " due to fragment " + lifecycleOwner + " view lifecycle reaching DESTROYED");
            }
            fragmentNavigator.getState().markTransitionComplete(navBackStackEntry);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isLoggingEnabled(int i) {
        return Log.isLoggable(FragmentManager.TAG, i) || Log.isLoggable(TAG, i);
    }

    private final void navigate(NavBackStackEntry navBackStackEntry, NavOptions navOptions, Navigator.Extras extras) {
        boolean zIsEmpty = getState().getBackStack().getValue().isEmpty();
        if (navOptions != null && !zIsEmpty && navOptions.shouldRestoreState() && this.savedIds.remove(navBackStackEntry.getId())) {
            this.fragmentManager.restoreBackStack(navBackStackEntry.getId());
            getState().pushWithTransition(navBackStackEntry);
            return;
        }
        FragmentTransaction fragmentTransactionCreateFragmentTransaction = createFragmentTransaction(navBackStackEntry, navOptions);
        if (!zIsEmpty) {
            NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) qn1.c0(getState().getBackStack().getValue());
            if (navBackStackEntry2 != null) {
                addPendingOps$default(this, navBackStackEntry2.getId(), false, false, 6, null);
            }
            addPendingOps$default(this, navBackStackEntry.getId(), false, false, 6, null);
            fragmentTransactionCreateFragmentTransaction.addToBackStack(navBackStackEntry.getId());
        }
        if (extras instanceof Extras) {
            for (Map.Entry<View, String> entry : ((Extras) extras).getSharedElements().entrySet()) {
                fragmentTransactionCreateFragmentTransaction.addSharedElement(entry.getKey(), entry.getValue());
            }
        }
        fragmentTransactionCreateFragmentTransaction.commit();
        if (isLoggingEnabled(2)) {
            Log.v(TAG, "Calling pushWithTransition via navigate() on entry " + navBackStackEntry);
        }
        getState().pushWithTransition(navBackStackEntry);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onAttach$lambda$5(NavigatorState navigatorState, FragmentNavigator fragmentNavigator, FragmentManager fragmentManager, Fragment fragment) {
        NavBackStackEntry navBackStackEntryPrevious;
        fragmentManager.getClass();
        fragment.getClass();
        List<NavBackStackEntry> value = navigatorState.getBackStack().getValue();
        ListIterator<NavBackStackEntry> listIterator = value.listIterator(value.size());
        do {
            if (!listIterator.hasPrevious()) {
                navBackStackEntryPrevious = null;
                break;
            }
            navBackStackEntryPrevious = listIterator.previous();
        } while (!aa4.e(navBackStackEntryPrevious.getId(), fragment.getTag()));
        NavBackStackEntry navBackStackEntry = navBackStackEntryPrevious;
        if (fragmentNavigator.isLoggingEnabled(2)) {
            Log.v(TAG, "Attaching fragment " + fragment + " associated with entry " + navBackStackEntry + " to FragmentManager " + fragmentNavigator.fragmentManager);
        }
        if (navBackStackEntry != null) {
            fragmentNavigator.attachObservers(navBackStackEntry, fragment);
            fragmentNavigator.attachClearViewModel$navigation_fragment_release(fragment, navBackStackEntry, navigatorState);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final String popBackStack$lambda$14$lambda$13(b36 b36Var) {
        b36Var.getClass();
        return (String) b36Var.b;
    }

    public final void attachClearViewModel$navigation_fragment_release(final Fragment fragment, final NavBackStackEntry navBackStackEntry, final NavigatorState navigatorState) {
        fragment.getClass();
        navBackStackEntry.getClass();
        navigatorState.getClass();
        ViewModelStore viewModelStore = fragment.getViewModelStore();
        viewModelStore.getClass();
        InitializerViewModelFactoryBuilder initializerViewModelFactoryBuilder = new InitializerViewModelFactoryBuilder();
        initializerViewModelFactoryBuilder.addInitializer(x07.a(ClearEntryStateViewModel.class), new ni(2));
        ((ClearEntryStateViewModel) new ViewModelProvider(viewModelStore, initializerViewModelFactoryBuilder.build(), CreationExtras.Empty.INSTANCE).get(ClearEntryStateViewModel.class)).setCompleteTransition(new WeakReference<>(new ll3() { // from class: kk3
            @Override // defpackage.ll3
            public final Object invoke() {
                return FragmentNavigator.attachClearViewModel$lambda$12(navBackStackEntry, navigatorState, this, fragment);
            }
        }));
    }

    @Override // androidx.navigation.Navigator
    public Destination createDestination() {
        return new Destination(this);
    }

    public final y68<List<NavBackStackEntry>> getBackStack$navigation_fragment_release() {
        return getState().getBackStack();
    }

    public final List<b36<String, Boolean>> getPendingOps$navigation_fragment_release() {
        return this.pendingOps;
    }

    @ul2
    public Fragment instantiateFragment(Context context, FragmentManager fragmentManager, String str, Bundle bundle) {
        context.getClass();
        fragmentManager.getClass();
        str.getClass();
        Fragment fragmentInstantiate = fragmentManager.getFragmentFactory().instantiate(context.getClassLoader(), str);
        fragmentInstantiate.getClass();
        return fragmentInstantiate;
    }

    @Override // androidx.navigation.Navigator
    public void onAttach(final NavigatorState navigatorState) {
        navigatorState.getClass();
        super.onAttach(navigatorState);
        if (isLoggingEnabled(2)) {
            Log.v(TAG, "onAttach");
        }
        this.fragmentManager.addFragmentOnAttachListener(new FragmentOnAttachListener() { // from class: jk3
            @Override // androidx.fragment.app.FragmentOnAttachListener
            public final void onAttachFragment(FragmentManager fragmentManager, Fragment fragment) {
                FragmentNavigator.onAttach$lambda$5(navigatorState, this, fragmentManager, fragment);
            }
        });
        this.fragmentManager.addOnBackStackChangedListener(new FragmentManager.OnBackStackChangedListener() { // from class: androidx.navigation.fragment.FragmentNavigator.onAttach.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.fragment.app.FragmentManager.OnBackStackChangedListener
            public void onBackStackChangeCommitted(Fragment fragment, boolean z) {
                Object obj;
                Object objPrevious;
                fragment.getClass();
                ArrayList arrayListH0 = qn1.h0(navigatorState.getTransitionsInProgress().getValue(), navigatorState.getBackStack().getValue());
                ListIterator listIterator = arrayListH0.listIterator(arrayListH0.size());
                do {
                    obj = null;
                    if (!listIterator.hasPrevious()) {
                        objPrevious = null;
                        break;
                    }
                    objPrevious = listIterator.previous();
                } while (!aa4.e(((NavBackStackEntry) objPrevious).getId(), fragment.getTag()));
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) objPrevious;
                boolean z2 = z && this.getPendingOps$navigation_fragment_release().isEmpty() && fragment.isRemoving();
                for (Object obj2 : this.getPendingOps$navigation_fragment_release()) {
                    if (aa4.e(((b36) obj2).b, fragment.getTag())) {
                        obj = obj2;
                        break;
                    }
                }
                b36 b36Var = (b36) obj;
                if (b36Var != null) {
                    this.getPendingOps$navigation_fragment_release().remove(b36Var);
                }
                if (!z2 && this.isLoggingEnabled(2)) {
                    Log.v(FragmentNavigator.TAG, "OnBackStackChangedCommitted for fragment " + fragment + " associated with entry " + navBackStackEntry);
                }
                boolean z3 = b36Var != null && ((Boolean) b36Var.c).booleanValue();
                if (!z && !z3 && navBackStackEntry == null) {
                    c9.f(xp.d("The fragment ", fragment, " is unknown to the FragmentNavigator. Please use the navigate() function to add fragments to the FragmentNavigator managed FragmentManager."));
                    return;
                }
                if (navBackStackEntry != null) {
                    this.attachClearViewModel$navigation_fragment_release(fragment, navBackStackEntry, navigatorState);
                    if (z2) {
                        if (this.isLoggingEnabled(2)) {
                            Log.v(FragmentNavigator.TAG, "OnBackStackChangedCommitted for fragment " + fragment + " popping associated entry " + navBackStackEntry + " via system back");
                        }
                        navigatorState.popWithTransition(navBackStackEntry, false);
                    }
                }
            }

            @Override // androidx.fragment.app.FragmentManager.OnBackStackChangedListener
            public void onBackStackChangeStarted(Fragment fragment, boolean z) {
                NavBackStackEntry navBackStackEntryPrevious;
                fragment.getClass();
                if (z) {
                    List<NavBackStackEntry> value = navigatorState.getBackStack().getValue();
                    ListIterator<NavBackStackEntry> listIterator = value.listIterator(value.size());
                    do {
                        if (!listIterator.hasPrevious()) {
                            navBackStackEntryPrevious = null;
                            break;
                        }
                        navBackStackEntryPrevious = listIterator.previous();
                    } while (!aa4.e(navBackStackEntryPrevious.getId(), fragment.getTag()));
                    NavBackStackEntry navBackStackEntry = navBackStackEntryPrevious;
                    if (this.isLoggingEnabled(2)) {
                        Log.v(FragmentNavigator.TAG, "OnBackStackChangedStarted for fragment " + fragment + " associated with entry " + navBackStackEntry);
                    }
                    if (navBackStackEntry != null) {
                        navigatorState.prepareForTransition(navBackStackEntry);
                    }
                }
            }

            @Override // androidx.fragment.app.FragmentManager.OnBackStackChangedListener
            public void onBackStackChanged() {
            }
        });
    }

    @Override // androidx.navigation.Navigator
    public void onLaunchSingleTop(NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        if (this.fragmentManager.isStateSaved()) {
            Log.i(TAG, "Ignoring onLaunchSingleTop() call: FragmentManager has already saved its state");
            return;
        }
        FragmentTransaction fragmentTransactionCreateFragmentTransaction = createFragmentTransaction(navBackStackEntry, null);
        List<NavBackStackEntry> value = getState().getBackStack().getValue();
        if (value.size() > 1) {
            NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) qn1.W(value.size() - 2, value);
            if (navBackStackEntry2 != null) {
                addPendingOps$default(this, navBackStackEntry2.getId(), false, false, 6, null);
            }
            addPendingOps$default(this, navBackStackEntry.getId(), true, false, 4, null);
            this.fragmentManager.popBackStack(navBackStackEntry.getId(), 1);
            addPendingOps$default(this, navBackStackEntry.getId(), false, false, 2, null);
            fragmentTransactionCreateFragmentTransaction.addToBackStack(navBackStackEntry.getId());
        }
        fragmentTransactionCreateFragmentTransaction.commit();
        getState().onLaunchSingleTop(navBackStackEntry);
    }

    @Override // androidx.navigation.Navigator
    public void onRestoreState(Bundle bundle) {
        bundle.getClass();
        ArrayList<String> stringArrayList = bundle.getStringArrayList(KEY_SAVED_IDS);
        if (stringArrayList != null) {
            this.savedIds.clear();
            nn1.s(stringArrayList, this.savedIds);
        }
    }

    @Override // androidx.navigation.Navigator
    public Bundle onSaveState() {
        if (this.savedIds.isEmpty()) {
            return null;
        }
        return BundleKt.bundleOf(new b36(KEY_SAVED_IDS, new ArrayList(this.savedIds)));
    }

    @Override // androidx.navigation.Navigator
    public void popBackStack(NavBackStackEntry navBackStackEntry, boolean z) {
        navBackStackEntry.getClass();
        if (this.fragmentManager.isStateSaved()) {
            Log.i(TAG, "Ignoring popBackStack() call: FragmentManager has already saved its state");
            return;
        }
        List<NavBackStackEntry> value = getState().getBackStack().getValue();
        int iIndexOf = value.indexOf(navBackStackEntry);
        List<NavBackStackEntry> listSubList = value.subList(iIndexOf, value.size());
        NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) qn1.T(value);
        NavBackStackEntry navBackStackEntry3 = (NavBackStackEntry) qn1.W(iIndexOf - 1, value);
        if (navBackStackEntry3 != null) {
            addPendingOps$default(this, navBackStackEntry3.getId(), false, false, 6, null);
        }
        List<NavBackStackEntry> list = listSubList;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            NavBackStackEntry navBackStackEntry4 = (NavBackStackEntry) obj;
            if (jp7.i(new f29(qn1.K(this.pendingOps), new ik3(0)), navBackStackEntry4.getId()) || !aa4.e(navBackStackEntry4.getId(), navBackStackEntry2.getId())) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            addPendingOps$default(this, ((NavBackStackEntry) it.next()).getId(), true, false, 4, null);
        }
        if (z) {
            for (NavBackStackEntry navBackStackEntry5 : qn1.j0(list)) {
                if (aa4.e(navBackStackEntry5, navBackStackEntry2)) {
                    Log.i(TAG, "FragmentManager cannot save the state of the initial destination " + navBackStackEntry5);
                } else {
                    this.fragmentManager.saveBackStack(navBackStackEntry5.getId());
                    this.savedIds.add(navBackStackEntry5.getId());
                }
            }
        } else {
            this.fragmentManager.popBackStack(navBackStackEntry.getId(), 1);
        }
        if (isLoggingEnabled(2)) {
            Log.v(TAG, "Calling popWithTransition via popBackStack() on entry " + navBackStackEntry + " with savedState " + z);
        }
        getState().popWithTransition(navBackStackEntry, z);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    public static class Destination extends NavDestination {
        private String _className;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Destination(NavigatorProvider navigatorProvider) {
            this((Navigator<? extends Destination>) navigatorProvider.getNavigator(FragmentNavigator.class));
            navigatorProvider.getClass();
        }

        @Override // androidx.navigation.NavDestination
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && (obj instanceof Destination) && super.equals(obj) && aa4.e(this._className, ((Destination) obj)._className);
        }

        public final String getClassName() {
            String str = this._className;
            if (str != null) {
                str.getClass();
                return str;
            }
            ah.f("Fragment class was not set");
            return null;
        }

        @Override // androidx.navigation.NavDestination
        public int hashCode() {
            int iHashCode = super.hashCode() * 31;
            String str = this._className;
            return iHashCode + (str != null ? str.hashCode() : 0);
        }

        @Override // androidx.navigation.NavDestination
        public void onInflate(Context context, AttributeSet attributeSet) {
            context.getClass();
            attributeSet.getClass();
            super.onInflate(context, attributeSet);
            TypedArray typedArrayObtainAttributes = context.getResources().obtainAttributes(attributeSet, R.styleable.FragmentNavigator);
            typedArrayObtainAttributes.getClass();
            String string = typedArrayObtainAttributes.getString(R.styleable.FragmentNavigator_android_name);
            if (string != null) {
                setClassName(string);
            }
            j59 j59Var = j59.a;
            typedArrayObtainAttributes.recycle();
        }

        public final Destination setClassName(String str) {
            str.getClass();
            this._className = str;
            return this;
        }

        @Override // androidx.navigation.NavDestination
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(super.toString());
            sb.append(" class=");
            String str = this._className;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            return sb.toString();
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Destination(Navigator<? extends Destination> navigator) {
            super(navigator);
            navigator.getClass();
        }
    }

    @Override // androidx.navigation.Navigator
    public void navigate(List<NavBackStackEntry> list, NavOptions navOptions, Navigator.Extras extras) {
        list.getClass();
        if (this.fragmentManager.isStateSaved()) {
            Log.i(TAG, "Ignoring navigate() call: FragmentManager has already saved its state");
            return;
        }
        Iterator<NavBackStackEntry> it = list.iterator();
        while (it.hasNext()) {
            navigate(it.next(), navOptions, extras);
        }
    }
}
