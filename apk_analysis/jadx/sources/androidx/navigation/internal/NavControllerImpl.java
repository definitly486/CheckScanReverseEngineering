package androidx.navigation.internal;

import android.net.Uri;
import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.navigation.FloatingWindow;
import androidx.navigation.NavArgument;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavBackStackEntryState;
import androidx.navigation.NavController;
import androidx.navigation.NavControllerViewModel;
import androidx.navigation.NavDeepLinkRequest;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.NavOptions;
import androidx.navigation.NavOptionsBuilder;
import androidx.navigation.NavOptionsBuilderKt;
import androidx.navigation.NavUriKt;
import androidx.navigation.Navigator;
import androidx.navigation.NavigatorProvider;
import androidx.navigation.SupportingPane;
import androidx.navigation.internal.NavControllerImpl;
import androidx.navigation.serialization.RouteSerializerKt;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateWriter;
import defpackage.aa4;
import defpackage.ah;
import defpackage.au0;
import defpackage.b36;
import defpackage.bf3;
import defpackage.bt7;
import defpackage.c9;
import defpackage.cg;
import defpackage.cu0;
import defpackage.dg;
import defpackage.dp7;
import defpackage.eq;
import defpackage.fg;
import defpackage.fr;
import defpackage.gg1;
import defpackage.h2;
import defpackage.hm;
import defpackage.ik8;
import defpackage.iq7;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ji;
import defpackage.jp7;
import defpackage.kg;
import defpackage.kn1;
import defpackage.kv2;
import defpackage.kx2;
import defpackage.ll3;
import defpackage.lx1;
import defpackage.m05;
import defpackage.mi5;
import defpackage.mm;
import defpackage.n07;
import defpackage.n7;
import defpackage.ne4;
import defpackage.ni;
import defpackage.nl3;
import defpackage.nn1;
import defpackage.oi5;
import defpackage.p07;
import defpackage.px;
import defpackage.q;
import defpackage.qn1;
import defpackage.ri5;
import defpackage.u96;
import defpackage.v39;
import defpackage.vg5;
import defpackage.vr2;
import defpackage.wg;
import defpackage.x07;
import defpackage.xg5;
import defpackage.y68;
import defpackage.yz1;
import defpackage.z67;
import defpackage.z68;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class NavControllerImpl {
    public static final Companion Companion = new Companion(null);
    private static final String KEY_BACK_STACK = "android-support-nav:controller:backStack";
    private static final String KEY_BACK_STACK_DEST_IDS = "android-support-nav:controller:backStackDestIds";
    private static final String KEY_BACK_STACK_IDS = "android-support-nav:controller:backStackIds";
    private static final String KEY_BACK_STACK_STATES_IDS = "android-support-nav:controller:backStackStates";
    private static final String KEY_BACK_STACK_STATES_PREFIX = "android-support-nav:controller:backStackStates:";
    private static final String KEY_NAVIGATOR_STATE = "android-support-nav:controller:navigatorState";
    private static final String KEY_NAVIGATOR_STATE_NAMES = "android-support-nav:controller:navigatorState:names";
    public static final String TAG = "NavController";
    private final xg5<List<NavBackStackEntry>> _currentBackStack;
    private final vg5<NavBackStackEntry> _currentBackStackEntryFlow;
    private NavGraph _graph;
    private NavigatorProvider _navigatorProvider;
    private final xg5<List<NavBackStackEntry>> _visibleEntries;
    private nl3<? super NavBackStackEntry, j59> addToBackStackHandler;
    private final fr<NavBackStackEntry> backQueue;
    private final List<NavBackStackEntry> backStackEntriesToDispatch;
    private final Map<Integer, String> backStackMap;
    private final Map<String, fr<NavBackStackEntryState>> backStackStates;
    private Bundle[] backStackToRestore;
    private final Map<NavBackStackEntry, NavBackStackEntry> childToParentEntries;
    private final y68<List<NavBackStackEntry>> currentBackStack;
    private int dispatchReentrantCount;
    private final Map<NavBackStackEntry, Boolean> entrySavedState;
    private Lifecycle.State hostLifecycleState;
    private final LifecycleObserver lifecycleObserver;
    private LifecycleOwner lifecycleOwner;
    private final NavController navController;
    private final Map<Navigator<? extends NavDestination>, NavController.NavControllerNavigatorState> navigatorState;
    private Bundle navigatorStateToRestore;
    private final List<NavController.OnDestinationChangedListener> onDestinationChangedListeners;
    private final Map<NavBackStackEntry, AtomicInt> parentToChildCount;
    private nl3<? super NavBackStackEntry, j59> popFromBackStackHandler;
    private ll3<j59> updateOnBackPressedCallbackEnabledCallback;
    private NavControllerViewModel viewModel;
    private final y68<List<NavBackStackEntry>> visibleEntries;

    public NavControllerImpl(NavController navController, ll3<j59> ll3Var) {
        navController.getClass();
        ll3Var.getClass();
        this.navController = navController;
        this.updateOnBackPressedCallbackEnabledCallback = ll3Var;
        this.backQueue = new fr<>();
        kx2 kx2Var = kx2.b;
        z68 z68VarA = px.a(kx2Var);
        this._currentBackStack = z68VarA;
        this.currentBackStack = bf3.b(z68VarA);
        z68 z68VarA2 = px.a(kx2Var);
        this._visibleEntries = z68VarA2;
        this.visibleEntries = bf3.b(z68VarA2);
        this.childToParentEntries = new LinkedHashMap();
        this.parentToChildCount = new LinkedHashMap();
        this.backStackMap = new LinkedHashMap();
        this.backStackStates = new LinkedHashMap();
        this.onDestinationChangedListeners = new ArrayList();
        this.hostLifecycleState = Lifecycle.State.INITIALIZED;
        this.lifecycleObserver = new LifecycleEventObserver() { // from class: pi5
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                NavControllerImpl.lifecycleObserver$lambda$1(this.b, lifecycleOwner, event);
            }
        };
        this._navigatorProvider = new NavigatorProvider();
        this.navigatorState = new LinkedHashMap();
        this.entrySavedState = new LinkedHashMap();
        this.backStackEntriesToDispatch = new ArrayList();
        this._currentBackStackEntryFlow = bt7.b(1, 0, cu0.DROP_OLDEST, 2);
    }

    private final void addEntryToBackStack(NavDestination navDestination, Bundle bundle, NavBackStackEntry navBackStackEntry, List<NavBackStackEntry> list) {
        Bundle bundle2;
        fr<NavBackStackEntry> frVar;
        NavDestination destination;
        List<NavBackStackEntry> list2;
        NavGraph navGraph;
        NavBackStackEntry navBackStackEntryPrevious;
        NavBackStackEntry navBackStackEntryPrevious2;
        List<NavBackStackEntry> list3 = list;
        NavDestination destination2 = navBackStackEntry.getDestination();
        if (!(destination2 instanceof FloatingWindow)) {
            while (!this.backQueue.isEmpty() && (this.backQueue.last().getDestination() instanceof FloatingWindow) && popBackStackInternal$navigation_runtime_release$default(this, this.backQueue.last().getDestination().getId(), true, false, 4, (Object) null)) {
            }
        }
        fr frVar2 = new fr();
        NavBackStackEntry navBackStackEntry2 = null;
        if (navDestination instanceof NavGraph) {
            NavDestination navDestination2 = destination2;
            while (true) {
                navDestination2.getClass();
                NavGraph parent = navDestination2.getParent();
                if (parent != null) {
                    ListIterator<NavBackStackEntry> listIterator = list3.listIterator(list3.size());
                    do {
                        if (!listIterator.hasPrevious()) {
                            navBackStackEntryPrevious2 = null;
                            break;
                        }
                        navBackStackEntryPrevious2 = listIterator.previous();
                    } while (!aa4.e(navBackStackEntryPrevious2.getDestination(), parent));
                    NavBackStackEntry navBackStackEntryCreate$default = navBackStackEntryPrevious2;
                    if (navBackStackEntryCreate$default == null) {
                        bundle2 = bundle;
                        destination = destination2;
                        navBackStackEntryCreate$default = NavBackStackEntry.Companion.create$default(NavBackStackEntry.Companion, getNavContext(), parent, bundle2, getHostLifecycleState$navigation_runtime_release(), this.viewModel, null, null, 96, null);
                    } else {
                        bundle2 = bundle;
                        destination = destination2;
                    }
                    frVar2.addFirst(navBackStackEntryCreate$default);
                    if (this.backQueue.isEmpty() || this.backQueue.last().getDestination() != parent) {
                        list2 = list;
                        frVar = frVar2;
                    } else {
                        list2 = list;
                        frVar = frVar2;
                        popEntryFromBackStack$navigation_runtime_release$default(this, this.backQueue.last(), false, null, 6, null);
                    }
                } else {
                    bundle2 = bundle;
                    frVar = frVar2;
                    destination = destination2;
                    list2 = list3;
                }
                if (parent == null || parent == navDestination) {
                    break;
                }
                list3 = list2;
                navDestination2 = parent;
                frVar2 = frVar;
                destination2 = destination;
            }
        } else {
            bundle2 = bundle;
            frVar = frVar2;
            destination = destination2;
            list2 = list3;
            navBackStackEntry = navBackStackEntry;
        }
        NavDestination destination3 = frVar.isEmpty() ? destination : ((NavBackStackEntry) frVar.first()).getDestination();
        while (destination3 != null && findDestination$navigation_runtime_release(destination3.getId(), destination3) != destination3) {
            NavGraph parent2 = destination3.getParent();
            if (parent2 != null) {
                Bundle bundle3 = (bundle2 == null || !SavedStateReader.m9448isEmptyimpl(SavedStateReader.m9370constructorimpl(bundle2))) ? bundle2 : null;
                ListIterator<NavBackStackEntry> listIterator2 = list2.listIterator(list2.size());
                do {
                    if (!listIterator2.hasPrevious()) {
                        navBackStackEntryPrevious = null;
                        break;
                    }
                    navBackStackEntryPrevious = listIterator2.previous();
                } while (!aa4.e(navBackStackEntryPrevious.getDestination(), parent2));
                NavBackStackEntry navBackStackEntryCreate$default2 = navBackStackEntryPrevious;
                if (navBackStackEntryCreate$default2 == null) {
                    navGraph = parent2;
                    navBackStackEntryCreate$default2 = NavBackStackEntry.Companion.create$default(NavBackStackEntry.Companion, getNavContext(), navGraph, parent2.addInDefaultArgs(bundle3), getHostLifecycleState$navigation_runtime_release(), this.viewModel, null, null, 96, null);
                } else {
                    navGraph = parent2;
                }
                frVar.addFirst(navBackStackEntryCreate$default2);
            } else {
                navGraph = parent2;
            }
            destination3 = navGraph;
        }
        if (!frVar.isEmpty()) {
            destination = ((NavBackStackEntry) frVar.first()).getDestination();
        }
        while (!this.backQueue.isEmpty() && (this.backQueue.last().getDestination() instanceof NavGraph)) {
            NavDestination destination4 = this.backQueue.last().getDestination();
            destination4.getClass();
            if (((NavGraph) destination4).getNodes().get(destination.getId()) != null) {
                break;
            } else {
                popEntryFromBackStack$navigation_runtime_release$default(this, this.backQueue.last(), false, null, 6, null);
            }
        }
        NavBackStackEntry navBackStackEntryD = this.backQueue.d();
        if (navBackStackEntryD == null) {
            navBackStackEntryD = (NavBackStackEntry) frVar.d();
        }
        if (!aa4.e(navBackStackEntryD != null ? navBackStackEntryD.getDestination() : null, this._graph)) {
            ListIterator<NavBackStackEntry> listIterator3 = list2.listIterator(list2.size());
            while (listIterator3.hasPrevious()) {
                NavBackStackEntry navBackStackEntryPrevious3 = listIterator3.previous();
                NavDestination destination5 = navBackStackEntryPrevious3.getDestination();
                NavGraph navGraph2 = this._graph;
                navGraph2.getClass();
                if (aa4.e(destination5, navGraph2)) {
                    navBackStackEntry2 = navBackStackEntryPrevious3;
                    break;
                }
            }
            NavBackStackEntry navBackStackEntryCreate$default3 = navBackStackEntry2;
            if (navBackStackEntryCreate$default3 == null) {
                NavBackStackEntry.Companion companion = NavBackStackEntry.Companion;
                NavContext navContext = getNavContext();
                NavGraph navGraph3 = this._graph;
                navGraph3.getClass();
                NavGraph navGraph4 = this._graph;
                navGraph4.getClass();
                navBackStackEntryCreate$default3 = NavBackStackEntry.Companion.create$default(companion, navContext, navGraph3, navGraph4.addInDefaultArgs(bundle2), getHostLifecycleState$navigation_runtime_release(), this.viewModel, null, null, 96, null);
            }
            frVar.addFirst(navBackStackEntryCreate$default3);
        }
        for (NavBackStackEntry navBackStackEntry3 : frVar) {
            NavController.NavControllerNavigatorState navControllerNavigatorState = this.navigatorState.get(this._navigatorProvider.getNavigator(navBackStackEntry3.getDestination().getNavigatorName()));
            if (navControllerNavigatorState == null) {
                wg.c(navDestination.getNavigatorName(), "NavigatorBackStack for ", " should already be created");
                return;
            }
            navControllerNavigatorState.addInternal(navBackStackEntry3);
        }
        this.backQueue.addAll(frVar);
        this.backQueue.addLast(navBackStackEntry);
        for (NavBackStackEntry navBackStackEntry4 : qn1.i0(navBackStackEntry, frVar)) {
            NavGraph parent3 = navBackStackEntry4.getDestination().getParent();
            if (parent3 != null) {
                linkChildToParent$navigation_runtime_release(navBackStackEntry4, getBackStackEntry$navigation_runtime_release(parent3.getId()));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void addEntryToBackStack$default(NavControllerImpl navControllerImpl, NavDestination navDestination, Bundle bundle, NavBackStackEntry navBackStackEntry, List list, int i, Object obj) {
        if ((i & 8) != 0) {
            list = kx2.b;
        }
        navControllerImpl.addEntryToBackStack(navDestination, bundle, navBackStackEntry, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 clearBackStackInternal$lambda$19(NavOptionsBuilder navOptionsBuilder) {
        navOptionsBuilder.getClass();
        navOptionsBuilder.setRestoreState(true);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 executePopOperations$lambda$10(n07 n07Var, n07 n07Var2, NavControllerImpl navControllerImpl, boolean z, fr frVar, NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        n07Var.b = true;
        n07Var2.b = true;
        navControllerImpl.popEntryFromBackStack$navigation_runtime_release(navBackStackEntry, z, frVar);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NavDestination executePopOperations$lambda$11(NavDestination navDestination) {
        navDestination.getClass();
        NavGraph parent = navDestination.getParent();
        if (parent == null || parent.getStartDestinationId() != navDestination.getId()) {
            return null;
        }
        return navDestination.getParent();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean executePopOperations$lambda$12(NavControllerImpl navControllerImpl, NavDestination navDestination) {
        navDestination.getClass();
        return !navControllerImpl.backStackMap.containsKey(Integer.valueOf(navDestination.getId()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NavDestination executePopOperations$lambda$14(NavDestination navDestination) {
        navDestination.getClass();
        NavGraph parent = navDestination.getParent();
        if (parent == null || parent.getStartDestinationId() != navDestination.getId()) {
            return null;
        }
        return navDestination.getParent();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean executePopOperations$lambda$15(NavControllerImpl navControllerImpl, NavDestination navDestination) {
        navDestination.getClass();
        return !navControllerImpl.backStackMap.containsKey(Integer.valueOf(navDestination.getId()));
    }

    private final boolean executeRestoreState(List<NavBackStackEntry> list, Bundle bundle, NavOptions navOptions, Navigator.Extras extras) {
        NavBackStackEntry navBackStackEntry;
        NavDestination destination;
        ArrayList<List<NavBackStackEntry>> arrayList = new ArrayList();
        ArrayList<NavBackStackEntry> arrayList2 = new ArrayList();
        for (Object obj : list) {
            if (!(((NavBackStackEntry) obj).getDestination() instanceof NavGraph)) {
                arrayList2.add(obj);
            }
        }
        for (NavBackStackEntry navBackStackEntry2 : arrayList2) {
            List list2 = (List) qn1.c0(arrayList);
            if (aa4.e((list2 == null || (navBackStackEntry = (NavBackStackEntry) qn1.b0(list2)) == null || (destination = navBackStackEntry.getDestination()) == null) ? null : destination.getNavigatorName(), navBackStackEntry2.getDestination().getNavigatorName())) {
                list2.add(navBackStackEntry2);
            } else {
                arrayList.add(u96.k(navBackStackEntry2));
            }
        }
        final n07 n07Var = new n07();
        for (List<NavBackStackEntry> list3 : arrayList) {
            Navigator<? extends NavDestination> navigator = this._navigatorProvider.getNavigator(((NavBackStackEntry) qn1.T(list3)).getDestination().getNavigatorName());
            final p07 p07Var = new p07();
            final NavControllerImpl navControllerImpl = this;
            final List<NavBackStackEntry> list4 = list;
            final Bundle bundle2 = bundle;
            navControllerImpl.navigateInternal$navigation_runtime_release(navigator, list3, navOptions, extras, new nl3() { // from class: qi5
                @Override // defpackage.nl3
                public final Object invoke(Object obj2) {
                    return NavControllerImpl.executeRestoreState$lambda$57(n07Var, list4, p07Var, navControllerImpl, bundle2, (NavBackStackEntry) obj2);
                }
            });
            bundle = bundle2;
            list = list4;
            this = navControllerImpl;
        }
        return n07Var.b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 executeRestoreState$lambda$57(n07 n07Var, List list, p07 p07Var, NavControllerImpl navControllerImpl, Bundle bundle, NavBackStackEntry navBackStackEntry) {
        List<NavBackStackEntry> listSubList;
        navBackStackEntry.getClass();
        n07Var.b = true;
        int iIndexOf = list.indexOf(navBackStackEntry);
        if (iIndexOf != -1) {
            int i = iIndexOf + 1;
            listSubList = list.subList(p07Var.b, i);
            p07Var.b = i;
        } else {
            listSubList = kx2.b;
        }
        navControllerImpl.addEntryToBackStack(navBackStackEntry.getDestination(), bundle, navBackStackEntry, listSubList);
        return j59.a;
    }

    public static /* synthetic */ NavDestination findDestination$navigation_runtime_release$default(NavControllerImpl navControllerImpl, int i, NavDestination navDestination, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            navDestination = null;
        }
        return navControllerImpl.findDestination$navigation_runtime_release(i, navDestination);
    }

    public static /* synthetic */ NavDestination findDestinationComprehensive$navigation_runtime_release$default(NavControllerImpl navControllerImpl, NavDestination navDestination, int i, boolean z, NavDestination navDestination2, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            navDestination2 = null;
        }
        return navControllerImpl.findDestinationComprehensive$navigation_runtime_release(navDestination, i, z, navDestination2);
    }

    private final List<NavBackStackEntry> instantiateBackStack(fr<NavBackStackEntryState> frVar) {
        NavDestination graph$navigation_runtime_release;
        ArrayList arrayList = new ArrayList();
        NavBackStackEntry navBackStackEntryJ = this.backQueue.j();
        if (navBackStackEntryJ == null || (graph$navigation_runtime_release = navBackStackEntryJ.getDestination()) == null) {
            graph$navigation_runtime_release = getGraph$navigation_runtime_release();
        }
        if (frVar != null) {
            NavDestination navDestination = graph$navigation_runtime_release;
            for (NavBackStackEntryState navBackStackEntryState : frVar) {
                NavControllerImpl navControllerImpl = this;
                NavDestination navDestinationFindDestinationComprehensive$navigation_runtime_release$default = findDestinationComprehensive$navigation_runtime_release$default(navControllerImpl, navDestination, navBackStackEntryState.getDestinationId(), true, null, 8, null);
                if (navDestinationFindDestinationComprehensive$navigation_runtime_release$default == null) {
                    fg.d("Restore State failed: destination ", NavDestination.Companion.getDisplayName(navControllerImpl.getNavContext(), navBackStackEntryState.getDestinationId()), " cannot be found from the current destination ", navDestination);
                    return null;
                }
                arrayList.add(navBackStackEntryState.instantiate(navControllerImpl.getNavContext(), navDestinationFindDestinationComprehensive$navigation_runtime_release$default, navControllerImpl.getHostLifecycleState$navigation_runtime_release(), navControllerImpl.viewModel));
                navDestination = navDestinationFindDestinationComprehensive$navigation_runtime_release$default;
                this = navControllerImpl;
            }
        }
        return arrayList;
    }

    private final boolean launchSingleTopInternal(NavDestination navDestination, Bundle bundle) {
        int iNextIndex;
        NavDestination destination;
        NavBackStackEntry currentBackStackEntry$navigation_runtime_release = getCurrentBackStackEntry$navigation_runtime_release();
        fr<NavBackStackEntry> frVar = this.backQueue;
        ListIterator<NavBackStackEntry> listIterator = frVar.listIterator(frVar.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                iNextIndex = -1;
                break;
            }
            if (listIterator.previous().getDestination() == navDestination) {
                iNextIndex = listIterator.nextIndex();
                break;
            }
        }
        if (iNextIndex == -1) {
            return false;
        }
        if (navDestination instanceof NavGraph) {
            List listQ = jp7.q(jp7.n(NavGraph.Companion.childHierarchy((NavGraph) navDestination), new ni(5)));
            if (this.backQueue.size() - iNextIndex != listQ.size()) {
                return false;
            }
            fr<NavBackStackEntry> frVar2 = this.backQueue;
            List<NavBackStackEntry> listSubList = frVar2.subList(iNextIndex, frVar2.size());
            ArrayList arrayList = new ArrayList(kn1.q(listSubList, 10));
            Iterator<T> it = listSubList.iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(((NavBackStackEntry) it.next()).getDestination().getId()));
            }
            if (!arrayList.equals(listQ)) {
                return false;
            }
        } else if (currentBackStackEntry$navigation_runtime_release == null || (destination = currentBackStackEntry$navigation_runtime_release.getDestination()) == null || navDestination.getId() != destination.getId()) {
            return false;
        }
        fr<NavBackStackEntry> frVar3 = new fr();
        while (u96.g(this.backQueue) >= iNextIndex) {
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) nn1.E(this.backQueue);
            unlinkChildFromParent$navigation_runtime_release(navBackStackEntry);
            frVar3.addFirst(new NavBackStackEntry(navBackStackEntry, navBackStackEntry.getDestination().addInDefaultArgs(bundle)));
        }
        for (NavBackStackEntry navBackStackEntry2 : frVar3) {
            NavGraph parent = navBackStackEntry2.getDestination().getParent();
            if (parent != null) {
                linkChildToParent$navigation_runtime_release(navBackStackEntry2, getBackStackEntry$navigation_runtime_release(parent.getId()));
            }
            this.backQueue.addLast(navBackStackEntry2);
        }
        for (NavBackStackEntry navBackStackEntry3 : frVar3) {
            this._navigatorProvider.getNavigator(navBackStackEntry3.getDestination().getNavigatorName()).onLaunchSingleTop(navBackStackEntry3);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int launchSingleTopInternal$lambda$47(NavDestination navDestination) {
        navDestination.getClass();
        return navDestination.getId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void lifecycleObserver$lambda$1(NavControllerImpl navControllerImpl, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        lifecycleOwner.getClass();
        event.getClass();
        navControllerImpl.hostLifecycleState = event.getTargetState();
        if (navControllerImpl._graph != null) {
            Iterator it = qn1.v0(navControllerImpl.backQueue).iterator();
            while (it.hasNext()) {
                ((NavBackStackEntry) it.next()).handleLifecycleEvent(event);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 navigate$lambda$44(n07 n07Var, NavControllerImpl navControllerImpl, NavDestination navDestination, Bundle bundle, NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        n07Var.b = true;
        addEntryToBackStack$default(navControllerImpl, navDestination, bundle, navBackStackEntry, null, 8, null);
        return j59.a;
    }

    public static /* synthetic */ void navigate$navigation_runtime_release$default(NavControllerImpl navControllerImpl, String str, NavOptions navOptions, Navigator.Extras extras, int i, Object obj) {
        if ((i & 4) != 0) {
            extras = null;
        }
        navControllerImpl.navigate$navigation_runtime_release(str, navOptions, extras);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 navigateInternal$lambda$3(NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        return j59.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void navigateInternal$navigation_runtime_release$default(NavControllerImpl navControllerImpl, Navigator navigator, List list, NavOptions navOptions, Navigator.Extras extras, nl3 nl3Var, int i, Object obj) {
        if ((i & 16) != 0) {
            nl3Var = new oi5(0);
        }
        navControllerImpl.navigateInternal$navigation_runtime_release(navigator, list, navOptions, extras, nl3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 pop$lambda$6(ll3 ll3Var) {
        ll3Var.invoke();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 popBackStackInternal$lambda$4(NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        return j59.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void popBackStackInternal$navigation_runtime_release$default(NavControllerImpl navControllerImpl, Navigator navigator, NavBackStackEntry navBackStackEntry, boolean z, nl3 nl3Var, int i, Object obj) {
        if ((i & 8) != 0) {
            nl3Var = new mm(2);
        }
        navControllerImpl.popBackStackInternal$navigation_runtime_release(navigator, navBackStackEntry, z, nl3Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void popEntryFromBackStack$navigation_runtime_release$default(NavControllerImpl navControllerImpl, NavBackStackEntry navBackStackEntry, boolean z, fr frVar, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            frVar = new fr();
        }
        navControllerImpl.popEntryFromBackStack$navigation_runtime_release(navBackStackEntry, z, frVar);
    }

    private final boolean restoreStateInternal(String str) {
        NavBackStackEntryState navBackStackEntryStateD;
        int iHashCode = NavDestination.Companion.createRoute(str).hashCode();
        if (this.backStackMap.containsKey(Integer.valueOf(iHashCode))) {
            return restoreStateInternal(iHashCode, null, null, null);
        }
        NavDestination navDestinationFindDestination$navigation_runtime_release = findDestination$navigation_runtime_release(str);
        if (navDestinationFindDestination$navigation_runtime_release == null) {
            StringBuilder sbD = n7.d("Restore State failed: route ", str, " cannot be found from the current destination ");
            sbD.append(getCurrentDestination$navigation_runtime_release());
            throw new IllegalStateException(sbD.toString().toString());
        }
        String str2 = this.backStackMap.get(Integer.valueOf(navDestinationFindDestination$navigation_runtime_release.getId()));
        nn1.z(this.backStackMap.values(), new vr2(str2, 1));
        fr<NavBackStackEntryState> frVar = (fr) v39.b(this.backStackStates).remove(str2);
        NavDestination.DeepLinkMatch deepLinkMatchMatchRoute = navDestinationFindDestination$navigation_runtime_release.matchRoute(str);
        deepLinkMatchMatchRoute.getClass();
        if (deepLinkMatchMatchRoute.hasMatchingArgs((frVar == null || (navBackStackEntryStateD = frVar.d()) == null) ? null : navBackStackEntryStateD.getArgs())) {
            return executeRestoreState(instantiateBackStack(frVar), null, null, null);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean restoreStateInternal$lambda$51(String str, String str2) {
        return aa4.e(str2, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean restoreStateInternal$lambda$53(String str, String str2) {
        return aa4.e(str2, str);
    }

    public final void addOnDestinationChangedListener$navigation_runtime_release(NavController.OnDestinationChangedListener onDestinationChangedListener) {
        onDestinationChangedListener.getClass();
        this.onDestinationChangedListeners.add(onDestinationChangedListener);
        if (this.backQueue.isEmpty()) {
            return;
        }
        NavBackStackEntry navBackStackEntryLast = this.backQueue.last();
        onDestinationChangedListener.onDestinationChanged(this.navController, navBackStackEntryLast.getDestination(), navBackStackEntryLast.getArguments());
    }

    public final <T> boolean clearBackStack$navigation_runtime_release(T t) {
        t.getClass();
        return clearBackStackInternal$navigation_runtime_release(generateRouteFilled$navigation_runtime_release(t)) && dispatchOnDestinationChanged$navigation_runtime_release();
    }

    public final boolean clearBackStackInternal$navigation_runtime_release(int i) {
        Iterator<T> it = this.navigatorState.values().iterator();
        while (it.hasNext()) {
            ((NavController.NavControllerNavigatorState) it.next()).setNavigating(true);
        }
        boolean zRestoreStateInternal = restoreStateInternal(i, null, NavOptionsBuilderKt.navOptions(new gg1(2)), null);
        Iterator<T> it2 = this.navigatorState.values().iterator();
        while (it2.hasNext()) {
            ((NavController.NavControllerNavigatorState) it2.next()).setNavigating(false);
        }
        return zRestoreStateInternal && popBackStackInternal$navigation_runtime_release(i, true, false);
    }

    public final NavBackStackEntry createBackStackEntry$navigation_runtime_release(NavDestination navDestination, Bundle bundle) {
        navDestination.getClass();
        return NavBackStackEntry.Companion.create$default(NavBackStackEntry.Companion, getNavContext(), navDestination, bundle, getHostLifecycleState$navigation_runtime_release(), this.viewModel, null, null, 96, null);
    }

    public final boolean dispatchOnDestinationChanged$navigation_runtime_release() {
        while (!this.backQueue.isEmpty() && (this.backQueue.last().getDestination() instanceof NavGraph)) {
            popEntryFromBackStack$navigation_runtime_release$default(this, this.backQueue.last(), false, null, 6, null);
        }
        NavBackStackEntry navBackStackEntryJ = this.backQueue.j();
        if (navBackStackEntryJ != null) {
            this.backStackEntriesToDispatch.add(navBackStackEntryJ);
        }
        this.dispatchReentrantCount++;
        updateBackStackLifecycle$navigation_runtime_release();
        int i = this.dispatchReentrantCount - 1;
        this.dispatchReentrantCount = i;
        if (i == 0) {
            ArrayList<NavBackStackEntry> arrayListV0 = qn1.v0(this.backStackEntriesToDispatch);
            this.backStackEntriesToDispatch.clear();
            for (NavBackStackEntry navBackStackEntry : arrayListV0) {
                Iterator it = qn1.t0(this.onDestinationChangedListeners).iterator();
                while (it.hasNext()) {
                    ((NavController.OnDestinationChangedListener) it.next()).onDestinationChanged(this.navController, navBackStackEntry.getDestination(), navBackStackEntry.getArguments());
                }
                this._currentBackStackEntryFlow.e(navBackStackEntry);
            }
            this._currentBackStack.e(qn1.v0(this.backQueue));
            this._visibleEntries.e(populateVisibleEntries$navigation_runtime_release());
        }
        return navBackStackEntryJ != null;
    }

    public final boolean executePopOperations$navigation_runtime_release(List<? extends Navigator<?>> list, NavDestination navDestination, boolean z, boolean z2) {
        final NavControllerImpl navControllerImpl;
        final boolean z3;
        list.getClass();
        navDestination.getClass();
        final n07 n07Var = new n07();
        final fr<NavBackStackEntryState> frVar = new fr<>();
        Iterator<? extends Navigator<?>> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                navControllerImpl = this;
                z3 = z2;
                break;
            }
            Navigator<? extends NavDestination> navigator = (Navigator) it.next();
            final n07 n07Var2 = new n07();
            navControllerImpl = this;
            z3 = z2;
            navControllerImpl.popBackStackInternal$navigation_runtime_release(navigator, this.backQueue.last(), z3, new nl3() { // from class: si5
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return NavControllerImpl.executePopOperations$lambda$10(n07Var2, n07Var, navControllerImpl, z3, frVar, (NavBackStackEntry) obj);
                }
            });
            if (!n07Var2.b) {
                break;
            }
            this = navControllerImpl;
            z2 = z3;
        }
        if (z3) {
            int i = 1;
            if (!z) {
                ik8.a aVar = new ik8.a(new ik8(dp7.h(new ji(i), navDestination), new mi5(navControllerImpl, 0)));
                while (aVar.hasNext()) {
                    NavDestination navDestination2 = (NavDestination) aVar.next();
                    Map<Integer, String> map = navControllerImpl.backStackMap;
                    Integer numValueOf = Integer.valueOf(navDestination2.getId());
                    NavBackStackEntryState navBackStackEntryStateD = frVar.d();
                    map.put(numValueOf, navBackStackEntryStateD != null ? navBackStackEntryStateD.getId() : null);
                }
            }
            if (!frVar.isEmpty()) {
                NavBackStackEntryState navBackStackEntryStateFirst = frVar.first();
                ik8.a aVar2 = new ik8.a(new ik8(dp7.h(new au0(i), findDestination$navigation_runtime_release$default(navControllerImpl, navBackStackEntryStateFirst.getDestinationId(), null, 2, null)), new yz1(navControllerImpl, 2)));
                while (aVar2.hasNext()) {
                    navControllerImpl.backStackMap.put(Integer.valueOf(((NavDestination) aVar2.next()).getId()), navBackStackEntryStateFirst.getId());
                }
                if (navControllerImpl.backStackMap.values().contains(navBackStackEntryStateFirst.getId())) {
                    navControllerImpl.backStackStates.put(navBackStackEntryStateFirst.getId(), frVar);
                }
            }
        }
        navControllerImpl.updateOnBackPressedCallbackEnabledCallback.invoke();
        return n07Var.b;
    }

    public final NavDestination findDestination$navigation_runtime_release(int i, NavDestination navDestination) {
        NavDestination destination;
        NavGraph navGraph = this._graph;
        if (navGraph == null) {
            return null;
        }
        navGraph.getClass();
        if (navGraph.getId() == i) {
            NavGraph navGraph2 = this._graph;
            if (navDestination == null) {
                return navGraph2;
            }
            if (aa4.e(navGraph2, navDestination) && navDestination.getParent() == null) {
                return this._graph;
            }
        }
        NavBackStackEntry navBackStackEntryJ = this.backQueue.j();
        if (navBackStackEntryJ == null || (destination = navBackStackEntryJ.getDestination()) == null) {
            destination = this._graph;
            destination.getClass();
        }
        return findDestinationComprehensive$navigation_runtime_release(destination, i, false, navDestination);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [androidx.navigation.NavDestination, androidx.navigation.NavGraph] */
    /* JADX WARN: Type inference failed for: r1v7, types: [androidx.navigation.NavGraph, java.lang.Object] */
    public final NavDestination findDestinationComprehensive$navigation_runtime_release(NavDestination navDestination, int i, boolean z, NavDestination navDestination2) {
        ?? parent;
        NavGraph navGraph;
        navDestination.getClass();
        if (navDestination.getId() == i && (navDestination2 == null || (navDestination.equals(navDestination2) && aa4.e(navDestination.getParent(), navDestination2.getParent())))) {
            return navDestination;
        }
        if (navDestination instanceof NavGraph) {
            navGraph = (NavGraph) navDestination;
        } else {
            parent = 0;
        }
        if (parent == 0) {
            parent = navGraph;
            parent = navDestination.getParent();
            parent.getClass();
        }
        parent = navGraph;
        return parent.findNodeComprehensive(i, parent, z, navDestination2);
    }

    public final String findInvalidDestinationDisplayNameInDeepLink$navigation_runtime_release(int[] iArr) {
        NavGraph navGraph;
        iArr.getClass();
        NavGraph navGraph2 = this._graph;
        int length = iArr.length;
        int i = 0;
        while (true) {
            NavDestination navDestinationFindNode = null;
            if (i >= length) {
                return null;
            }
            int i2 = iArr[i];
            if (i == 0) {
                NavGraph navGraph3 = this._graph;
                navGraph3.getClass();
                if (navGraph3.getId() == i2) {
                    navDestinationFindNode = this._graph;
                }
            } else {
                navGraph2.getClass();
                navDestinationFindNode = navGraph2.findNode(i2);
            }
            if (navDestinationFindNode == null) {
                return NavDestination.Companion.getDisplayName(getNavContext(), i2);
            }
            if (i != iArr.length - 1 && (navDestinationFindNode instanceof NavGraph)) {
                while (true) {
                    navGraph = (NavGraph) navDestinationFindNode;
                    navGraph.getClass();
                    if (!(navGraph.findNode(navGraph.getStartDestinationId()) instanceof NavGraph)) {
                        break;
                    }
                    navDestinationFindNode = navGraph.findNode(navGraph.getStartDestinationId());
                }
                navGraph2 = navGraph;
            }
            i++;
        }
    }

    public final <T> String generateRouteFilled$navigation_runtime_release(T t) {
        t.getClass();
        NavDestination navDestinationFindDestinationComprehensive$navigation_runtime_release$default = findDestinationComprehensive$navigation_runtime_release$default(this, getGraph$navigation_runtime_release(), RouteSerializerKt.generateHashCode(iq7.b(x07.a(t.getClass()))), true, null, 8, null);
        if (navDestinationFindDestinationComprehensive$navigation_runtime_release$default == null) {
            kg.f("Destination with route ", x07.a(t.getClass()).f(), " cannot be found in navigation graph ", this._graph);
            return null;
        }
        Map<String, NavArgument> arguments = navDestinationFindDestinationComprehensive$navigation_runtime_release$default.getArguments();
        LinkedHashMap linkedHashMap = new LinkedHashMap(m05.b(arguments.size()));
        Iterator<T> it = arguments.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            linkedHashMap.put(entry.getKey(), ((NavArgument) entry.getValue()).getType());
        }
        return RouteSerializerKt.generateRouteWithArgs(t, linkedHashMap);
    }

    public final nl3<NavBackStackEntry, j59> getAddToBackStackHandler$navigation_runtime_release() {
        return this.addToBackStackHandler;
    }

    public final fr<NavBackStackEntry> getBackQueue$navigation_runtime_release() {
        return this.backQueue;
    }

    public final <T> NavBackStackEntry getBackStackEntry$navigation_runtime_release(ne4<T> ne4Var) {
        NavBackStackEntry navBackStackEntryPrevious;
        ne4Var.getClass();
        int iGenerateHashCode = RouteSerializerKt.generateHashCode(iq7.b(ne4Var));
        if (findDestinationComprehensive$navigation_runtime_release$default(this, getGraph$navigation_runtime_release(), iGenerateHashCode, true, null, 8, null) == null) {
            kg.f("Destination with route ", ne4Var.f(), " cannot be found in navigation graph ", getGraph$navigation_runtime_release());
            return null;
        }
        List<NavBackStackEntry> value = this.currentBackStack.getValue();
        ListIterator<NavBackStackEntry> listIterator = value.listIterator(value.size());
        do {
            if (!listIterator.hasPrevious()) {
                navBackStackEntryPrevious = null;
                break;
            }
            navBackStackEntryPrevious = listIterator.previous();
        } while (navBackStackEntryPrevious.getDestination().getId() != iGenerateHashCode);
        NavBackStackEntry navBackStackEntry = navBackStackEntryPrevious;
        if (navBackStackEntry != null) {
            return navBackStackEntry;
        }
        kg.f("No destination with route ", ne4Var.f(), " is on the NavController's back stack. The current destination is ", getCurrentDestination$navigation_runtime_release());
        return null;
    }

    public final Map<Integer, String> getBackStackMap$navigation_runtime_release() {
        return this.backStackMap;
    }

    public final Map<String, fr<NavBackStackEntryState>> getBackStackStates$navigation_runtime_release() {
        return this.backStackStates;
    }

    public final Bundle[] getBackStackToRestore$navigation_runtime_release() {
        return this.backStackToRestore;
    }

    public final Map<NavBackStackEntry, NavBackStackEntry> getChildToParentEntries$navigation_runtime_release() {
        return this.childToParentEntries;
    }

    public final y68<List<NavBackStackEntry>> getCurrentBackStack$navigation_runtime_release() {
        return this.currentBackStack;
    }

    public final NavBackStackEntry getCurrentBackStackEntry$navigation_runtime_release() {
        return this.backQueue.j();
    }

    public final NavDestination getCurrentDestination$navigation_runtime_release() {
        NavBackStackEntry currentBackStackEntry$navigation_runtime_release = getCurrentBackStackEntry$navigation_runtime_release();
        if (currentBackStackEntry$navigation_runtime_release != null) {
            return currentBackStackEntry$navigation_runtime_release.getDestination();
        }
        return null;
    }

    public final Map<NavBackStackEntry, Boolean> getEntrySavedState$navigation_runtime_release() {
        return this.entrySavedState;
    }

    public final NavGraph getGraph$navigation_runtime_release() {
        NavGraph navGraph = this._graph;
        if (navGraph != null) {
            navGraph.getClass();
            return navGraph;
        }
        ah.f("You must call setGraph() before calling getGraph()");
        return null;
    }

    public final Lifecycle.State getHostLifecycleState$navigation_runtime_release() {
        return this.lifecycleOwner == null ? Lifecycle.State.CREATED : this.hostLifecycleState;
    }

    public final LifecycleObserver getLifecycleObserver$navigation_runtime_release() {
        return this.lifecycleObserver;
    }

    public final LifecycleOwner getLifecycleOwner$navigation_runtime_release() {
        return this.lifecycleOwner;
    }

    public final NavContext getNavContext() {
        return this.navController.getNavContext$navigation_runtime_release();
    }

    public final NavController getNavController() {
        return this.navController;
    }

    public final NavigatorProvider getNavigatorProvider$navigation_runtime_release() {
        return this._navigatorProvider;
    }

    public final Map<Navigator<? extends NavDestination>, NavController.NavControllerNavigatorState> getNavigatorState$navigation_runtime_release() {
        return this.navigatorState;
    }

    public final Bundle getNavigatorStateToRestore$navigation_runtime_release() {
        return this.navigatorStateToRestore;
    }

    public final List<NavController.OnDestinationChangedListener> getOnDestinationChangedListeners$navigation_runtime_release() {
        return this.onDestinationChangedListeners;
    }

    public final Map<NavBackStackEntry, AtomicInt> getParentToChildCount$navigation_runtime_release() {
        return this.parentToChildCount;
    }

    public final nl3<NavBackStackEntry, j59> getPopFromBackStackHandler$navigation_runtime_release() {
        return this.popFromBackStackHandler;
    }

    public final NavBackStackEntry getPreviousBackStackEntry$navigation_runtime_release() {
        Object next;
        Iterator it = qn1.j0(this.backQueue).iterator();
        if (it.hasNext()) {
            it.next();
        }
        Iterator it2 = ((lx1) dp7.f(it)).iterator();
        while (it2.hasNext()) {
            next = it2.next();
            if (!(((NavBackStackEntry) next).getDestination() instanceof NavGraph)) {
                return (NavBackStackEntry) next;
            }
        }
        next = null;
        return (NavBackStackEntry) next;
    }

    public final NavGraph getTopGraph$navigation_runtime_release() {
        NavDestination destination;
        NavBackStackEntry navBackStackEntryJ = this.backQueue.j();
        if (navBackStackEntryJ == null || (destination = navBackStackEntryJ.getDestination()) == null) {
            destination = this._graph;
            destination.getClass();
        }
        NavGraph navGraph = destination instanceof NavGraph ? (NavGraph) destination : null;
        if (navGraph != null) {
            return navGraph;
        }
        NavGraph parent = destination.getParent();
        parent.getClass();
        return parent;
    }

    public final ll3<j59> getUpdateOnBackPressedCallbackEnabledCallback() {
        return this.updateOnBackPressedCallbackEnabledCallback;
    }

    public final NavControllerViewModel getViewModel$navigation_runtime_release() {
        return this.viewModel;
    }

    public final ViewModelStoreOwner getViewModelStoreOwner$navigation_runtime_release(int i) {
        if (this.viewModel == null) {
            ah.f("You must call setViewModelStore() before calling getViewModelStoreOwner().");
            return null;
        }
        NavBackStackEntry backStackEntry$navigation_runtime_release = getBackStackEntry$navigation_runtime_release(i);
        if (backStackEntry$navigation_runtime_release.getDestination() instanceof NavGraph) {
            return backStackEntry$navigation_runtime_release;
        }
        c9.f(kv2.b(i, "No NavGraph with ID ", " is on the NavController's back stack"));
        return null;
    }

    public final y68<List<NavBackStackEntry>> getVisibleEntries$navigation_runtime_release() {
        return this.visibleEntries;
    }

    public final xg5<List<NavBackStackEntry>> get_currentBackStack$navigation_runtime_release() {
        return this._currentBackStack;
    }

    public final vg5<NavBackStackEntry> get_currentBackStackEntryFlow$navigation_runtime_release() {
        return this._currentBackStackEntryFlow;
    }

    public final NavGraph get_graph$navigation_runtime_release() {
        return this._graph;
    }

    public final NavigatorProvider get_navigatorProvider$navigation_runtime_release() {
        return this._navigatorProvider;
    }

    public final xg5<List<NavBackStackEntry>> get_visibleEntries$navigation_runtime_release() {
        return this._visibleEntries;
    }

    public final void linkChildToParent$navigation_runtime_release(NavBackStackEntry navBackStackEntry, NavBackStackEntry navBackStackEntry2) {
        navBackStackEntry.getClass();
        navBackStackEntry2.getClass();
        this.childToParentEntries.put(navBackStackEntry, navBackStackEntry2);
        if (this.parentToChildCount.get(navBackStackEntry2) == null) {
            this.parentToChildCount.put(navBackStackEntry2, new AtomicInt(0));
        }
        AtomicInt atomicInt = this.parentToChildCount.get(navBackStackEntry2);
        atomicInt.getClass();
        atomicInt.incrementAndGet$navigation_runtime_release();
    }

    public final void markTransitionComplete$navigation_runtime_release(NavController.NavControllerNavigatorState navControllerNavigatorState, NavBackStackEntry navBackStackEntry, ll3<j59> ll3Var) {
        NavControllerViewModel navControllerViewModel;
        navControllerNavigatorState.getClass();
        navBackStackEntry.getClass();
        ll3Var.getClass();
        boolean zE = aa4.e(this.entrySavedState.get(navBackStackEntry), Boolean.TRUE);
        ll3Var.invoke();
        this.entrySavedState.remove(navBackStackEntry);
        if (this.backQueue.contains(navBackStackEntry)) {
            if (navControllerNavigatorState.isNavigating()) {
                return;
            }
            updateBackStackLifecycle$navigation_runtime_release();
            this._currentBackStack.e(qn1.v0(this.backQueue));
            this._visibleEntries.e(populateVisibleEntries$navigation_runtime_release());
            return;
        }
        unlinkChildFromParent$navigation_runtime_release(navBackStackEntry);
        if (navBackStackEntry.getLifecycle().getCurrentState().isAtLeast(Lifecycle.State.CREATED)) {
            navBackStackEntry.setMaxLifecycle(Lifecycle.State.DESTROYED);
        }
        fr<NavBackStackEntry> frVar = this.backQueue;
        if (frVar == null || !frVar.isEmpty()) {
            Iterator<NavBackStackEntry> it = frVar.iterator();
            while (it.hasNext()) {
                if (aa4.e(it.next().getId(), navBackStackEntry.getId())) {
                }
            }
            if (!zE && (navControllerViewModel = this.viewModel) != null) {
                navControllerViewModel.clear(navBackStackEntry.getId());
            }
        } else if (!zE) {
            navControllerViewModel.clear(navBackStackEntry.getId());
        }
        updateBackStackLifecycle$navigation_runtime_release();
        this._visibleEntries.e(populateVisibleEntries$navigation_runtime_release());
    }

    /* JADX WARN: Code duplicated, block: B:21:0x009b  */
    public final void navigate$navigation_runtime_release(final NavDestination navDestination, Bundle bundle, NavOptions navOptions, Navigator.Extras extras) {
        boolean z;
        boolean z2;
        boolean zPopBackStackInternal$navigation_runtime_release;
        navDestination.getClass();
        Iterator<T> it = this.navigatorState.values().iterator();
        while (it.hasNext()) {
            ((NavController.NavControllerNavigatorState) it.next()).setNavigating(true);
        }
        final n07 n07Var = new n07();
        if (navOptions == null) {
            z = false;
        } else {
            if (navOptions.getPopUpToRoute() != null) {
                String popUpToRoute = navOptions.getPopUpToRoute();
                popUpToRoute.getClass();
                zPopBackStackInternal$navigation_runtime_release = popBackStackInternal$navigation_runtime_release(popUpToRoute, navOptions.isPopUpToInclusive(), navOptions.shouldPopUpToSaveState());
            } else if (navOptions.getPopUpToRouteClass() != null) {
                ne4<?> popUpToRouteClass = navOptions.getPopUpToRouteClass();
                popUpToRouteClass.getClass();
                zPopBackStackInternal$navigation_runtime_release = popBackStackInternal$navigation_runtime_release(RouteSerializerKt.generateHashCode(iq7.b(popUpToRouteClass)), navOptions.isPopUpToInclusive(), navOptions.shouldPopUpToSaveState());
            } else if (navOptions.getPopUpToRouteObject() != null) {
                Object popUpToRouteObject = navOptions.getPopUpToRouteObject();
                popUpToRouteObject.getClass();
                zPopBackStackInternal$navigation_runtime_release = popBackStackInternal$navigation_runtime_release(popUpToRouteObject, navOptions.isPopUpToInclusive(), navOptions.shouldPopUpToSaveState());
            } else if (navOptions.getPopUpToId() != -1) {
                zPopBackStackInternal$navigation_runtime_release = popBackStackInternal$navigation_runtime_release(navOptions.getPopUpToId(), navOptions.isPopUpToInclusive(), navOptions.shouldPopUpToSaveState());
            } else {
                z = false;
            }
            z = zPopBackStackInternal$navigation_runtime_release;
        }
        final Bundle bundleAddInDefaultArgs = navDestination.addInDefaultArgs(bundle);
        if (navOptions != null && navOptions.shouldRestoreState() && this.backStackMap.containsKey(Integer.valueOf(navDestination.getId()))) {
            n07Var.b = restoreStateInternal(navDestination.getId(), bundleAddInDefaultArgs, navOptions, extras);
            z2 = false;
        } else {
            z2 = navOptions != null && navOptions.shouldLaunchSingleTop() && launchSingleTopInternal(navDestination, bundle);
            if (!z2) {
                navigateInternal$navigation_runtime_release(this._navigatorProvider.getNavigator(navDestination.getNavigatorName()), u96.h(NavBackStackEntry.Companion.create$default(NavBackStackEntry.Companion, getNavContext(), navDestination, bundleAddInDefaultArgs, getHostLifecycleState$navigation_runtime_release(), this.viewModel, null, null, 96, null)), navOptions, extras, new nl3() { // from class: ni5
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return NavControllerImpl.navigate$lambda$44(n07Var, this, navDestination, bundleAddInDefaultArgs, (NavBackStackEntry) obj);
                    }
                });
            }
        }
        this.updateOnBackPressedCallbackEnabledCallback.invoke();
        Iterator<T> it2 = this.navigatorState.values().iterator();
        while (it2.hasNext()) {
            ((NavController.NavControllerNavigatorState) it2.next()).setNavigating(false);
        }
        if (z || n07Var.b || z2) {
            dispatchOnDestinationChanged$navigation_runtime_release();
        } else {
            updateBackStackLifecycle$navigation_runtime_release();
        }
    }

    public final void navigateInternal$navigation_runtime_release(Navigator<? extends NavDestination> navigator, List<NavBackStackEntry> list, NavOptions navOptions, Navigator.Extras extras, nl3<? super NavBackStackEntry, j59> nl3Var) {
        navigator.getClass();
        list.getClass();
        nl3Var.getClass();
        this.addToBackStackHandler = nl3Var;
        navigator.navigate(list, navOptions, extras);
        this.addToBackStackHandler = null;
    }

    public final void onGraphCreated$navigation_runtime_release(Bundle bundle) {
        Bundle bundle2 = this.navigatorStateToRestore;
        if (bundle2 != null) {
            Bundle bundleM9370constructorimpl = SavedStateReader.m9370constructorimpl(bundle2);
            if (SavedStateReader.m9371containsimpl(bundleM9370constructorimpl, KEY_NAVIGATOR_STATE_NAMES)) {
                for (String str : SavedStateReader.m9444getStringListimpl(bundleM9370constructorimpl, KEY_NAVIGATOR_STATE_NAMES)) {
                    Navigator navigator = this._navigatorProvider.getNavigator(str);
                    if (SavedStateReader.m9371containsimpl(bundleM9370constructorimpl, str)) {
                        navigator.onRestoreState(SavedStateReader.m9427getSavedStateimpl(bundleM9370constructorimpl, str));
                    }
                }
            }
        }
        Bundle[] bundleArr = this.backStackToRestore;
        if (bundleArr != null) {
            for (Bundle bundle3 : bundleArr) {
                NavBackStackEntryState navBackStackEntryState = new NavBackStackEntryState(bundle3);
                NavDestination navDestinationFindDestination$navigation_runtime_release$default = findDestination$navigation_runtime_release$default(this, navBackStackEntryState.getDestinationId(), null, 2, null);
                if (navDestinationFindDestination$navigation_runtime_release$default == null) {
                    eq.e(getCurrentDestination$navigation_runtime_release(), n7.d("Restoring the Navigation back stack failed: destination ", NavDestination.Companion.getDisplayName(getNavContext(), navBackStackEntryState.getDestinationId()), " cannot be found from the current destination "));
                    return;
                }
                NavBackStackEntry navBackStackEntryInstantiate = navBackStackEntryState.instantiate(getNavContext(), navDestinationFindDestination$navigation_runtime_release$default, getHostLifecycleState$navigation_runtime_release(), this.viewModel);
                Navigator<? extends NavDestination> navigator2 = this._navigatorProvider.getNavigator(navDestinationFindDestination$navigation_runtime_release$default.getNavigatorName());
                Map<Navigator<? extends NavDestination>, NavController.NavControllerNavigatorState> map = this.navigatorState;
                NavController.NavControllerNavigatorState navControllerNavigatorStateCreateNavControllerNavigatorState$navigation_runtime_release = map.get(navigator2);
                if (navControllerNavigatorStateCreateNavControllerNavigatorState$navigation_runtime_release == null) {
                    navControllerNavigatorStateCreateNavControllerNavigatorState$navigation_runtime_release = this.navController.createNavControllerNavigatorState$navigation_runtime_release(navigator2);
                    map.put(navigator2, navControllerNavigatorStateCreateNavControllerNavigatorState$navigation_runtime_release);
                }
                this.backQueue.addLast(navBackStackEntryInstantiate);
                navControllerNavigatorStateCreateNavControllerNavigatorState$navigation_runtime_release.addInternal(navBackStackEntryInstantiate);
                NavGraph parent = navBackStackEntryInstantiate.getDestination().getParent();
                if (parent != null) {
                    linkChildToParent$navigation_runtime_release(navBackStackEntryInstantiate, getBackStackEntry$navigation_runtime_release(parent.getId()));
                }
            }
            this.updateOnBackPressedCallbackEnabledCallback.invoke();
            this.backStackToRestore = null;
        }
        Collection<Navigator<? extends NavDestination>> collectionValues = this._navigatorProvider.getNavigators().values();
        ArrayList<Navigator<? extends NavDestination>> arrayList = new ArrayList();
        for (Object obj : collectionValues) {
            if (!((Navigator) obj).isAttached()) {
                arrayList.add(obj);
            }
        }
        for (Navigator<? extends NavDestination> navigator3 : arrayList) {
            Map<Navigator<? extends NavDestination>, NavController.NavControllerNavigatorState> map2 = this.navigatorState;
            NavController.NavControllerNavigatorState navControllerNavigatorStateCreateNavControllerNavigatorState$navigation_runtime_release2 = map2.get(navigator3);
            if (navControllerNavigatorStateCreateNavControllerNavigatorState$navigation_runtime_release2 == null) {
                navControllerNavigatorStateCreateNavControllerNavigatorState$navigation_runtime_release2 = this.navController.createNavControllerNavigatorState$navigation_runtime_release(navigator3);
                map2.put(navigator3, navControllerNavigatorStateCreateNavControllerNavigatorState$navigation_runtime_release2);
            }
            navigator3.onAttach(navControllerNavigatorStateCreateNavControllerNavigatorState$navigation_runtime_release2);
        }
        if (this._graph == null || !this.backQueue.isEmpty()) {
            dispatchOnDestinationChanged$navigation_runtime_release();
        } else {
            if (this.navController.checkDeepLinkHandled$navigation_runtime_release()) {
                return;
            }
            NavGraph navGraph = this._graph;
            navGraph.getClass();
            navigate$navigation_runtime_release(navGraph, bundle, null, null);
        }
    }

    public final void pop$navigation_runtime_release(NavController.NavControllerNavigatorState navControllerNavigatorState, NavBackStackEntry navBackStackEntry, boolean z, ll3<j59> ll3Var) {
        navControllerNavigatorState.getClass();
        navBackStackEntry.getClass();
        ll3Var.getClass();
        Navigator navigator = this._navigatorProvider.getNavigator(navBackStackEntry.getDestination().getNavigatorName());
        this.entrySavedState.put(navBackStackEntry, Boolean.valueOf(z));
        if (!aa4.e(navigator, navControllerNavigatorState.getNavigator())) {
            NavController.NavControllerNavigatorState navControllerNavigatorState2 = this.navigatorState.get(navigator);
            navControllerNavigatorState2.getClass();
            navControllerNavigatorState2.pop(navBackStackEntry, z);
        } else {
            nl3<? super NavBackStackEntry, j59> nl3Var = this.popFromBackStackHandler;
            if (nl3Var == null) {
                popBackStackFromNavigator$navigation_runtime_release(navBackStackEntry, new q(ll3Var, 3));
            } else {
                nl3Var.invoke(navBackStackEntry);
                ll3Var.invoke();
            }
        }
    }

    public final <T> boolean popBackStack$navigation_runtime_release(ne4<T> ne4Var, boolean z, boolean z2) {
        ne4Var.getClass();
        int iGenerateHashCode = RouteSerializerKt.generateHashCode(iq7.b(ne4Var));
        if (findDestinationComprehensive$navigation_runtime_release$default(this, getGraph$navigation_runtime_release(), iGenerateHashCode, true, null, 8, null) != null) {
            return popBackStack$navigation_runtime_release(iGenerateHashCode, z, z2);
        }
        kg.f("Destination with route ", ne4Var.f(), " cannot be found in navigation graph ", getGraph$navigation_runtime_release());
        return false;
    }

    public final void popBackStackFromNavigator$navigation_runtime_release(NavBackStackEntry navBackStackEntry, ll3<j59> ll3Var) {
        navBackStackEntry.getClass();
        ll3Var.getClass();
        int iIndexOf = this.backQueue.indexOf(navBackStackEntry);
        if (iIndexOf < 0) {
            Log.Companion.i(TAG, "Ignoring pop of " + navBackStackEntry + " as it was not found on the current back stack");
            return;
        }
        int i = iIndexOf + 1;
        if (i != this.backQueue.size()) {
            popBackStackInternal$navigation_runtime_release(this.backQueue.get(i).getDestination().getId(), true, false);
        }
        popEntryFromBackStack$navigation_runtime_release$default(this, navBackStackEntry, false, null, 6, null);
        ll3Var.invoke();
        this.updateOnBackPressedCallbackEnabledCallback.invoke();
        dispatchOnDestinationChanged$navigation_runtime_release();
    }

    public final boolean popBackStackInternal$navigation_runtime_release(String str, boolean z, boolean z2) {
        NavBackStackEntry navBackStackEntryPrevious;
        boolean zHasRoute;
        str.getClass();
        if (this.backQueue.isEmpty()) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        fr<NavBackStackEntry> frVar = this.backQueue;
        ListIterator<NavBackStackEntry> listIterator = frVar.listIterator(frVar.size());
        do {
            if (!listIterator.hasPrevious()) {
                navBackStackEntryPrevious = null;
                break;
            }
            navBackStackEntryPrevious = listIterator.previous();
            NavBackStackEntry navBackStackEntry = navBackStackEntryPrevious;
            zHasRoute = navBackStackEntry.getDestination().hasRoute(str, navBackStackEntry.getArguments());
            if (z || !zHasRoute) {
                arrayList.add(this._navigatorProvider.getNavigator(navBackStackEntry.getDestination().getNavigatorName()));
            }
        } while (!zHasRoute);
        NavBackStackEntry navBackStackEntry2 = navBackStackEntryPrevious;
        NavDestination destination = navBackStackEntry2 != null ? navBackStackEntry2.getDestination() : null;
        if (destination != null) {
            return executePopOperations$navigation_runtime_release(arrayList, destination, z, z2);
        }
        Log.Companion.i(TAG, "Ignoring popBackStack to route " + str + " as it was not found on the current back stack");
        return false;
    }

    public final void popEntryFromBackStack$navigation_runtime_release(NavBackStackEntry navBackStackEntry, boolean z, fr<NavBackStackEntryState> frVar) {
        NavControllerViewModel navControllerViewModel;
        y68<Set<NavBackStackEntry>> transitionsInProgress;
        Set<NavBackStackEntry> value;
        navBackStackEntry.getClass();
        frVar.getClass();
        NavBackStackEntry navBackStackEntryLast = this.backQueue.last();
        if (!aa4.e(navBackStackEntryLast, navBackStackEntry)) {
            StringBuilder sb = new StringBuilder("Attempted to pop ");
            sb.append(navBackStackEntry.getDestination());
            NavDestination destination = navBackStackEntryLast.getDestination();
            sb.append(", which is not the top of the back stack (");
            sb.append(destination);
            sb.append(')');
            throw new IllegalStateException(sb.toString().toString());
        }
        nn1.E(this.backQueue);
        NavController.NavControllerNavigatorState navControllerNavigatorState = this.navigatorState.get(getNavigatorProvider$navigation_runtime_release().getNavigator(navBackStackEntryLast.getDestination().getNavigatorName()));
        boolean z2 = true;
        if ((navControllerNavigatorState == null || (transitionsInProgress = navControllerNavigatorState.getTransitionsInProgress()) == null || (value = transitionsInProgress.getValue()) == null || !value.contains(navBackStackEntryLast)) && !this.parentToChildCount.containsKey(navBackStackEntryLast)) {
            z2 = false;
        }
        Lifecycle.State currentState = navBackStackEntryLast.getLifecycle().getCurrentState();
        Lifecycle.State state = Lifecycle.State.CREATED;
        if (currentState.isAtLeast(state)) {
            if (z) {
                navBackStackEntryLast.setMaxLifecycle(state);
                frVar.addFirst(new NavBackStackEntryState(navBackStackEntryLast));
            }
            if (z2) {
                navBackStackEntryLast.setMaxLifecycle(state);
            } else {
                navBackStackEntryLast.setMaxLifecycle(Lifecycle.State.DESTROYED);
                unlinkChildFromParent$navigation_runtime_release(navBackStackEntryLast);
            }
        }
        if (z || z2 || (navControllerViewModel = this.viewModel) == null) {
            return;
        }
        navControllerViewModel.clear(navBackStackEntryLast.getId());
    }

    public final List<NavBackStackEntry> populateVisibleEntries$navigation_runtime_release() {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = this.navigatorState.values().iterator();
        while (it.hasNext()) {
            Set<NavBackStackEntry> value = ((NavController.NavControllerNavigatorState) it.next()).getTransitionsInProgress().getValue();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : value) {
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                if (!arrayList.contains(navBackStackEntry) && !navBackStackEntry.getMaxLifecycle().isAtLeast(Lifecycle.State.STARTED)) {
                    arrayList2.add(obj);
                }
            }
            nn1.s(arrayList2, arrayList);
        }
        fr<NavBackStackEntry> frVar = this.backQueue;
        ArrayList arrayList3 = new ArrayList();
        for (NavBackStackEntry navBackStackEntry2 : frVar) {
            NavBackStackEntry navBackStackEntry3 = navBackStackEntry2;
            if (!arrayList.contains(navBackStackEntry3) && navBackStackEntry3.getMaxLifecycle().isAtLeast(Lifecycle.State.STARTED)) {
                arrayList3.add(navBackStackEntry2);
            }
        }
        nn1.s(arrayList3, arrayList);
        ArrayList arrayList4 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (!(((NavBackStackEntry) obj2).getDestination() instanceof NavGraph)) {
                arrayList4.add(obj2);
            }
        }
        return arrayList4;
    }

    public final void prepareForTransition$navigation_runtime_release(NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        if (this.backQueue.contains(navBackStackEntry)) {
            navBackStackEntry.setMaxLifecycle(Lifecycle.State.STARTED);
        } else {
            ah.f("Cannot transition entry that is not in the back stack");
        }
    }

    public final void push$navigation_runtime_release(NavController.NavControllerNavigatorState navControllerNavigatorState, NavBackStackEntry navBackStackEntry) {
        navControllerNavigatorState.getClass();
        navBackStackEntry.getClass();
        Navigator navigator = this._navigatorProvider.getNavigator(navBackStackEntry.getDestination().getNavigatorName());
        if (!aa4.e(navigator, navControllerNavigatorState.getNavigator())) {
            NavController.NavControllerNavigatorState navControllerNavigatorState2 = this.navigatorState.get(navigator);
            if (navControllerNavigatorState2 != null) {
                navControllerNavigatorState2.push(navBackStackEntry);
                return;
            } else {
                wg.c(navBackStackEntry.getDestination().getNavigatorName(), "NavigatorBackStack for ", " should already be created");
                return;
            }
        }
        nl3<? super NavBackStackEntry, j59> nl3Var = this.addToBackStackHandler;
        if (nl3Var != null) {
            nl3Var.invoke(navBackStackEntry);
            navControllerNavigatorState.addInternal(navBackStackEntry);
            return;
        }
        Log.Companion.i(TAG, "Ignoring add of destination " + navBackStackEntry.getDestination() + " outside of the call to navigate(). ");
    }

    public final void removeOnDestinationChangedListener$navigation_runtime_release(NavController.OnDestinationChangedListener onDestinationChangedListener) {
        onDestinationChangedListener.getClass();
        this.onDestinationChangedListeners.remove(onDestinationChangedListener);
    }

    public final void restoreState$navigation_runtime_release(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        Bundle bundleM9370constructorimpl = SavedStateReader.m9370constructorimpl(bundle);
        this.navigatorStateToRestore = SavedStateReader.m9371containsimpl(bundleM9370constructorimpl, KEY_NAVIGATOR_STATE) ? SavedStateReader.m9427getSavedStateimpl(bundleM9370constructorimpl, KEY_NAVIGATOR_STATE) : null;
        int i = 0;
        this.backStackToRestore = SavedStateReader.m9371containsimpl(bundleM9370constructorimpl, KEY_BACK_STACK) ? (Bundle[]) SavedStateReader.m9430getSavedStateListimpl(bundleM9370constructorimpl, KEY_BACK_STACK).toArray(new Bundle[0]) : null;
        this.backStackStates.clear();
        if (SavedStateReader.m9371containsimpl(bundleM9370constructorimpl, KEY_BACK_STACK_DEST_IDS) && SavedStateReader.m9371containsimpl(bundleM9370constructorimpl, KEY_BACK_STACK_IDS)) {
            int[] iArrM9402getIntArrayimpl = SavedStateReader.m9402getIntArrayimpl(bundleM9370constructorimpl, KEY_BACK_STACK_DEST_IDS);
            List<String> listM9444getStringListimpl = SavedStateReader.m9444getStringListimpl(bundleM9370constructorimpl, KEY_BACK_STACK_IDS);
            int length = iArrM9402getIntArrayimpl.length;
            int i2 = 0;
            while (i < length) {
                int i3 = i2 + 1;
                this.backStackMap.put(Integer.valueOf(iArrM9402getIntArrayimpl[i]), !aa4.e(listM9444getStringListimpl.get(i2), "") ? listM9444getStringListimpl.get(i2) : null);
                i++;
                i2 = i3;
            }
        }
        if (SavedStateReader.m9371containsimpl(bundleM9370constructorimpl, KEY_BACK_STACK_STATES_IDS)) {
            for (String str : SavedStateReader.m9444getStringListimpl(bundleM9370constructorimpl, KEY_BACK_STACK_STATES_IDS)) {
                if (SavedStateReader.m9371containsimpl(bundleM9370constructorimpl, KEY_BACK_STACK_STATES_PREFIX + str)) {
                    List<Bundle> listM9430getSavedStateListimpl = SavedStateReader.m9430getSavedStateListimpl(bundleM9370constructorimpl, KEY_BACK_STACK_STATES_PREFIX + str);
                    Map<String, fr<NavBackStackEntryState>> map = this.backStackStates;
                    fr<NavBackStackEntryState> frVar = new fr<>(listM9430getSavedStateListimpl.size());
                    Iterator<Bundle> it = listM9430getSavedStateListimpl.iterator();
                    while (it.hasNext()) {
                        frVar.addLast(new NavBackStackEntryState(it.next()));
                    }
                    map.put(str, frVar);
                }
            }
        }
    }

    public final Bundle saveState$navigation_runtime_release() {
        Bundle bundleBundleOf;
        ArrayList arrayList = new ArrayList();
        b36[] b36VarArr = new b36[0];
        Bundle bundleBundleOf2 = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
        SavedStateWriter.m9456constructorimpl(bundleBundleOf2);
        for (Map.Entry<String, Navigator<? extends NavDestination>> entry : this._navigatorProvider.getNavigators().entrySet()) {
            String key = entry.getKey();
            Bundle bundleOnSaveState = entry.getValue().onSaveState();
            if (bundleOnSaveState != null) {
                arrayList.add(key);
                SavedStateWriter.m9483putSavedStateimpl(SavedStateWriter.m9456constructorimpl(bundleBundleOf2), key, bundleOnSaveState);
            }
        }
        if (arrayList.isEmpty()) {
            bundleBundleOf = null;
        } else {
            b36[] b36VarArr2 = new b36[0];
            bundleBundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr2, b36VarArr2.length));
            Bundle bundleM9456constructorimpl = SavedStateWriter.m9456constructorimpl(bundleBundleOf);
            SavedStateWriter.m9491putStringListimpl(SavedStateWriter.m9456constructorimpl(bundleBundleOf2), KEY_NAVIGATOR_STATE_NAMES, arrayList);
            SavedStateWriter.m9483putSavedStateimpl(bundleM9456constructorimpl, KEY_NAVIGATOR_STATE, bundleBundleOf2);
        }
        if (!this.backQueue.isEmpty()) {
            if (bundleBundleOf == null) {
                b36[] b36VarArr3 = new b36[0];
                Bundle bundleBundleOf3 = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr3, b36VarArr3.length));
                SavedStateWriter.m9456constructorimpl(bundleBundleOf3);
                bundleBundleOf = bundleBundleOf3;
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator<NavBackStackEntry> it = this.backQueue.iterator();
            while (it.hasNext()) {
                arrayList2.add(new NavBackStackEntryState(it.next()).writeToState());
            }
            SavedStateWriter.m9485putSavedStateListimpl(SavedStateWriter.m9456constructorimpl(bundleBundleOf), KEY_BACK_STACK, arrayList2);
        }
        if (!this.backStackMap.isEmpty()) {
            if (bundleBundleOf == null) {
                b36[] b36VarArr4 = new b36[0];
                Bundle bundleBundleOf4 = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr4, b36VarArr4.length));
                SavedStateWriter.m9456constructorimpl(bundleBundleOf4);
                bundleBundleOf = bundleBundleOf4;
            }
            int[] iArr = new int[this.backStackMap.size()];
            ArrayList arrayList3 = new ArrayList();
            int i = 0;
            for (Map.Entry<Integer, String> entry2 : this.backStackMap.entrySet()) {
                int iIntValue = entry2.getKey().intValue();
                String value = entry2.getValue();
                int i2 = i + 1;
                iArr[i] = iIntValue;
                if (value == null) {
                    value = "";
                }
                arrayList3.add(value);
                i = i2;
            }
            Bundle bundleM9456constructorimpl2 = SavedStateWriter.m9456constructorimpl(bundleBundleOf);
            SavedStateWriter.m9474putIntArrayimpl(bundleM9456constructorimpl2, KEY_BACK_STACK_DEST_IDS, iArr);
            SavedStateWriter.m9491putStringListimpl(bundleM9456constructorimpl2, KEY_BACK_STACK_IDS, arrayList3);
        }
        if (!this.backStackStates.isEmpty()) {
            if (bundleBundleOf == null) {
                b36[] b36VarArr5 = new b36[0];
                bundleBundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr5, b36VarArr5.length));
                SavedStateWriter.m9456constructorimpl(bundleBundleOf);
            }
            ArrayList arrayList4 = new ArrayList();
            for (Map.Entry<String, fr<NavBackStackEntryState>> entry3 : this.backStackStates.entrySet()) {
                String key2 = entry3.getKey();
                fr<NavBackStackEntryState> value2 = entry3.getValue();
                arrayList4.add(key2);
                ArrayList arrayList5 = new ArrayList();
                Iterator<NavBackStackEntryState> it2 = value2.iterator();
                while (it2.hasNext()) {
                    arrayList5.add(it2.next().writeToState());
                }
                SavedStateWriter.m9485putSavedStateListimpl(SavedStateWriter.m9456constructorimpl(bundleBundleOf), KEY_BACK_STACK_STATES_PREFIX + key2, arrayList5);
            }
            SavedStateWriter.m9491putStringListimpl(SavedStateWriter.m9456constructorimpl(bundleBundleOf), KEY_BACK_STACK_STATES_IDS, arrayList4);
        }
        return bundleBundleOf;
    }

    public final void setAddToBackStackHandler$navigation_runtime_release(nl3<? super NavBackStackEntry, j59> nl3Var) {
        this.addToBackStackHandler = nl3Var;
    }

    public final void setBackStackToRestore$navigation_runtime_release(Bundle[] bundleArr) {
        this.backStackToRestore = bundleArr;
    }

    public final void setGraph$navigation_runtime_release(NavGraph navGraph, Bundle bundle) {
        NavControllerImpl navControllerImpl;
        navGraph.getClass();
        if (!this.backQueue.isEmpty() && getHostLifecycleState$navigation_runtime_release() == Lifecycle.State.DESTROYED) {
            ah.f("You cannot set a new graph on a NavController with entries on the back stack after the NavController has been destroyed. Please ensure that your NavHost has the same lifetime as your NavController.");
            return;
        }
        if (!aa4.e(this._graph, navGraph)) {
            NavGraph navGraph2 = this._graph;
            if (navGraph2 != null) {
                for (Integer num : new ArrayList(this.backStackMap.keySet())) {
                    num.getClass();
                    clearBackStackInternal$navigation_runtime_release(num.intValue());
                }
                navControllerImpl = this;
                popBackStackInternal$navigation_runtime_release$default(navControllerImpl, navGraph2.getId(), true, false, 4, (Object) null);
            } else {
                navControllerImpl = this;
            }
            navControllerImpl._graph = navGraph;
            navControllerImpl.onGraphCreated$navigation_runtime_release(bundle);
            return;
        }
        int size = navGraph.getNodes().size();
        for (int i = 0; i < size; i++) {
            NavDestination navDestinationValueAt = navGraph.getNodes().valueAt(i);
            NavGraph navGraph3 = this._graph;
            navGraph3.getClass();
            int iKeyAt = navGraph3.getNodes().keyAt(i);
            NavGraph navGraph4 = this._graph;
            navGraph4.getClass();
            navGraph4.getNodes().replace(iKeyAt, navDestinationValueAt);
        }
        for (NavBackStackEntry navBackStackEntry : this.backQueue) {
            z67<NavDestination> z67Var = new z67(jp7.q(NavDestination.Companion.getHierarchy(navBackStackEntry.getDestination())));
            NavDestination navDestinationFindNode = this._graph;
            navDestinationFindNode.getClass();
            for (NavDestination navDestination : z67Var) {
                if (!aa4.e(navDestination, this._graph) || !aa4.e(navDestinationFindNode, navGraph)) {
                    if (navDestinationFindNode instanceof NavGraph) {
                        navDestinationFindNode = ((NavGraph) navDestinationFindNode).findNode(navDestination.getId());
                        navDestinationFindNode.getClass();
                    }
                }
            }
            navBackStackEntry.setDestination(navDestinationFindNode);
        }
    }

    public final void setHostLifecycleState$navigation_runtime_release(Lifecycle.State state) {
        state.getClass();
        this.hostLifecycleState = state;
    }

    public final void setLifecycleOwner$navigation_runtime_release(LifecycleOwner lifecycleOwner) {
        Lifecycle lifecycle;
        lifecycleOwner.getClass();
        if (lifecycleOwner.equals(this.lifecycleOwner)) {
            return;
        }
        LifecycleOwner lifecycleOwner2 = this.lifecycleOwner;
        if (lifecycleOwner2 != null && (lifecycle = lifecycleOwner2.getLifecycle()) != null) {
            lifecycle.removeObserver(this.lifecycleObserver);
        }
        this.lifecycleOwner = lifecycleOwner;
        lifecycleOwner.getLifecycle().addObserver(this.lifecycleObserver);
    }

    public final void setNavigatorProvider$navigation_runtime_release(NavigatorProvider navigatorProvider) {
        navigatorProvider.getClass();
        if (this.backQueue.isEmpty()) {
            this._navigatorProvider = navigatorProvider;
        } else {
            ah.f("NavigatorProvider must be set before setGraph call");
        }
    }

    public final void setNavigatorStateToRestore$navigation_runtime_release(Bundle bundle) {
        this.navigatorStateToRestore = bundle;
    }

    public final void setPopFromBackStackHandler$navigation_runtime_release(nl3<? super NavBackStackEntry, j59> nl3Var) {
        this.popFromBackStackHandler = nl3Var;
    }

    public final void setUpdateOnBackPressedCallbackEnabledCallback(ll3<j59> ll3Var) {
        ll3Var.getClass();
        this.updateOnBackPressedCallbackEnabledCallback = ll3Var;
    }

    public final void setViewModel$navigation_runtime_release(NavControllerViewModel navControllerViewModel) {
        this.viewModel = navControllerViewModel;
    }

    public final void setViewModelStore$navigation_runtime_release(ViewModelStore viewModelStore) {
        viewModelStore.getClass();
        NavControllerViewModel navControllerViewModel = this.viewModel;
        NavControllerViewModel.Companion companion = NavControllerViewModel.Companion;
        if (aa4.e(navControllerViewModel, companion.getInstance(viewModelStore))) {
            return;
        }
        if (this.backQueue.isEmpty()) {
            this.viewModel = companion.getInstance(viewModelStore);
        } else {
            ah.f("ViewModelStore should be set before setGraph call");
        }
    }

    public final void set_graph$navigation_runtime_release(NavGraph navGraph) {
        this._graph = navGraph;
    }

    public final void set_navigatorProvider$navigation_runtime_release(NavigatorProvider navigatorProvider) {
        navigatorProvider.getClass();
        this._navigatorProvider = navigatorProvider;
    }

    public final NavBackStackEntry unlinkChildFromParent$navigation_runtime_release(NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        NavBackStackEntry navBackStackEntryRemove = this.childToParentEntries.remove(navBackStackEntry);
        if (navBackStackEntryRemove == null) {
            return null;
        }
        AtomicInt atomicInt = this.parentToChildCount.get(navBackStackEntryRemove);
        Integer numValueOf = atomicInt != null ? Integer.valueOf(atomicInt.decrementAndGet$navigation_runtime_release()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            NavController.NavControllerNavigatorState navControllerNavigatorState = this.navigatorState.get(this._navigatorProvider.getNavigator(navBackStackEntryRemove.getDestination().getNavigatorName()));
            if (navControllerNavigatorState != null) {
                navControllerNavigatorState.markTransitionComplete(navBackStackEntryRemove);
            }
            this.parentToChildCount.remove(navBackStackEntryRemove);
        }
        return navBackStackEntryRemove;
    }

    public final void updateBackStackLifecycle$navigation_runtime_release() {
        AtomicInt atomicInt;
        y68<Set<NavBackStackEntry>> transitionsInProgress;
        Set<NavBackStackEntry> value;
        ArrayList<NavBackStackEntry> arrayListV0 = qn1.v0(this.backQueue);
        if (arrayListV0.isEmpty()) {
            return;
        }
        NavDestination destination = ((NavBackStackEntry) qn1.b0(arrayListV0)).getDestination();
        ArrayList arrayListK = u96.k(destination);
        if (destination instanceof SupportingPane) {
            boolean z = destination instanceof FloatingWindow;
            Iterator it = qn1.O(qn1.j0(arrayListV0), 1).iterator();
            while (it.hasNext()) {
                NavDestination destination2 = ((NavBackStackEntry) it.next()).getDestination();
                if (z && !(destination2 instanceof FloatingWindow) && !(destination2 instanceof NavGraph)) {
                    break;
                }
                arrayListK.add(destination2);
                if (!(destination2 instanceof SupportingPane) && !(destination2 instanceof NavGraph)) {
                    break;
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        if (qn1.b0(arrayListK) instanceof FloatingWindow) {
            Iterator it2 = qn1.j0(arrayListV0).iterator();
            while (it2.hasNext()) {
                NavDestination destination3 = ((NavBackStackEntry) it2.next()).getDestination();
                arrayList.add(destination3);
                if (!(destination3 instanceof FloatingWindow) && !(destination3 instanceof SupportingPane) && !(destination3 instanceof NavGraph)) {
                    break;
                }
            }
        }
        HashMap map = new HashMap();
        for (NavBackStackEntry navBackStackEntry : qn1.j0(arrayListV0)) {
            Lifecycle.State maxLifecycle = navBackStackEntry.getMaxLifecycle();
            NavDestination destination4 = navBackStackEntry.getDestination();
            NavDestination navDestination = (NavDestination) qn1.V(arrayListK);
            if (navDestination != null && navDestination.getId() == destination4.getId()) {
                Lifecycle.State state = Lifecycle.State.RESUMED;
                if (maxLifecycle != state) {
                    NavController.NavControllerNavigatorState navControllerNavigatorState = this.navigatorState.get(getNavigatorProvider$navigation_runtime_release().getNavigator(navBackStackEntry.getDestination().getNavigatorName()));
                    if (aa4.e((navControllerNavigatorState == null || (transitionsInProgress = navControllerNavigatorState.getTransitionsInProgress()) == null || (value = transitionsInProgress.getValue()) == null) ? null : Boolean.valueOf(value.contains(navBackStackEntry)), Boolean.TRUE) || ((atomicInt = this.parentToChildCount.get(navBackStackEntry)) != null && atomicInt.get$navigation_runtime_release() == 0)) {
                        map.put(navBackStackEntry, Lifecycle.State.STARTED);
                    } else {
                        map.put(navBackStackEntry, state);
                    }
                }
                NavDestination navDestination2 = (NavDestination) qn1.V(arrayList);
                if (navDestination2 != null && navDestination2.getId() == destination4.getId()) {
                    nn1.D(arrayList);
                }
                nn1.D(arrayListK);
                NavGraph parent = destination4.getParent();
                if (parent != null) {
                    arrayListK.add(parent);
                }
            } else if (arrayList.isEmpty() || destination4.getId() != ((NavDestination) qn1.T(arrayList)).getId()) {
                navBackStackEntry.setMaxLifecycle(Lifecycle.State.CREATED);
            } else {
                NavDestination navDestination3 = (NavDestination) nn1.D(arrayList);
                if (maxLifecycle == Lifecycle.State.RESUMED) {
                    navBackStackEntry.setMaxLifecycle(Lifecycle.State.STARTED);
                } else {
                    Lifecycle.State state2 = Lifecycle.State.STARTED;
                    if (maxLifecycle != state2) {
                        map.put(navBackStackEntry, state2);
                    }
                }
                NavGraph parent2 = navDestination3.getParent();
                if (parent2 != null && !arrayList.contains(parent2)) {
                    arrayList.add(parent2);
                }
            }
        }
        for (NavBackStackEntry navBackStackEntry2 : arrayListV0) {
            Lifecycle.State state3 = (Lifecycle.State) map.get(navBackStackEntry2);
            if (state3 != null) {
                navBackStackEntry2.setMaxLifecycle(state3);
            } else {
                navBackStackEntry2.updateState();
            }
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    public static /* synthetic */ void navigate$navigation_runtime_release$default(NavControllerImpl navControllerImpl, Object obj, NavOptions navOptions, Navigator.Extras extras, int i, Object obj2) {
        if ((i & 4) != 0) {
            extras = null;
        }
        navControllerImpl.navigate$navigation_runtime_release(obj, navOptions, extras);
    }

    public static /* synthetic */ boolean popBackStackInternal$navigation_runtime_release$default(NavControllerImpl navControllerImpl, int i, boolean z, boolean z2, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z2 = false;
        }
        return navControllerImpl.popBackStackInternal$navigation_runtime_release(i, z, z2);
    }

    public static /* synthetic */ boolean popBackStackInternal$navigation_runtime_release$default(NavControllerImpl navControllerImpl, Object obj, boolean z, boolean z2, int i, Object obj2) {
        if ((i & 4) != 0) {
            z2 = false;
        }
        return navControllerImpl.popBackStackInternal$navigation_runtime_release(obj, z, z2);
    }

    public final boolean clearBackStack$navigation_runtime_release(String str) {
        str.getClass();
        return clearBackStackInternal$navigation_runtime_release(str) && dispatchOnDestinationChanged$navigation_runtime_release();
    }

    public final boolean clearBackStack$navigation_runtime_release(int i) {
        return clearBackStackInternal$navigation_runtime_release(i) && dispatchOnDestinationChanged$navigation_runtime_release();
    }

    public final <T> boolean clearBackStack$navigation_runtime_release(ne4<T> ne4Var) {
        ne4Var.getClass();
        return clearBackStack$navigation_runtime_release(RouteSerializerKt.generateHashCode(iq7.b(ne4Var)));
    }

    public final boolean popBackStack$navigation_runtime_release() {
        if (this.backQueue.isEmpty()) {
            return false;
        }
        NavDestination currentDestination$navigation_runtime_release = getCurrentDestination$navigation_runtime_release();
        currentDestination$navigation_runtime_release.getClass();
        return popBackStack$navigation_runtime_release(currentDestination$navigation_runtime_release.getId(), true);
    }

    public final boolean popBackStack$navigation_runtime_release(int i, boolean z) {
        return popBackStack$navigation_runtime_release(i, z, false);
    }

    public final boolean popBackStack$navigation_runtime_release(int i, boolean z, boolean z2) {
        return popBackStackInternal$navigation_runtime_release(i, z, z2) && dispatchOnDestinationChanged$navigation_runtime_release();
    }

    public final boolean popBackStack$navigation_runtime_release(String str, boolean z, boolean z2) {
        str.getClass();
        return popBackStackInternal$navigation_runtime_release(str, z, z2) && dispatchOnDestinationChanged$navigation_runtime_release();
    }

    public final <T> boolean popBackStack$navigation_runtime_release(T t, boolean z, boolean z2) {
        t.getClass();
        return popBackStackInternal$navigation_runtime_release(t, z, z2) && dispatchOnDestinationChanged$navigation_runtime_release();
    }

    public final NavDestination findDestination$navigation_runtime_release(String str) {
        str.getClass();
        NavGraph navGraph = this._graph;
        if (navGraph == null) {
            return null;
        }
        navGraph.getClass();
        if (!aa4.e(navGraph.getRoute(), str)) {
            NavGraph navGraph2 = this._graph;
            navGraph2.getClass();
            if (navGraph2.matchRoute(str) == null) {
                return getTopGraph$navigation_runtime_release().findNode(str);
            }
        }
        return this._graph;
    }

    public final boolean clearBackStackInternal$navigation_runtime_release(String str) {
        str.getClass();
        Iterator<T> it = this.navigatorState.values().iterator();
        while (it.hasNext()) {
            ((NavController.NavControllerNavigatorState) it.next()).setNavigating(true);
        }
        boolean zRestoreStateInternal = restoreStateInternal(str);
        Iterator<T> it2 = this.navigatorState.values().iterator();
        while (it2.hasNext()) {
            ((NavController.NavControllerNavigatorState) it2.next()).setNavigating(false);
        }
        return zRestoreStateInternal && popBackStackInternal$navigation_runtime_release(str, true, false);
    }

    public final NavBackStackEntry getBackStackEntry$navigation_runtime_release(int i) {
        NavBackStackEntry navBackStackEntryPrevious;
        fr<NavBackStackEntry> frVar = this.backQueue;
        ListIterator<NavBackStackEntry> listIterator = frVar.listIterator(frVar.size());
        do {
            if (!listIterator.hasPrevious()) {
                navBackStackEntryPrevious = null;
                break;
            }
            navBackStackEntryPrevious = listIterator.previous();
        } while (navBackStackEntryPrevious.getDestination().getId() != i);
        NavBackStackEntry navBackStackEntry = navBackStackEntryPrevious;
        if (navBackStackEntry != null) {
            return navBackStackEntry;
        }
        h2.c(getCurrentDestination$navigation_runtime_release(), n7.c(i, "No destination with ID ", " is on the NavController's back stack. The current destination is "));
        return null;
    }

    public final NavBackStackEntry getBackStackEntry$navigation_runtime_release(String str) {
        NavBackStackEntry navBackStackEntryPrevious;
        NavBackStackEntry navBackStackEntry;
        str.getClass();
        fr<NavBackStackEntry> frVar = this.backQueue;
        ListIterator<NavBackStackEntry> listIterator = frVar.listIterator(frVar.size());
        do {
            if (!listIterator.hasPrevious()) {
                navBackStackEntryPrevious = null;
                break;
            }
            navBackStackEntryPrevious = listIterator.previous();
            navBackStackEntry = navBackStackEntryPrevious;
        } while (!navBackStackEntry.getDestination().hasRoute(str, navBackStackEntry.getArguments()));
        NavBackStackEntry navBackStackEntry2 = navBackStackEntryPrevious;
        if (navBackStackEntry2 != null) {
            return navBackStackEntry2;
        }
        h2.c(getCurrentDestination$navigation_runtime_release(), n7.d("No destination with route ", str, " is on the NavController's back stack. The current destination is "));
        return null;
    }

    public final boolean popBackStackInternal$navigation_runtime_release(int i, boolean z, boolean z2) {
        NavDestination destination;
        if (this.backQueue.isEmpty()) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = qn1.j0(this.backQueue).iterator();
        do {
            if (!it.hasNext()) {
                destination = null;
                break;
            }
            destination = ((NavBackStackEntry) it.next()).getDestination();
            Navigator navigator = this._navigatorProvider.getNavigator(destination.getNavigatorName());
            if (z || destination.getId() != i) {
                arrayList.add(navigator);
            }
        } while (destination.getId() != i);
        if (destination == null) {
            String displayName = NavDestination.Companion.getDisplayName(getNavContext(), i);
            Log.Companion.i(TAG, "Ignoring popBackStack to destination " + displayName + " as it was not found on the current back stack");
            return false;
        }
        return executePopOperations$navigation_runtime_release(arrayList, destination, z, z2);
    }

    public final <T> NavBackStackEntry getBackStackEntry$navigation_runtime_release(T t) {
        t.getClass();
        return getBackStackEntry$navigation_runtime_release(generateRouteFilled$navigation_runtime_release(t));
    }

    public final <T> boolean popBackStackInternal$navigation_runtime_release(T t, boolean z, boolean z2) {
        t.getClass();
        return popBackStackInternal$navigation_runtime_release(generateRouteFilled$navigation_runtime_release(t), z, z2);
    }

    public final void popBackStackInternal$navigation_runtime_release(Navigator<? extends NavDestination> navigator, NavBackStackEntry navBackStackEntry, boolean z, nl3<? super NavBackStackEntry, j59> nl3Var) {
        navigator.getClass();
        navBackStackEntry.getClass();
        nl3Var.getClass();
        this.popFromBackStackHandler = nl3Var;
        navigator.popBackStack(navBackStackEntry, z);
        this.popFromBackStackHandler = null;
    }

    private final boolean restoreStateInternal(int i, Bundle bundle, NavOptions navOptions, Navigator.Extras extras) {
        int i2 = 0;
        if (!this.backStackMap.containsKey(Integer.valueOf(i))) {
            return false;
        }
        String str = this.backStackMap.get(Integer.valueOf(i));
        nn1.z(this.backStackMap.values(), new ri5(str, i2));
        return executeRestoreState(instantiateBackStack((fr) v39.b(this.backStackStates).remove(str)), bundle, navOptions, extras);
    }

    public final void setGraph$navigation_runtime_release(NavGraph navGraph) {
        navGraph.getClass();
        setGraph$navigation_runtime_release(navGraph, null);
    }

    public final void navigate$navigation_runtime_release(Uri uri, NavOptions navOptions) {
        uri.getClass();
        navigate$navigation_runtime_release(new NavDeepLinkRequest(uri, null, null), navOptions, (Navigator.Extras) null);
    }

    public final void navigate$navigation_runtime_release(Uri uri, NavOptions navOptions, Navigator.Extras extras) {
        uri.getClass();
        navigate$navigation_runtime_release(new NavDeepLinkRequest(uri, null, null), navOptions, extras);
    }

    public final void navigate$navigation_runtime_release(NavDeepLinkRequest navDeepLinkRequest) {
        navDeepLinkRequest.getClass();
        navigate$navigation_runtime_release(navDeepLinkRequest, (NavOptions) null);
    }

    public final void navigate$navigation_runtime_release(NavDeepLinkRequest navDeepLinkRequest, NavOptions navOptions) {
        navDeepLinkRequest.getClass();
        navigate$navigation_runtime_release(navDeepLinkRequest, navOptions, (Navigator.Extras) null);
    }

    public final void navigate$navigation_runtime_release(NavDeepLinkRequest navDeepLinkRequest, NavOptions navOptions, Navigator.Extras extras) {
        navDeepLinkRequest.getClass();
        if (this._graph != null) {
            NavGraph topGraph$navigation_runtime_release = getTopGraph$navigation_runtime_release();
            NavDestination.DeepLinkMatch deepLinkMatchMatchDeepLinkComprehensive = topGraph$navigation_runtime_release.matchDeepLinkComprehensive(navDeepLinkRequest, true, true, topGraph$navigation_runtime_release);
            if (deepLinkMatchMatchDeepLinkComprehensive != null) {
                Bundle bundleAddInDefaultArgs = deepLinkMatchMatchDeepLinkComprehensive.getDestination().addInDefaultArgs(deepLinkMatchMatchDeepLinkComprehensive.getMatchingArgs());
                if (bundleAddInDefaultArgs == null) {
                    b36[] b36VarArr = new b36[0];
                    bundleAddInDefaultArgs = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
                    SavedStateWriter.m9456constructorimpl(bundleAddInDefaultArgs);
                }
                NavDestination destination = deepLinkMatchMatchDeepLinkComprehensive.getDestination();
                this.navController.writeIntent$navigation_runtime_release(navDeepLinkRequest, bundleAddInDefaultArgs);
                navigate$navigation_runtime_release(destination, bundleAddInDefaultArgs, navOptions, extras);
                return;
            }
            StringBuilder sb = new StringBuilder("Navigation destination that matches request ");
            sb.append(navDeepLinkRequest);
            cg.g(sb, " cannot be found in the navigation graph ", this._graph);
            return;
        }
        StringBuilder sb2 = new StringBuilder("Cannot navigate to ");
        sb2.append(navDeepLinkRequest);
        NavController navController = this.navController;
        sb2.append(". Navigation graph has not been set for NavController ");
        sb2.append(navController);
        sb2.append('.');
        throw new IllegalArgumentException(sb2.toString().toString());
    }

    public final void navigate$navigation_runtime_release(Uri uri) {
        uri.getClass();
        navigate$navigation_runtime_release(new NavDeepLinkRequest(uri, null, null));
    }

    public final void navigate$navigation_runtime_release(String str, nl3<? super NavOptionsBuilder, j59> nl3Var) {
        str.getClass();
        nl3Var.getClass();
        navigate$navigation_runtime_release$default(this, str, NavOptionsBuilderKt.navOptions(nl3Var), (Navigator.Extras) null, 4, (Object) null);
    }

    public final void navigate$navigation_runtime_release(String str, NavOptions navOptions, Navigator.Extras extras) {
        str.getClass();
        if (this._graph != null) {
            NavGraph topGraph$navigation_runtime_release = getTopGraph$navigation_runtime_release();
            NavDestination.DeepLinkMatch deepLinkMatchMatchRouteComprehensive = topGraph$navigation_runtime_release.matchRouteComprehensive(str, true, true, topGraph$navigation_runtime_release);
            if (deepLinkMatchMatchRouteComprehensive != null) {
                NavDestination destination = deepLinkMatchMatchRouteComprehensive.getDestination();
                Bundle bundleAddInDefaultArgs = destination.addInDefaultArgs(deepLinkMatchMatchRouteComprehensive.getMatchingArgs());
                if (bundleAddInDefaultArgs == null) {
                    b36[] b36VarArr = new b36[0];
                    bundleAddInDefaultArgs = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
                    SavedStateWriter.m9456constructorimpl(bundleAddInDefaultArgs);
                }
                NavDestination destination2 = deepLinkMatchMatchRouteComprehensive.getDestination();
                this.navController.writeIntent$navigation_runtime_release(NavDeepLinkRequest.Builder.Companion.fromUri(NavUriKt.NavUri(NavDestination.Companion.createRoute(destination.getRoute()))).build(), bundleAddInDefaultArgs);
                navigate$navigation_runtime_release(destination2, bundleAddInDefaultArgs, navOptions, extras);
                return;
            }
            hm.f(this._graph, n7.d("Navigation destination that matches route ", str, " cannot be found in the navigation graph "));
            return;
        }
        dg.d(46, "Cannot navigate to ", str, ". Navigation graph has not been set for NavController ", this);
    }

    public final <T> void navigate$navigation_runtime_release(T t, nl3<? super NavOptionsBuilder, j59> nl3Var) {
        t.getClass();
        nl3Var.getClass();
        navigate$navigation_runtime_release$default(this, t, NavOptionsBuilderKt.navOptions(nl3Var), (Navigator.Extras) null, 4, (Object) null);
    }

    public final <T> void navigate$navigation_runtime_release(T t, NavOptions navOptions, Navigator.Extras extras) {
        t.getClass();
        navigate$navigation_runtime_release(generateRouteFilled$navigation_runtime_release(t), navOptions, extras);
    }
}
