package androidx.navigation.ui;

import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.customview.widget.Openable;
import androidx.navigation.ActivityNavigator;
import androidx.navigation.FloatingWindow;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.NavOptions;
import androidx.navigation.internal.NavContext;
import androidx.navigation.ui.NavigationUI;
import androidx.profileinstaller.ProfileVerifier;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.navigation.NavigationBarView;
import com.google.android.material.navigation.NavigationView;
import defpackage.ah;
import defpackage.b9;
import defpackage.n7;
import defpackage.sh1;
import java.lang.ref.WeakReference;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public final class NavigationUI {
    public static final NavigationUI INSTANCE = new NavigationUI();
    private static final String TAG = "NavigationUI";

    private NavigationUI() {
    }

    public static final BottomSheetBehavior<?> findBottomSheetBehavior(View view) {
        view.getClass();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
            if (behavior instanceof BottomSheetBehavior) {
                return (BottomSheetBehavior) behavior;
            }
            return null;
        }
        Object parent = view.getParent();
        if (parent instanceof View) {
            return findBottomSheetBehavior((View) parent);
        }
        return null;
    }

    public static final boolean matchDestination$navigation_ui_release(NavDestination navDestination, int i) {
        navDestination.getClass();
        Iterator<NavDestination> it = NavDestination.Companion.getHierarchy(navDestination).iterator();
        while (it.hasNext()) {
            if (it.next().getId() == i) {
                return true;
            }
        }
        return false;
    }

    public static final boolean navigateUp(NavController navController, AppBarConfiguration appBarConfiguration) {
        navController.getClass();
        appBarConfiguration.getClass();
        Openable openableLayout = appBarConfiguration.getOpenableLayout();
        NavDestination currentDestination = navController.getCurrentDestination();
        if (openableLayout != null && currentDestination != null && appBarConfiguration.isTopLevelDestination(currentDestination)) {
            openableLayout.open();
            return true;
        }
        if (navController.navigateUp()) {
            return true;
        }
        AppBarConfiguration.OnNavigateUpListener fallbackOnNavigateUpListener = appBarConfiguration.getFallbackOnNavigateUpListener();
        if (fallbackOnNavigateUpListener != null) {
            return fallbackOnNavigateUpListener.onNavigateUp();
        }
        return false;
    }

    public static final boolean onNavDestinationSelected(MenuItem menuItem, NavController navController, boolean z) {
        menuItem.getClass();
        navController.getClass();
        if (z) {
            ah.f("Leave the saveState parameter out entirely to use the non-experimental version of this API, which saves the state by default");
            return false;
        }
        NavOptions.Builder launchSingleTop = new NavOptions.Builder().setLaunchSingleTop(true);
        NavDestination currentDestination = navController.getCurrentDestination();
        currentDestination.getClass();
        NavGraph parent = currentDestination.getParent();
        parent.getClass();
        if (parent.findNode(menuItem.getItemId()) instanceof ActivityNavigator.Destination) {
            launchSingleTop.setEnterAnim(R.anim.nav_default_enter_anim).setExitAnim(R.anim.nav_default_exit_anim).setPopEnterAnim(R.anim.nav_default_pop_enter_anim).setPopExitAnim(R.anim.nav_default_pop_exit_anim);
        } else {
            launchSingleTop.setEnterAnim(R.animator.nav_default_enter_anim).setExitAnim(R.animator.nav_default_exit_anim).setPopEnterAnim(R.animator.nav_default_pop_enter_anim).setPopExitAnim(R.animator.nav_default_pop_exit_anim);
        }
        if ((menuItem.getOrder() & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            NavOptions.Builder.setPopUpTo$default(launchSingleTop, NavGraph.Companion.findStartDestination(navController.getGraph()).getId(), false, false, 4, (Object) null);
        }
        try {
            navController.navigate(menuItem.getItemId(), (Bundle) null, launchSingleTop.build());
            NavDestination currentDestination2 = navController.getCurrentDestination();
            return currentDestination2 != null && matchDestination$navigation_ui_release(currentDestination2, menuItem.getItemId());
        } catch (IllegalArgumentException e) {
            StringBuilder sbD = n7.d("Ignoring onNavDestinationSelected for MenuItem ", NavDestination.Companion.getDisplayName(new NavContext(navController.getContext()), menuItem.getItemId()), " as it cannot be found from the current destination ");
            sbD.append(navController.getCurrentDestination());
            Log.i(TAG, sbD.toString(), e);
            return false;
        }
    }

    public static final void setupActionBarWithNavController(AppCompatActivity appCompatActivity, NavController navController, Openable openable) {
        appCompatActivity.getClass();
        navController.getClass();
        setupActionBarWithNavController(appCompatActivity, navController, new AppBarConfiguration.Builder(navController.getGraph()).setOpenableLayout(openable).build());
    }

    public static /* synthetic */ void setupActionBarWithNavController$default(AppCompatActivity appCompatActivity, NavController navController, AppBarConfiguration appBarConfiguration, int i, Object obj) {
        if ((i & 4) != 0) {
            appBarConfiguration = new AppBarConfiguration.Builder(navController.getGraph()).build();
        }
        setupActionBarWithNavController(appCompatActivity, navController, appBarConfiguration);
    }

    public static final void setupWithNavController(final NavigationView navigationView, final NavController navController, final boolean z) {
        navigationView.getClass();
        navController.getClass();
        if (z) {
            ah.f("Leave the saveState parameter out entirely to use the non-experimental version of this API, which saves the state by default");
            return;
        }
        navigationView.setNavigationItemSelectedListener(new NavigationView.OnNavigationItemSelectedListener() { // from class: wl5
            @Override // com.google.android.material.navigation.NavigationView.OnNavigationItemSelectedListener
            public final boolean onNavigationItemSelected(MenuItem menuItem) {
                return NavigationUI.setupWithNavController$lambda$5(navController, z, navigationView, menuItem);
            }
        });
        final WeakReference weakReference = new WeakReference(navigationView);
        navController.addOnDestinationChangedListener(new NavController.OnDestinationChangedListener() { // from class: androidx.navigation.ui.NavigationUI.setupWithNavController.7
            @Override // androidx.navigation.NavController.OnDestinationChangedListener
            public void onDestinationChanged(NavController navController2, NavDestination navDestination, Bundle bundle) {
                navController2.getClass();
                navDestination.getClass();
                NavigationView navigationView2 = weakReference.get();
                if (navigationView2 == null) {
                    navController.removeOnDestinationChangedListener(this);
                    return;
                }
                if (navDestination instanceof FloatingWindow) {
                    return;
                }
                Menu menu = navigationView2.getMenu();
                menu.getClass();
                int size = menu.size();
                for (int i = 0; i < size; i++) {
                    MenuItem item = menu.getItem(i);
                    item.setChecked(NavigationUI.matchDestination$navigation_ui_release(navDestination, item.getItemId()));
                }
            }
        });
    }

    public static /* synthetic */ void setupWithNavController$default(Toolbar toolbar, NavController navController, AppBarConfiguration appBarConfiguration, int i, Object obj) {
        if ((i & 4) != 0) {
            appBarConfiguration = new AppBarConfiguration.Builder(navController.getGraph()).build();
        }
        setupWithNavController(toolbar, navController, appBarConfiguration);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean setupWithNavController$lambda$3(NavController navController, NavigationView navigationView, MenuItem menuItem) {
        menuItem.getClass();
        boolean zOnNavDestinationSelected = onNavDestinationSelected(menuItem, navController);
        if (zOnNavDestinationSelected) {
            ViewParent parent = navigationView.getParent();
            if (parent instanceof Openable) {
                ((Openable) parent).close();
                return zOnNavDestinationSelected;
            }
            BottomSheetBehavior<?> bottomSheetBehaviorFindBottomSheetBehavior = findBottomSheetBehavior(navigationView);
            if (bottomSheetBehaviorFindBottomSheetBehavior != null) {
                bottomSheetBehaviorFindBottomSheetBehavior.setState(5);
            }
        }
        return zOnNavDestinationSelected;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean setupWithNavController$lambda$5(NavController navController, boolean z, NavigationView navigationView, MenuItem menuItem) {
        menuItem.getClass();
        boolean zOnNavDestinationSelected = onNavDestinationSelected(menuItem, navController, z);
        if (zOnNavDestinationSelected) {
            ViewParent parent = navigationView.getParent();
            if (parent instanceof Openable) {
                ((Openable) parent).close();
                return zOnNavDestinationSelected;
            }
            BottomSheetBehavior<?> bottomSheetBehaviorFindBottomSheetBehavior = findBottomSheetBehavior(navigationView);
            if (bottomSheetBehaviorFindBottomSheetBehavior != null) {
                bottomSheetBehaviorFindBottomSheetBehavior.setState(5);
            }
        }
        return zOnNavDestinationSelected;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean setupWithNavController$lambda$6(NavController navController, MenuItem menuItem) {
        menuItem.getClass();
        return onNavDestinationSelected(menuItem, navController);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean setupWithNavController$lambda$8(NavController navController, boolean z, MenuItem menuItem) {
        menuItem.getClass();
        return onNavDestinationSelected(menuItem, navController, z);
    }

    public static /* synthetic */ void setupWithNavController$default(CollapsingToolbarLayout collapsingToolbarLayout, Toolbar toolbar, NavController navController, AppBarConfiguration appBarConfiguration, int i, Object obj) {
        if ((i & 8) != 0) {
            appBarConfiguration = new AppBarConfiguration.Builder(navController.getGraph()).build();
        }
        setupWithNavController(collapsingToolbarLayout, toolbar, navController, appBarConfiguration);
    }

    public static final void setupActionBarWithNavController(AppCompatActivity appCompatActivity, NavController navController) {
        appCompatActivity.getClass();
        navController.getClass();
        setupActionBarWithNavController$default(appCompatActivity, navController, null, 4, null);
    }

    public static final void setupActionBarWithNavController(AppCompatActivity appCompatActivity, NavController navController, AppBarConfiguration appBarConfiguration) {
        appCompatActivity.getClass();
        navController.getClass();
        appBarConfiguration.getClass();
        navController.addOnDestinationChangedListener(new ActionBarOnDestinationChangedListener(appCompatActivity, appBarConfiguration));
    }

    public static final void setupWithNavController(CollapsingToolbarLayout collapsingToolbarLayout, Toolbar toolbar, NavController navController) {
        collapsingToolbarLayout.getClass();
        toolbar.getClass();
        navController.getClass();
        setupWithNavController$default(collapsingToolbarLayout, toolbar, navController, null, 8, null);
    }

    public static final void setupWithNavController(Toolbar toolbar, NavController navController, Openable openable) {
        toolbar.getClass();
        navController.getClass();
        setupWithNavController(toolbar, navController, new AppBarConfiguration.Builder(navController.getGraph()).setOpenableLayout(openable).build());
    }

    public static final void setupWithNavController(Toolbar toolbar, final NavController navController, final AppBarConfiguration appBarConfiguration) {
        toolbar.getClass();
        navController.getClass();
        appBarConfiguration.getClass();
        navController.addOnDestinationChangedListener(new ToolbarOnDestinationChangedListener(toolbar, appBarConfiguration));
        toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: vl5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NavigationUI.navigateUp(navController, appBarConfiguration);
            }
        });
    }

    public static final void setupWithNavController(CollapsingToolbarLayout collapsingToolbarLayout, Toolbar toolbar, NavController navController, Openable openable) {
        collapsingToolbarLayout.getClass();
        toolbar.getClass();
        navController.getClass();
        setupWithNavController(collapsingToolbarLayout, toolbar, navController, new AppBarConfiguration.Builder(navController.getGraph()).setOpenableLayout(openable).build());
    }

    public static final void setupWithNavController(CollapsingToolbarLayout collapsingToolbarLayout, Toolbar toolbar, NavController navController, AppBarConfiguration appBarConfiguration) {
        collapsingToolbarLayout.getClass();
        toolbar.getClass();
        navController.getClass();
        appBarConfiguration.getClass();
        navController.addOnDestinationChangedListener(new CollapsingToolbarOnDestinationChangedListener(collapsingToolbarLayout, toolbar, appBarConfiguration));
        toolbar.setNavigationOnClickListener(new sh1(1, navController, appBarConfiguration));
    }

    public static final boolean navigateUp(NavController navController, Openable openable) {
        navController.getClass();
        return navigateUp(navController, new AppBarConfiguration.Builder(navController.getGraph()).setOpenableLayout(openable).build());
    }

    public static final void setupWithNavController(final NavigationView navigationView, final NavController navController) {
        navigationView.getClass();
        navController.getClass();
        navigationView.setNavigationItemSelectedListener(new NavigationView.OnNavigationItemSelectedListener() { // from class: xl5
            @Override // com.google.android.material.navigation.NavigationView.OnNavigationItemSelectedListener
            public final boolean onNavigationItemSelected(MenuItem menuItem) {
                return NavigationUI.setupWithNavController$lambda$3(navController, navigationView, menuItem);
            }
        });
        final WeakReference weakReference = new WeakReference(navigationView);
        navController.addOnDestinationChangedListener(new NavController.OnDestinationChangedListener() { // from class: androidx.navigation.ui.NavigationUI.setupWithNavController.4
            @Override // androidx.navigation.NavController.OnDestinationChangedListener
            public void onDestinationChanged(NavController navController2, NavDestination navDestination, Bundle bundle) {
                navController2.getClass();
                navDestination.getClass();
                NavigationView navigationView2 = weakReference.get();
                if (navigationView2 == null) {
                    navController.removeOnDestinationChangedListener(this);
                    return;
                }
                if (navDestination instanceof FloatingWindow) {
                    return;
                }
                Menu menu = navigationView2.getMenu();
                menu.getClass();
                int size = menu.size();
                for (int i = 0; i < size; i++) {
                    MenuItem item = menu.getItem(i);
                    item.setChecked(NavigationUI.matchDestination$navigation_ui_release(navDestination, item.getItemId()));
                }
            }
        });
    }

    public static final void setupWithNavController(Toolbar toolbar, NavController navController) {
        toolbar.getClass();
        navController.getClass();
        setupWithNavController$default(toolbar, navController, null, 4, null);
    }

    public static final void setupWithNavController(NavigationBarView navigationBarView, final NavController navController) {
        navigationBarView.getClass();
        navController.getClass();
        navigationBarView.setOnItemSelectedListener(new b9(navController, 4));
        final WeakReference weakReference = new WeakReference(navigationBarView);
        navController.addOnDestinationChangedListener(new NavController.OnDestinationChangedListener() { // from class: androidx.navigation.ui.NavigationUI.setupWithNavController.9
            @Override // androidx.navigation.NavController.OnDestinationChangedListener
            public void onDestinationChanged(NavController navController2, NavDestination navDestination, Bundle bundle) {
                navController2.getClass();
                navDestination.getClass();
                NavigationBarView navigationBarView2 = weakReference.get();
                if (navigationBarView2 == null) {
                    navController.removeOnDestinationChangedListener(this);
                    return;
                }
                if (navDestination instanceof FloatingWindow) {
                    return;
                }
                Menu menu = navigationBarView2.getMenu();
                menu.getClass();
                int size = menu.size();
                for (int i = 0; i < size; i++) {
                    MenuItem item = menu.getItem(i);
                    if (NavigationUI.matchDestination$navigation_ui_release(navDestination, item.getItemId())) {
                        item.setChecked(true);
                    }
                }
            }
        });
    }

    public static final void setupWithNavController(NavigationBarView navigationBarView, final NavController navController, final boolean z) {
        navigationBarView.getClass();
        navController.getClass();
        if (!z) {
            navigationBarView.setOnItemSelectedListener(new NavigationBarView.OnItemSelectedListener() { // from class: ul5
                @Override // com.google.android.material.navigation.NavigationBarView.OnItemSelectedListener
                public final boolean onNavigationItemSelected(MenuItem menuItem) {
                    return NavigationUI.setupWithNavController$lambda$8(navController, z, menuItem);
                }
            });
            final WeakReference weakReference = new WeakReference(navigationBarView);
            navController.addOnDestinationChangedListener(new NavController.OnDestinationChangedListener() { // from class: androidx.navigation.ui.NavigationUI.setupWithNavController.12
                @Override // androidx.navigation.NavController.OnDestinationChangedListener
                public void onDestinationChanged(NavController navController2, NavDestination navDestination, Bundle bundle) {
                    navController2.getClass();
                    navDestination.getClass();
                    NavigationBarView navigationBarView2 = weakReference.get();
                    if (navigationBarView2 == null) {
                        navController.removeOnDestinationChangedListener(this);
                        return;
                    }
                    if (navDestination instanceof FloatingWindow) {
                        return;
                    }
                    Menu menu = navigationBarView2.getMenu();
                    menu.getClass();
                    int size = menu.size();
                    for (int i = 0; i < size; i++) {
                        MenuItem item = menu.getItem(i);
                        if (NavigationUI.matchDestination$navigation_ui_release(navDestination, item.getItemId())) {
                            item.setChecked(true);
                        }
                    }
                }
            });
            return;
        }
        ah.f("Leave the saveState parameter out entirely to use the non-experimental version of this API, which saves the state by default");
    }

    public static final boolean onNavDestinationSelected(MenuItem menuItem, NavController navController) {
        menuItem.getClass();
        navController.getClass();
        NavOptions.Builder restoreState = new NavOptions.Builder().setLaunchSingleTop(true).setRestoreState(true);
        NavDestination currentDestination = navController.getCurrentDestination();
        currentDestination.getClass();
        NavGraph parent = currentDestination.getParent();
        parent.getClass();
        if (parent.findNode(menuItem.getItemId()) instanceof ActivityNavigator.Destination) {
            restoreState.setEnterAnim(R.anim.nav_default_enter_anim).setExitAnim(R.anim.nav_default_exit_anim).setPopEnterAnim(R.anim.nav_default_pop_enter_anim).setPopExitAnim(R.anim.nav_default_pop_exit_anim);
        } else {
            restoreState.setEnterAnim(R.animator.nav_default_enter_anim).setExitAnim(R.animator.nav_default_exit_anim).setPopEnterAnim(R.animator.nav_default_pop_enter_anim).setPopExitAnim(R.animator.nav_default_pop_exit_anim);
        }
        if ((menuItem.getOrder() & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            restoreState.setPopUpTo(NavGraph.Companion.findStartDestination(navController.getGraph()).getId(), false, true);
        }
        try {
            navController.navigate(menuItem.getItemId(), (Bundle) null, restoreState.build());
            NavDestination currentDestination2 = navController.getCurrentDestination();
            return currentDestination2 != null && matchDestination$navigation_ui_release(currentDestination2, menuItem.getItemId());
        } catch (IllegalArgumentException e) {
            StringBuilder sbD = n7.d("Ignoring onNavDestinationSelected for MenuItem ", NavDestination.Companion.getDisplayName(new NavContext(navController.getContext()), menuItem.getItemId()), " as it cannot be found from the current destination ");
            sbD.append(navController.getCurrentDestination());
            Log.i(TAG, sbD.toString(), e);
            return false;
        }
    }
}
