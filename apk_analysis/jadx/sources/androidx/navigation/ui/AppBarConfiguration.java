package androidx.navigation.ui;

import android.view.Menu;
import androidx.customview.widget.Openable;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import defpackage.jh2;
import defpackage.ul2;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class AppBarConfiguration {
    private final OnNavigateUpListener fallbackOnNavigateUpListener;
    private final Openable openableLayout;
    private final Set<Integer> topLevelDestinations;

    public interface OnNavigateUpListener {
        boolean onNavigateUp();
    }

    private AppBarConfiguration(Set<Integer> set, Openable openable, OnNavigateUpListener onNavigateUpListener) {
        this.topLevelDestinations = set;
        this.openableLayout = openable;
        this.fallbackOnNavigateUpListener = onNavigateUpListener;
    }

    @ul2
    public final DrawerLayout getDrawerLayout() {
        Openable openable = this.openableLayout;
        if (openable instanceof DrawerLayout) {
            return (DrawerLayout) openable;
        }
        return null;
    }

    public final OnNavigateUpListener getFallbackOnNavigateUpListener() {
        return this.fallbackOnNavigateUpListener;
    }

    public final Openable getOpenableLayout() {
        return this.openableLayout;
    }

    public final Set<Integer> getTopLevelDestinations() {
        return this.topLevelDestinations;
    }

    public final boolean isTopLevelDestination(NavDestination navDestination) {
        navDestination.getClass();
        for (NavDestination navDestination2 : NavDestination.Companion.getHierarchy(navDestination)) {
            if (this.topLevelDestinations.contains(Integer.valueOf(navDestination2.getId())) && (!(navDestination2 instanceof NavGraph) || navDestination.getId() == NavGraph.Companion.findStartDestination((NavGraph) navDestination2).getId())) {
                return true;
            }
        }
        return false;
    }

    public /* synthetic */ AppBarConfiguration(Set set, Openable openable, OnNavigateUpListener onNavigateUpListener, jh2 jh2Var) {
        this(set, openable, onNavigateUpListener);
    }

    public static final class Builder {
        private OnNavigateUpListener fallbackOnNavigateUpListener;
        private Openable openableLayout;
        private final Set<Integer> topLevelDestinations;

        public Builder(Menu menu) {
            menu.getClass();
            this.topLevelDestinations = new HashSet();
            int size = menu.size();
            for (int i = 0; i < size; i++) {
                this.topLevelDestinations.add(Integer.valueOf(menu.getItem(i).getItemId()));
            }
        }

        public final AppBarConfiguration build() {
            return new AppBarConfiguration(this.topLevelDestinations, this.openableLayout, this.fallbackOnNavigateUpListener, null);
        }

        @ul2
        public final Builder setDrawerLayout(DrawerLayout drawerLayout) {
            this.openableLayout = drawerLayout;
            return this;
        }

        public final Builder setFallbackOnNavigateUpListener(OnNavigateUpListener onNavigateUpListener) {
            this.fallbackOnNavigateUpListener = onNavigateUpListener;
            return this;
        }

        public final Builder setOpenableLayout(Openable openable) {
            this.openableLayout = openable;
            return this;
        }

        public Builder(NavGraph navGraph) {
            navGraph.getClass();
            HashSet hashSet = new HashSet();
            this.topLevelDestinations = hashSet;
            hashSet.add(Integer.valueOf(NavGraph.Companion.findStartDestination(navGraph).getId()));
        }

        public Builder(int... iArr) {
            iArr.getClass();
            this.topLevelDestinations = new HashSet();
            for (int i : iArr) {
                this.topLevelDestinations.add(Integer.valueOf(i));
            }
        }

        public Builder(Set<Integer> set) {
            set.getClass();
            HashSet hashSet = new HashSet();
            this.topLevelDestinations = hashSet;
            hashSet.addAll(set);
        }
    }
}
