package androidx.navigation;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.core.app.TaskStackBuilder;
import androidx.core.os.BundleKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.navigation.NavController;
import androidx.navigation.internal.NavContext;
import androidx.navigation.internal.NavControllerImpl;
import androidx.navigation.serialization.RouteSerializerKt;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateWriter;
import defpackage.aa4;
import defpackage.ah;
import defpackage.b36;
import defpackage.bf3;
import defpackage.c9;
import defpackage.cl4;
import defpackage.dp7;
import defpackage.e84;
import defpackage.eq;
import defpackage.fg;
import defpackage.fh8;
import defpackage.fr;
import defpackage.hd3;
import defpackage.ii5;
import defpackage.iq7;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ji5;
import defpackage.ki5;
import defpackage.ll3;
import defpackage.lt0;
import defpackage.n1;
import defpackage.n7;
import defpackage.ne4;
import defpackage.nl3;
import defpackage.nn1;
import defpackage.u96;
import defpackage.vy2;
import defpackage.xy2;
import defpackage.y68;
import defpackage.zb5;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class NavController {
    public static final String KEY_DEEP_LINK_ARGS = "android-support-nav:controller:deepLinkArgs";
    public static final String KEY_DEEP_LINK_EXTRAS = "android-support-nav:controller:deepLinkExtras";
    public static final String KEY_DEEP_LINK_HANDLED = "android-support-nav:controller:deepLinkHandled";
    public static final String KEY_DEEP_LINK_IDS = "android-support-nav:controller:deepLinkIds";
    public static final String KEY_DEEP_LINK_INTENT = "android-support-nav:controller:deepLinkIntent";
    private Activity activity;
    private final Context context;
    private boolean deepLinkHandled;
    private boolean enableOnBackPressedCallback;
    private final NavControllerImpl impl;
    private NavInflater inflater;
    private final NavContext navContext;
    private final cl4 navInflater$delegate;
    private final OnBackPressedCallback onBackPressedCallback;
    private OnBackPressedDispatcher onBackPressedDispatcher;
    public static final Companion Companion = new Companion(null);
    private static boolean deepLinkSaveState = true;

    public class NavControllerNavigatorState extends NavigatorState {
        private final Navigator<? extends NavDestination> navigator;
        final /* synthetic */ NavController this$0;

        public NavControllerNavigatorState(NavController navController, Navigator<? extends NavDestination> navigator) {
            navigator.getClass();
            this.this$0 = navController;
            this.navigator = navigator;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 markTransitionComplete$lambda$1(NavControllerNavigatorState navControllerNavigatorState, NavBackStackEntry navBackStackEntry) {
            super.markTransitionComplete(navBackStackEntry);
            return j59.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 pop$lambda$0(NavControllerNavigatorState navControllerNavigatorState, NavBackStackEntry navBackStackEntry, boolean z) {
            super.pop(navBackStackEntry, z);
            return j59.a;
        }

        public final void addInternal(NavBackStackEntry navBackStackEntry) {
            navBackStackEntry.getClass();
            super.push(navBackStackEntry);
        }

        @Override // androidx.navigation.NavigatorState
        public NavBackStackEntry createBackStackEntry(NavDestination navDestination, Bundle bundle) {
            navDestination.getClass();
            return this.this$0.impl.createBackStackEntry$navigation_runtime_release(navDestination, bundle);
        }

        public final Navigator<? extends NavDestination> getNavigator() {
            return this.navigator;
        }

        @Override // androidx.navigation.NavigatorState
        public void markTransitionComplete(NavBackStackEntry navBackStackEntry) {
            navBackStackEntry.getClass();
            this.this$0.impl.markTransitionComplete$navigation_runtime_release(this, navBackStackEntry, new ki5(0, this, navBackStackEntry));
        }

        @Override // androidx.navigation.NavigatorState
        public void pop(final NavBackStackEntry navBackStackEntry, final boolean z) {
            navBackStackEntry.getClass();
            this.this$0.impl.pop$navigation_runtime_release(this, navBackStackEntry, z, new ll3() { // from class: li5
                @Override // defpackage.ll3
                public final Object invoke() {
                    return NavController.NavControllerNavigatorState.pop$lambda$0(this.b, navBackStackEntry, z);
                }
            });
        }

        @Override // androidx.navigation.NavigatorState
        public void popWithTransition(NavBackStackEntry navBackStackEntry, boolean z) {
            navBackStackEntry.getClass();
            super.popWithTransition(navBackStackEntry, z);
        }

        @Override // androidx.navigation.NavigatorState
        public void prepareForTransition(NavBackStackEntry navBackStackEntry) {
            navBackStackEntry.getClass();
            super.prepareForTransition(navBackStackEntry);
            this.this$0.impl.prepareForTransition$navigation_runtime_release(navBackStackEntry);
        }

        @Override // androidx.navigation.NavigatorState
        public void push(NavBackStackEntry navBackStackEntry) {
            navBackStackEntry.getClass();
            this.this$0.impl.push$navigation_runtime_release(this, navBackStackEntry);
        }
    }

    public interface OnDestinationChangedListener {
        void onDestinationChanged(NavController navController, NavDestination navDestination, Bundle bundle);
    }

    public NavController(Context context) {
        context.getClass();
        this.context = context;
        this.impl = new NavControllerImpl(this, new ji5(this, 0));
        this.navContext = new NavContext(context);
        int i = 2;
        for (Object obj : dp7.h(new xy2(i), context)) {
            if (((Context) obj) instanceof Activity) {
                this.activity = (Activity) obj;
                this.onBackPressedCallback = new OnBackPressedCallback() { // from class: androidx.navigation.NavController$onBackPressedCallback$1
                    {
                        super(false);
                    }

                    @Override // androidx.activity.OnBackPressedCallback
                    public void handleOnBackPressed() {
                        this.this$0.popBackStack();
                    }
                };
                this.enableOnBackPressedCallback = true;
                this.impl.get_navigatorProvider$navigation_runtime_release().addNavigator(new NavGraphNavigator(this.impl.get_navigatorProvider$navigation_runtime_release()));
                this.impl.get_navigatorProvider$navigation_runtime_release().addNavigator(new ActivityNavigator(this.context));
                this.navInflater$delegate = new fh8(new e84(this, i));
            }
        }
        obj = null;
        this.activity = (Activity) obj;
        this.onBackPressedCallback = new OnBackPressedCallback() { // from class: androidx.navigation.NavController$onBackPressedCallback$1
            {
                super(false);
            }

            @Override // androidx.activity.OnBackPressedCallback
            public void handleOnBackPressed() {
                this.this$0.popBackStack();
            }
        };
        this.enableOnBackPressedCallback = true;
        this.impl.get_navigatorProvider$navigation_runtime_release().addNavigator(new NavGraphNavigator(this.impl.get_navigatorProvider$navigation_runtime_release()));
        this.impl.get_navigatorProvider$navigation_runtime_release().addNavigator(new ActivityNavigator(this.context));
        this.navInflater$delegate = new fh8(new e84(this, i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Context activity$lambda$1(Context context) {
        context.getClass();
        if (context instanceof ContextWrapper) {
            return ((ContextWrapper) context).getBaseContext();
        }
        return null;
    }

    public static final void enableDeepLinkSaveState(boolean z) {
        Companion.enableDeepLinkSaveState(z);
    }

    public static /* synthetic */ NavDestination findDestination$default(NavController navController, int i, NavDestination navDestination, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: findDestination");
            return null;
        }
        if ((i2 & 2) != 0) {
            navDestination = null;
        }
        return navController.findDestination(i, navDestination);
    }

    public static /* synthetic */ NavDestination findDestinationComprehensive$default(NavController navController, NavDestination navDestination, int i, boolean z, NavDestination navDestination2, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: findDestinationComprehensive");
            return null;
        }
        if ((i2 & 4) != 0) {
            navDestination2 = null;
        }
        return navController.findDestinationComprehensive(navDestination, i, z, navDestination2);
    }

    private final String findInvalidDestinationDisplayNameInDeepLink(int[] iArr) {
        return this.impl.findInvalidDestinationDisplayNameInDeepLink$navigation_runtime_release(iArr);
    }

    private final int getDestinationCountOnBackStack() {
        fr<NavBackStackEntry> backQueue$navigation_runtime_release = this.impl.getBackQueue$navigation_runtime_release();
        int i = 0;
        if (backQueue$navigation_runtime_release != null && backQueue$navigation_runtime_release.isEmpty()) {
            return 0;
        }
        Iterator<NavBackStackEntry> it = backQueue$navigation_runtime_release.iterator();
        while (it.hasNext()) {
            if (!(it.next().getDestination() instanceof NavGraph) && (i = i + 1) < 0) {
                u96.n();
                throw null;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 handleDeepLink$lambda$21(NavDestination navDestination, NavController navController, NavOptionsBuilder navOptionsBuilder) {
        navOptionsBuilder.getClass();
        navOptionsBuilder.anim(new vy2(1));
        if (navDestination instanceof NavGraph) {
            for (NavDestination navDestination2 : NavDestination.Companion.getHierarchy(navDestination)) {
                NavDestination currentDestination = navController.getCurrentDestination();
                if (aa4.e(navDestination2, currentDestination != null ? currentDestination.getParent() : null)) {
                }
            }
            if (deepLinkSaveState) {
                navOptionsBuilder.popUpTo(NavGraph.Companion.findStartDestination(navController.getGraph()).getId(), new ii5(0));
            }
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 handleDeepLink$lambda$21$lambda$18(AnimBuilder animBuilder) {
        animBuilder.getClass();
        animBuilder.setEnter(0);
        animBuilder.setExit(0);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 handleDeepLink$lambda$21$lambda$20(PopUpToBuilder popUpToBuilder) {
        popUpToBuilder.getClass();
        popUpToBuilder.setSaveState(true);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 impl$lambda$0(NavController navController) {
        navController.updateOnBackPressedCallbackEnabled();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NavInflater navInflater_delegate$lambda$10(NavController navController) {
        NavInflater navInflater = navController.inflater;
        return navInflater == null ? new NavInflater(navController.context, navController.impl.get_navigatorProvider$navigation_runtime_release()) : navInflater;
    }

    public static /* synthetic */ void navigate$default(NavController navController, String str, NavOptions navOptions, Navigator.Extras extras, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: navigate");
            return;
        }
        if ((i & 2) != 0) {
            navOptions = null;
        }
        if ((i & 4) != 0) {
            extras = null;
        }
        navController.navigate(str, navOptions, extras);
    }

    public static /* synthetic */ boolean popBackStack$default(NavController navController, String str, boolean z, boolean z2, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: popBackStack");
            return false;
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        return navController.popBackStack(str, z, z2);
    }

    private final boolean popBackStackInternal(int i, boolean z, boolean z2) {
        return this.impl.popBackStackInternal$navigation_runtime_release(i, z, z2);
    }

    public static /* synthetic */ boolean popBackStackInternal$default(NavController navController, int i, boolean z, boolean z2, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: popBackStackInternal");
            return false;
        }
        if ((i2 & 4) != 0) {
            z2 = false;
        }
        return navController.popBackStackInternal(i, z, z2);
    }

    private final boolean tryRelaunchUpToExplicitStack() {
        int i = 0;
        if (this.deepLinkHandled) {
            Activity activity = this.activity;
            activity.getClass();
            Intent intent = activity.getIntent();
            Bundle extras = intent.getExtras();
            extras.getClass();
            int[] intArray = extras.getIntArray(KEY_DEEP_LINK_IDS);
            intArray.getClass();
            ArrayList arrayList = new ArrayList(intArray.length);
            for (int i2 : intArray) {
                arrayList.add(Integer.valueOf(i2));
            }
            ArrayList parcelableArrayList = extras.getParcelableArrayList(KEY_DEEP_LINK_ARGS);
            if (arrayList.size() >= 2) {
                int iIntValue = ((Number) nn1.E(arrayList)).intValue();
                if (parcelableArrayList != null) {
                }
                NavDestination navDestinationFindDestinationComprehensive$default = findDestinationComprehensive$default(this, getGraph(), iIntValue, false, null, 4, null);
                if (navDestinationFindDestinationComprehensive$default instanceof NavGraph) {
                    iIntValue = NavGraph.Companion.findStartDestination((NavGraph) navDestinationFindDestinationComprehensive$default).getId();
                }
                NavDestination currentDestination = getCurrentDestination();
                if (currentDestination != null && iIntValue == currentDestination.getId()) {
                    NavDeepLinkBuilder navDeepLinkBuilderCreateDeepLink = createDeepLink();
                    Bundle bundleBundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(new b36[0], 0));
                    Bundle bundleM9456constructorimpl = SavedStateWriter.m9456constructorimpl(bundleBundleOf);
                    SavedStateWriter.m9480putParcelableimpl(bundleM9456constructorimpl, KEY_DEEP_LINK_INTENT, intent);
                    Bundle bundle = extras.getBundle(KEY_DEEP_LINK_EXTRAS);
                    if (bundle != null) {
                        SavedStateWriter.m9460putAllimpl(bundleM9456constructorimpl, bundle);
                    }
                    navDeepLinkBuilderCreateDeepLink.setArguments(bundleBundleOf);
                    for (Object obj : arrayList) {
                        int i3 = i + 1;
                        Bundle bundle2 = null;
                        if (i < 0) {
                            u96.o();
                            throw null;
                        }
                        int iIntValue2 = ((Number) obj).intValue();
                        if (parcelableArrayList != null) {
                            bundle2 = (Bundle) parcelableArrayList.get(i);
                        }
                        navDeepLinkBuilderCreateDeepLink.addDestination(iIntValue2, bundle2);
                        i = i3;
                    }
                    navDeepLinkBuilderCreateDeepLink.createTaskStackBuilder().startActivities();
                    Activity activity2 = this.activity;
                    if (activity2 != null) {
                        activity2.finish();
                    }
                    return true;
                }
            }
        }
        return false;
    }

    private final boolean tryRelaunchUpToGeneratedStack() {
        Bundle bundleAddInDefaultArgs;
        NavDestination currentDestination = getCurrentDestination();
        currentDestination.getClass();
        int id = currentDestination.getId();
        for (NavGraph parent = currentDestination.getParent(); parent != null; parent = parent.getParent()) {
            if (parent.getStartDestinationId() != id) {
                b36[] b36VarArr = new b36[0];
                Bundle bundleBundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
                Bundle bundleM9456constructorimpl = SavedStateWriter.m9456constructorimpl(bundleBundleOf);
                Activity activity = this.activity;
                if (activity != null) {
                    activity.getClass();
                    if (activity.getIntent() != null) {
                        Activity activity2 = this.activity;
                        activity2.getClass();
                        if (activity2.getIntent().getData() != null) {
                            Activity activity3 = this.activity;
                            activity3.getClass();
                            Intent intent = activity3.getIntent();
                            intent.getClass();
                            SavedStateWriter.m9480putParcelableimpl(bundleM9456constructorimpl, KEY_DEEP_LINK_INTENT, intent);
                            NavGraph topGraph$navigation_runtime_release = this.impl.getTopGraph$navigation_runtime_release();
                            Activity activity4 = this.activity;
                            activity4.getClass();
                            Intent intent2 = activity4.getIntent();
                            intent2.getClass();
                            NavDestination.DeepLinkMatch deepLinkMatchMatchDeepLinkComprehensive = topGraph$navigation_runtime_release.matchDeepLinkComprehensive(NavControllerKt.NavDeepLinkRequest(intent2), true, true, topGraph$navigation_runtime_release);
                            if ((deepLinkMatchMatchDeepLinkComprehensive != null ? deepLinkMatchMatchDeepLinkComprehensive.getMatchingArgs() : null) != null && (bundleAddInDefaultArgs = deepLinkMatchMatchDeepLinkComprehensive.getDestination().addInDefaultArgs(deepLinkMatchMatchDeepLinkComprehensive.getMatchingArgs())) != null) {
                                SavedStateWriter.m9460putAllimpl(bundleM9456constructorimpl, bundleAddInDefaultArgs);
                            }
                        }
                    }
                }
                NavDeepLinkBuilder.setDestination$default(new NavDeepLinkBuilder(this), parent.getId(), (Bundle) null, 2, (Object) null).setArguments(bundleBundleOf).createTaskStackBuilder().startActivities();
                Activity activity5 = this.activity;
                if (activity5 != null) {
                    activity5.finish();
                }
                return true;
            }
            id = parent.getId();
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x000e  */
    private final void updateOnBackPressedCallbackEnabled() {
        boolean z;
        OnBackPressedCallback onBackPressedCallback = this.onBackPressedCallback;
        if (this.enableOnBackPressedCallback) {
            z = getDestinationCountOnBackStack() > 1;
        }
        onBackPressedCallback.setEnabled(z);
    }

    public void addOnDestinationChangedListener(OnDestinationChangedListener onDestinationChangedListener) {
        onDestinationChangedListener.getClass();
        this.impl.addOnDestinationChangedListener$navigation_runtime_release(onDestinationChangedListener);
    }

    public final boolean checkDeepLinkHandled$navigation_runtime_release() {
        Activity activity;
        if (this.deepLinkHandled || (activity = this.activity) == null) {
            return false;
        }
        activity.getClass();
        return handleDeepLink(activity.getIntent());
    }

    public final boolean clearBackStack(String str) {
        str.getClass();
        return this.impl.clearBackStack$navigation_runtime_release(str);
    }

    public NavDeepLinkBuilder createDeepLink() {
        return new NavDeepLinkBuilder(this);
    }

    public final NavControllerNavigatorState createNavControllerNavigatorState$navigation_runtime_release(Navigator<? extends NavDestination> navigator) {
        navigator.getClass();
        return new NavControllerNavigatorState(this, navigator);
    }

    public void enableOnBackPressed(boolean z) {
        this.enableOnBackPressedCallback = z;
        updateOnBackPressedCallbackEnabled();
    }

    public final NavDestination findDestination(String str) {
        str.getClass();
        return this.impl.findDestination$navigation_runtime_release(str);
    }

    public final NavDestination findDestinationComprehensive(NavDestination navDestination, int i, boolean z, NavDestination navDestination2) {
        navDestination.getClass();
        return this.impl.findDestinationComprehensive$navigation_runtime_release(navDestination, i, z, navDestination2);
    }

    public final NavBackStackEntry getBackStackEntry(String str) {
        str.getClass();
        return this.impl.getBackStackEntry$navigation_runtime_release(str);
    }

    public final Context getContext() {
        return this.context;
    }

    public final y68<List<NavBackStackEntry>> getCurrentBackStack() {
        return this.impl.getCurrentBackStack$navigation_runtime_release();
    }

    public NavBackStackEntry getCurrentBackStackEntry() {
        return this.impl.getCurrentBackStackEntry$navigation_runtime_release();
    }

    public final hd3<NavBackStackEntry> getCurrentBackStackEntryFlow() {
        return bf3.a(this.impl.get_currentBackStackEntryFlow$navigation_runtime_release());
    }

    public NavDestination getCurrentDestination() {
        return this.impl.getCurrentDestination$navigation_runtime_release();
    }

    public final boolean getDeepLinkHandled$navigation_runtime_release() {
        return this.deepLinkHandled;
    }

    public NavGraph getGraph() {
        return this.impl.getGraph$navigation_runtime_release();
    }

    public final NavContext getNavContext$navigation_runtime_release() {
        return this.navContext;
    }

    public NavInflater getNavInflater() {
        return (NavInflater) this.navInflater$delegate.getValue();
    }

    public NavigatorProvider getNavigatorProvider() {
        return this.impl.getNavigatorProvider$navigation_runtime_release();
    }

    public NavBackStackEntry getPreviousBackStackEntry() {
        return this.impl.getPreviousBackStackEntry$navigation_runtime_release();
    }

    public ViewModelStoreOwner getViewModelStoreOwner(int i) {
        return this.impl.getViewModelStoreOwner$navigation_runtime_release(i);
    }

    public final y68<List<NavBackStackEntry>> getVisibleEntries() {
        return this.impl.getVisibleEntries$navigation_runtime_release();
    }

    public boolean handleDeepLink(Intent intent) {
        int[] intArray;
        NavGraph topGraph$navigation_runtime_release;
        NavDestination.DeepLinkMatch deepLinkMatchMatchDeepLinkComprehensive;
        Bundle bundle;
        if (intent == null) {
            return false;
        }
        Bundle extras = intent.getExtras();
        ArrayList arrayList = null;
        if (extras != null) {
            try {
                intArray = extras.getIntArray(KEY_DEEP_LINK_IDS);
            } catch (Exception e) {
                Log.e(NavControllerImpl.TAG, "handleDeepLink() could not extract deepLink from " + intent, e);
                intArray = null;
            }
        } else {
            intArray = null;
        }
        ArrayList parcelableArrayList = extras != null ? extras.getParcelableArrayList(KEY_DEEP_LINK_ARGS) : null;
        b36[] b36VarArr = new b36[0];
        Bundle bundleBundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
        SavedStateWriter.m9456constructorimpl(bundleBundleOf);
        Bundle bundle2 = extras != null ? extras.getBundle(KEY_DEEP_LINK_EXTRAS) : null;
        if (bundle2 != null) {
            SavedStateWriter.m9460putAllimpl(SavedStateWriter.m9456constructorimpl(bundleBundleOf), bundle2);
        }
        if ((intArray == null || intArray.length == 0) && (deepLinkMatchMatchDeepLinkComprehensive = (topGraph$navigation_runtime_release = this.impl.getTopGraph$navigation_runtime_release()).matchDeepLinkComprehensive(NavControllerKt.NavDeepLinkRequest(intent), true, true, topGraph$navigation_runtime_release)) != null) {
            NavDestination destination = deepLinkMatchMatchDeepLinkComprehensive.getDestination();
            int[] iArrBuildDeepLinkIds$default = NavDestination.buildDeepLinkIds$default(destination, null, 1, null);
            Bundle bundleAddInDefaultArgs = destination.addInDefaultArgs(deepLinkMatchMatchDeepLinkComprehensive.getMatchingArgs());
            if (bundleAddInDefaultArgs != null) {
                SavedStateWriter.m9460putAllimpl(SavedStateWriter.m9456constructorimpl(bundleBundleOf), bundleAddInDefaultArgs);
            }
            intArray = iArrBuildDeepLinkIds$default;
        } else {
            arrayList = parcelableArrayList;
        }
        if (intArray == null || intArray.length == 0) {
            return false;
        }
        String strFindInvalidDestinationDisplayNameInDeepLink = findInvalidDestinationDisplayNameInDeepLink(intArray);
        if (strFindInvalidDestinationDisplayNameInDeepLink != null) {
            androidx.navigation.internal.Log.Companion.i(NavControllerImpl.TAG, "Could not find destination " + strFindInvalidDestinationDisplayNameInDeepLink + " in the navigation graph, ignoring the deep link from " + intent);
            return false;
        }
        SavedStateWriter.m9480putParcelableimpl(SavedStateWriter.m9456constructorimpl(bundleBundleOf), KEY_DEEP_LINK_INTENT, intent);
        int length = intArray.length;
        Bundle[] bundleArr = new Bundle[length];
        for (int i = 0; i < length; i++) {
            b36[] b36VarArr2 = new b36[0];
            Bundle bundleBundleOf2 = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr2, b36VarArr2.length));
            Bundle bundleM9456constructorimpl = SavedStateWriter.m9456constructorimpl(bundleBundleOf2);
            SavedStateWriter.m9460putAllimpl(bundleM9456constructorimpl, bundleBundleOf);
            if (arrayList != null && (bundle = (Bundle) arrayList.get(i)) != null) {
                SavedStateWriter.m9460putAllimpl(bundleM9456constructorimpl, bundle);
            }
            bundleArr[i] = bundleBundleOf2;
        }
        int flags = intent.getFlags();
        int i2 = 268435456 & flags;
        if (i2 == 0 || (flags & 32768) != 0) {
            return handleDeepLink(intArray, bundleArr, i2 != 0);
        }
        intent.addFlags(32768);
        TaskStackBuilder taskStackBuilderAddNextIntentWithParentStack = TaskStackBuilder.create(this.context).addNextIntentWithParentStack(intent);
        taskStackBuilderAddNextIntentWithParentStack.getClass();
        taskStackBuilderAddNextIntentWithParentStack.startActivities();
        Activity activity = this.activity;
        if (activity != null) {
            activity.finish();
            activity.overridePendingTransition(0, 0);
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0056 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x0058  */
    /* JADX WARN: Code duplicated, block: B:41:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:45:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:49:0x010f  */
    /* JADX WARN: Code duplicated, block: B:51:0x0113  */
    public void navigate(int i, Bundle bundle, NavOptions navOptions, Navigator.Extras extras) {
        int destinationId;
        Bundle bundleBundleOf;
        NavDestination navDestinationFindDestination$default;
        NavDestination.Companion companion;
        String displayName;
        boolean zIsEmpty = this.impl.getBackQueue$navigation_runtime_release().isEmpty();
        NavControllerImpl navControllerImpl = this.impl;
        NavDestination destination = zIsEmpty ? navControllerImpl.get_graph$navigation_runtime_release() : navControllerImpl.getBackQueue$navigation_runtime_release().last().getDestination();
        if (destination == null) {
            throw new IllegalStateException("No current destination found. Ensure a navigation graph has been set for NavController " + this + '.');
        }
        NavAction action = destination.getAction(i);
        if (action != null) {
            if (navOptions == null) {
                navOptions = action.getNavOptions();
            }
            destinationId = action.getDestinationId();
            Bundle defaultArguments = action.getDefaultArguments();
            if (defaultArguments != null) {
                b36[] b36VarArr = new b36[0];
                bundleBundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
                SavedStateWriter.m9460putAllimpl(SavedStateWriter.m9456constructorimpl(bundleBundleOf), defaultArguments);
            }
            if (bundle != null) {
                if (bundleBundleOf == null) {
                    b36[] b36VarArr2 = new b36[0];
                    Bundle bundleBundleOf2 = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr2, b36VarArr2.length));
                    SavedStateWriter.m9456constructorimpl(bundleBundleOf2);
                    bundleBundleOf = bundleBundleOf2;
                }
                SavedStateWriter.m9460putAllimpl(SavedStateWriter.m9456constructorimpl(bundleBundleOf), bundle);
            }
            if (destinationId != 0 && navOptions != null && (navOptions.getPopUpToId() != -1 || navOptions.getPopUpToRoute() != null || navOptions.getPopUpToRouteClass() != null)) {
                if (navOptions.getPopUpToRoute() != null) {
                    String popUpToRoute = navOptions.getPopUpToRoute();
                    popUpToRoute.getClass();
                    popBackStack$default(this, popUpToRoute, navOptions.isPopUpToInclusive(), false, 4, (Object) null);
                    return;
                } else if (navOptions.getPopUpToRouteClass() != null) {
                    ne4<?> popUpToRouteClass = navOptions.getPopUpToRouteClass();
                    popUpToRouteClass.getClass();
                    popBackStack(RouteSerializerKt.generateHashCode(iq7.b(popUpToRouteClass)), navOptions.isPopUpToInclusive());
                    return;
                } else {
                    if (navOptions.getPopUpToId() != -1) {
                        popBackStack(navOptions.getPopUpToId(), navOptions.isPopUpToInclusive());
                        return;
                    }
                    return;
                }
            }
            if (destinationId != 0) {
                fg.c("Destination id == 0 can only be used in conjunction with a valid navOptions.popUpTo");
                return;
            }
            navDestinationFindDestination$default = findDestination$default(this, destinationId, null, 2, null);
            if (navDestinationFindDestination$default == null) {
                navigate(navDestinationFindDestination$default, bundleBundleOf, navOptions, extras);
                return;
            }
            companion = NavDestination.Companion;
            displayName = companion.getDisplayName(this.navContext, destinationId);
            if (action == null) {
                c9.h("Navigation action/destination ", displayName, " cannot be found from the current destination ", destination);
                return;
            }
            StringBuilder sbD = n7.d("Navigation destination ", displayName, " referenced from action ");
            sbD.append(companion.getDisplayName(this.navContext, i));
            sbD.append(" cannot be found from the current destination ");
            sbD.append(destination);
            throw new IllegalArgumentException(sbD.toString().toString());
        }
        destinationId = i;
        bundleBundleOf = null;
        if (bundle != null) {
            if (bundleBundleOf == null) {
                b36[] b36VarArr3 = new b36[0];
                Bundle bundleBundleOf3 = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr3, b36VarArr3.length));
                SavedStateWriter.m9456constructorimpl(bundleBundleOf3);
                bundleBundleOf = bundleBundleOf3;
            }
            SavedStateWriter.m9460putAllimpl(SavedStateWriter.m9456constructorimpl(bundleBundleOf), bundle);
        }
        if (destinationId != 0) {
        }
        if (destinationId != 0) {
            fg.c("Destination id == 0 can only be used in conjunction with a valid navOptions.popUpTo");
            return;
        }
        navDestinationFindDestination$default = findDestination$default(this, destinationId, null, 2, null);
        if (navDestinationFindDestination$default == null) {
            navigate(navDestinationFindDestination$default, bundleBundleOf, navOptions, extras);
            return;
        }
        companion = NavDestination.Companion;
        displayName = companion.getDisplayName(this.navContext, destinationId);
        if (action == null) {
            c9.h("Navigation action/destination ", displayName, " cannot be found from the current destination ", destination);
            return;
        }
        StringBuilder sbD2 = n7.d("Navigation destination ", displayName, " referenced from action ");
        sbD2.append(companion.getDisplayName(this.navContext, i));
        sbD2.append(" cannot be found from the current destination ");
        sbD2.append(destination);
        throw new IllegalArgumentException(sbD2.toString().toString());
    }

    public boolean navigateUp() {
        Intent intent;
        if (getDestinationCountOnBackStack() != 1) {
            return popBackStack();
        }
        Activity activity = this.activity;
        Bundle extras = (activity == null || (intent = activity.getIntent()) == null) ? null : intent.getExtras();
        return (extras != null ? extras.getIntArray(KEY_DEEP_LINK_IDS) : null) != null ? tryRelaunchUpToExplicitStack() : tryRelaunchUpToGeneratedStack();
    }

    public final <T> boolean popBackStack(ne4<T> ne4Var, boolean z) {
        ne4Var.getClass();
        return popBackStack$default(this, (ne4) ne4Var, z, false, 4, (Object) null);
    }

    public void removeOnDestinationChangedListener(OnDestinationChangedListener onDestinationChangedListener) {
        onDestinationChangedListener.getClass();
        this.impl.removeOnDestinationChangedListener$navigation_runtime_release(onDestinationChangedListener);
    }

    public void restoreState(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(this.context.getClassLoader());
        }
        this.impl.restoreState$navigation_runtime_release(bundle);
        if (bundle != null) {
            Boolean boolM9382getBooleanOrNullimpl = SavedStateReader.m9382getBooleanOrNullimpl(SavedStateReader.m9370constructorimpl(bundle), KEY_DEEP_LINK_HANDLED);
            this.deepLinkHandled = boolM9382getBooleanOrNullimpl != null ? boolM9382getBooleanOrNullimpl.booleanValue() : false;
        }
    }

    public Bundle saveState() {
        Bundle bundleSaveState$navigation_runtime_release = this.impl.saveState$navigation_runtime_release();
        if (this.deepLinkHandled) {
            if (bundleSaveState$navigation_runtime_release == null) {
                b36[] b36VarArr = new b36[0];
                bundleSaveState$navigation_runtime_release = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
                SavedStateWriter.m9456constructorimpl(bundleSaveState$navigation_runtime_release);
            }
            SavedStateWriter.m9462putBooleanimpl(SavedStateWriter.m9456constructorimpl(bundleSaveState$navigation_runtime_release), KEY_DEEP_LINK_HANDLED, this.deepLinkHandled);
        }
        return bundleSaveState$navigation_runtime_release;
    }

    public final void setDeepLinkHandled$navigation_runtime_release(boolean z) {
        this.deepLinkHandled = z;
    }

    public void setGraph(int i) {
        this.impl.setGraph$navigation_runtime_release(getNavInflater().inflate(i), null);
    }

    public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
        this.impl.setLifecycleOwner$navigation_runtime_release(lifecycleOwner);
    }

    public void setNavigatorProvider(NavigatorProvider navigatorProvider) {
        navigatorProvider.getClass();
        this.impl.setNavigatorProvider$navigation_runtime_release(navigatorProvider);
    }

    public void setOnBackPressedDispatcher(OnBackPressedDispatcher onBackPressedDispatcher) {
        onBackPressedDispatcher.getClass();
        if (onBackPressedDispatcher != this.onBackPressedDispatcher) {
            LifecycleOwner lifecycleOwner$navigation_runtime_release = this.impl.getLifecycleOwner$navigation_runtime_release();
            if (lifecycleOwner$navigation_runtime_release == null) {
                ah.f("You must call setLifecycleOwner() before calling setOnBackPressedDispatcher()");
                return;
            }
            this.onBackPressedCallback.remove();
            this.onBackPressedDispatcher = onBackPressedDispatcher;
            onBackPressedDispatcher.addCallback(lifecycleOwner$navigation_runtime_release, this.onBackPressedCallback);
            Lifecycle lifecycle = lifecycleOwner$navigation_runtime_release.getLifecycle();
            lifecycle.removeObserver(this.impl.getLifecycleObserver$navigation_runtime_release());
            lifecycle.addObserver(this.impl.getLifecycleObserver$navigation_runtime_release());
        }
    }

    public void setViewModelStore(ViewModelStore viewModelStore) {
        viewModelStore.getClass();
        this.impl.setViewModelStore$navigation_runtime_release(viewModelStore);
    }

    public final void writeIntent$navigation_runtime_release(NavDeepLinkRequest navDeepLinkRequest, Bundle bundle) {
        navDeepLinkRequest.getClass();
        bundle.getClass();
        Intent intent = new Intent();
        intent.setDataAndType(navDeepLinkRequest.getUri(), navDeepLinkRequest.getMimeType());
        intent.setAction(navDeepLinkRequest.getAction());
        SavedStateWriter.m9480putParcelableimpl(SavedStateWriter.m9456constructorimpl(bundle), KEY_DEEP_LINK_INTENT, intent);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public static /* synthetic */ void getKEY_DEEP_LINK_EXTRAS$annotations() {
        }

        public final void enableDeepLinkSaveState(boolean z) {
            NavController.deepLinkSaveState = z;
        }

        private Companion() {
        }
    }

    public final <T> boolean clearBackStack() {
        aa4.i();
        throw null;
    }

    public final NavDestination findDestination(int i, NavDestination navDestination) {
        return this.impl.findDestination$navigation_runtime_release(i, navDestination);
    }

    public NavBackStackEntry getBackStackEntry(int i) {
        return this.impl.getBackStackEntry$navigation_runtime_release(i);
    }

    public final boolean clearBackStack(int i) {
        return this.impl.clearBackStack$navigation_runtime_release(i);
    }

    public final <T> NavBackStackEntry getBackStackEntry() {
        aa4.i();
        throw null;
    }

    public final <T> boolean clearBackStack(ne4<T> ne4Var) {
        ne4Var.getClass();
        return this.impl.clearBackStack$navigation_runtime_release((ne4) ne4Var);
    }

    public final <T> NavBackStackEntry getBackStackEntry(ne4<T> ne4Var) {
        ne4Var.getClass();
        return this.impl.getBackStackEntry$navigation_runtime_release((ne4) ne4Var);
    }

    public final <T> boolean clearBackStack(T t) {
        t.getClass();
        return this.impl.clearBackStack$navigation_runtime_release(t);
    }

    public final <T> NavBackStackEntry getBackStackEntry(T t) {
        t.getClass();
        return this.impl.getBackStackEntry$navigation_runtime_release(t);
    }

    public final <T> boolean popBackStack(T t, boolean z) {
        t.getClass();
        return popBackStack$default(this, (Object) t, z, false, 4, (Object) null);
    }

    public final boolean popBackStack(String str, boolean z) {
        str.getClass();
        return popBackStack$default(this, str, z, false, 4, (Object) null);
    }

    public void setGraph(NavGraph navGraph) {
        navGraph.getClass();
        this.impl.setGraph$navigation_runtime_release(navGraph);
    }

    public boolean popBackStack() {
        return this.impl.popBackStack$navigation_runtime_release();
    }

    public void setGraph(int i, Bundle bundle) {
        this.impl.setGraph$navigation_runtime_release(getNavInflater().inflate(i), bundle);
    }

    public boolean popBackStack(int i, boolean z) {
        return this.impl.popBackStack$navigation_runtime_release(i, z);
    }

    public void setGraph(NavGraph navGraph, Bundle bundle) {
        navGraph.getClass();
        this.impl.setGraph$navigation_runtime_release(navGraph, bundle);
    }

    public final <T> boolean popBackStack(boolean z) {
        aa4.i();
        throw null;
    }

    public static boolean popBackStack$default(NavController navController, boolean z, boolean z2, int i, Object obj) {
        if (obj == null) {
            aa4.i();
            throw null;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: popBackStack");
    }

    public final <T> boolean popBackStack(boolean z, boolean z2) {
        aa4.i();
        throw null;
    }

    public boolean popBackStack(int i, boolean z, boolean z2) {
        return this.impl.popBackStack$navigation_runtime_release(i, z, z2);
    }

    public static /* synthetic */ boolean popBackStack$default(NavController navController, ne4 ne4Var, boolean z, boolean z2, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: popBackStack");
            return false;
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        return navController.popBackStack(ne4Var, z, z2);
    }

    public final boolean popBackStack(String str, boolean z, boolean z2) {
        str.getClass();
        return this.impl.popBackStack$navigation_runtime_release(str, z, z2);
    }

    public static /* synthetic */ boolean popBackStack$default(NavController navController, Object obj, boolean z, boolean z2, int i, Object obj2) {
        if (obj2 != null) {
            n1.e("Super calls with default arguments not supported in this target, function: popBackStack");
            return false;
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        return navController.popBackStack(obj, z, z2);
    }

    public final <T> boolean popBackStack(ne4<T> ne4Var, boolean z, boolean z2) {
        ne4Var.getClass();
        return this.impl.popBackStack$navigation_runtime_release((ne4) ne4Var, z, z2);
    }

    public static /* synthetic */ void navigate$default(NavController navController, Object obj, NavOptions navOptions, Navigator.Extras extras, int i, Object obj2) {
        if (obj2 != null) {
            n1.e("Super calls with default arguments not supported in this target, function: navigate");
            return;
        }
        if ((i & 2) != 0) {
            navOptions = null;
        }
        if ((i & 4) != 0) {
            extras = null;
        }
        navController.navigate(obj, navOptions, extras);
    }

    public final <T> boolean popBackStack(T t, boolean z, boolean z2) {
        t.getClass();
        return this.impl.popBackStack$navigation_runtime_release(t, z, z2);
    }

    public final boolean handleDeepLink(NavDeepLinkRequest navDeepLinkRequest) {
        navDeepLinkRequest.getClass();
        NavGraph topGraph$navigation_runtime_release = this.impl.getTopGraph$navigation_runtime_release();
        NavDestination.DeepLinkMatch deepLinkMatchMatchDeepLinkComprehensive = topGraph$navigation_runtime_release.matchDeepLinkComprehensive(navDeepLinkRequest, true, true, topGraph$navigation_runtime_release);
        if (deepLinkMatchMatchDeepLinkComprehensive == null) {
            return false;
        }
        NavDestination destination = deepLinkMatchMatchDeepLinkComprehensive.getDestination();
        int[] iArrBuildDeepLinkIds$default = NavDestination.buildDeepLinkIds$default(destination, null, 1, null);
        b36[] b36VarArr = new b36[0];
        Bundle bundleBundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
        Bundle bundleM9456constructorimpl = SavedStateWriter.m9456constructorimpl(bundleBundleOf);
        Bundle bundleAddInDefaultArgs = destination.addInDefaultArgs(deepLinkMatchMatchDeepLinkComprehensive.getMatchingArgs());
        if (bundleAddInDefaultArgs != null) {
            SavedStateWriter.m9460putAllimpl(bundleM9456constructorimpl, bundleAddInDefaultArgs);
        }
        int length = iArrBuildDeepLinkIds$default.length;
        Bundle[] bundleArr = new Bundle[length];
        for (int i = 0; i < length; i++) {
            b36[] b36VarArr2 = new b36[0];
            Bundle bundleBundleOf2 = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr2, b36VarArr2.length));
            SavedStateWriter.m9460putAllimpl(SavedStateWriter.m9456constructorimpl(bundleBundleOf2), bundleBundleOf);
            bundleArr[i] = bundleBundleOf2;
        }
        return handleDeepLink(iArrBuildDeepLinkIds$default, bundleArr, true);
    }

    private final boolean handleDeepLink(int[] iArr, Bundle[] bundleArr, boolean z) {
        NavDestination navDestinationFindNode;
        NavGraph navGraph;
        NavControllerImpl navControllerImpl = this.impl;
        int i = 1;
        if (z) {
            if (!navControllerImpl.getBackQueue$navigation_runtime_release().isEmpty()) {
                NavGraph navGraph2 = this.impl.get_graph$navigation_runtime_release();
                navGraph2.getClass();
                popBackStackInternal$default(this, navGraph2.getId(), true, false, 4, null);
            }
            int i2 = 0;
            while (i2 < iArr.length) {
                int i3 = iArr[i2];
                int i4 = i2 + 1;
                Bundle bundle = bundleArr[i2];
                NavDestination navDestinationFindDestination$default = findDestination$default(this, i3, null, 2, null);
                if (navDestinationFindDestination$default != null) {
                    navigate(navDestinationFindDestination$default, bundle, NavOptionsBuilderKt.navOptions(new zb5(i, navDestinationFindDestination$default, this)), (Navigator.Extras) null);
                    i2 = i4;
                } else {
                    eq.e(getCurrentDestination(), n7.d("Deep Linking failed: destination ", NavDestination.Companion.getDisplayName(this.navContext, i3), " cannot be found from the current destination "));
                    return false;
                }
            }
            this.deepLinkHandled = true;
            return true;
        }
        NavGraph navGraph3 = navControllerImpl.get_graph$navigation_runtime_release();
        int length = iArr.length;
        for (int i5 = 0; i5 < length; i5++) {
            int i6 = iArr[i5];
            Bundle bundle2 = bundleArr[i5];
            if (i5 == 0) {
                navDestinationFindNode = this.impl.get_graph$navigation_runtime_release();
            } else {
                navGraph3.getClass();
                navDestinationFindNode = navGraph3.findNode(i6);
            }
            if (navDestinationFindNode != null) {
                if (i5 != iArr.length - 1) {
                    if (navDestinationFindNode instanceof NavGraph) {
                        while (true) {
                            navGraph = (NavGraph) navDestinationFindNode;
                            navGraph.getClass();
                            if (!(navGraph.findNode(navGraph.getStartDestinationId()) instanceof NavGraph)) {
                                break;
                            }
                            navDestinationFindNode = navGraph.findNode(navGraph.getStartDestinationId());
                        }
                        navGraph3 = navGraph;
                    }
                } else {
                    NavOptions.Builder builder = new NavOptions.Builder();
                    NavGraph navGraph4 = this.impl.get_graph$navigation_runtime_release();
                    navGraph4.getClass();
                    navigate(navDestinationFindNode, bundle2, NavOptions.Builder.setPopUpTo$default(builder, navGraph4.getId(), true, false, 4, (Object) null).setEnterAnim(0).setExitAnim(0).build(), (Navigator.Extras) null);
                }
            } else {
                lt0.f("Deep Linking failed: destination ", NavDestination.Companion.getDisplayName(this.navContext, i6), " cannot be found in graph ", navGraph3);
                return false;
            }
        }
        this.deepLinkHandled = true;
        return true;
    }

    public final <T> void navigate(T t, NavOptions navOptions) {
        t.getClass();
        navigate$default(this, t, navOptions, (Navigator.Extras) null, 4, (Object) null);
    }

    public final void navigate(String str) {
        str.getClass();
        navigate$default(this, str, (NavOptions) null, (Navigator.Extras) null, 6, (Object) null);
    }

    public final void navigate(String str, NavOptions navOptions) {
        str.getClass();
        navigate$default(this, str, navOptions, (Navigator.Extras) null, 4, (Object) null);
    }

    public void navigate(int i) {
        navigate(i, (Bundle) null);
    }

    public void navigate(int i, Bundle bundle) {
        navigate(i, bundle, (NavOptions) null);
    }

    public void navigate(int i, Bundle bundle, NavOptions navOptions) {
        navigate(i, bundle, navOptions, (Navigator.Extras) null);
    }

    public final <T> void navigate(T t) {
        t.getClass();
        navigate$default(this, t, (NavOptions) null, (Navigator.Extras) null, 6, (Object) null);
    }

    public void navigate(Uri uri) {
        uri.getClass();
        this.impl.navigate$navigation_runtime_release(new NavDeepLinkRequest(uri, null, null));
    }

    public void navigate(Uri uri, NavOptions navOptions) {
        uri.getClass();
        this.impl.navigate$navigation_runtime_release(new NavDeepLinkRequest(uri, null, null), navOptions);
    }

    public void navigate(Uri uri, NavOptions navOptions, Navigator.Extras extras) {
        uri.getClass();
        this.impl.navigate$navigation_runtime_release(new NavDeepLinkRequest(uri, null, null), navOptions, extras);
    }

    public void navigate(NavDeepLinkRequest navDeepLinkRequest) {
        navDeepLinkRequest.getClass();
        this.impl.navigate$navigation_runtime_release(navDeepLinkRequest);
    }

    public void navigate(NavDeepLinkRequest navDeepLinkRequest, NavOptions navOptions) {
        navDeepLinkRequest.getClass();
        this.impl.navigate$navigation_runtime_release(navDeepLinkRequest, navOptions);
    }

    public void navigate(NavDeepLinkRequest navDeepLinkRequest, NavOptions navOptions, Navigator.Extras extras) {
        navDeepLinkRequest.getClass();
        this.impl.navigate$navigation_runtime_release(navDeepLinkRequest, navOptions, extras);
    }

    private final void navigate(NavDestination navDestination, Bundle bundle, NavOptions navOptions, Navigator.Extras extras) {
        this.impl.navigate$navigation_runtime_release(navDestination, bundle, navOptions, extras);
    }

    public void navigate(NavDirections navDirections) {
        navDirections.getClass();
        navigate(navDirections.getActionId(), navDirections.getArguments(), (NavOptions) null);
    }

    public void navigate(NavDirections navDirections, NavOptions navOptions) {
        navDirections.getClass();
        navigate(navDirections.getActionId(), navDirections.getArguments(), navOptions);
    }

    public void navigate(NavDirections navDirections, Navigator.Extras extras) {
        navDirections.getClass();
        extras.getClass();
        navigate(navDirections.getActionId(), navDirections.getArguments(), (NavOptions) null, extras);
    }

    public final void navigate(String str, nl3<? super NavOptionsBuilder, j59> nl3Var) {
        str.getClass();
        nl3Var.getClass();
        this.impl.navigate$navigation_runtime_release(str, nl3Var);
    }

    public final void navigate(String str, NavOptions navOptions, Navigator.Extras extras) {
        str.getClass();
        this.impl.navigate$navigation_runtime_release(str, navOptions, extras);
    }

    public final <T> void navigate(T t, nl3<? super NavOptionsBuilder, j59> nl3Var) {
        t.getClass();
        nl3Var.getClass();
        this.impl.navigate$navigation_runtime_release(t, nl3Var);
    }

    public final <T> void navigate(T t, NavOptions navOptions, Navigator.Extras extras) {
        t.getClass();
        this.impl.navigate$navigation_runtime_release(t, navOptions, extras);
    }
}
