package androidx.navigation;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateWriter;
import defpackage.b36;
import defpackage.dg;
import defpackage.fg;
import defpackage.jh2;
import defpackage.me0;
import defpackage.r07;
import defpackage.u96;
import defpackage.vh;
import defpackage.xs;
import defpackage.y68;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@Navigator.Name("navigation")
public class NavGraphNavigator extends Navigator<NavGraph> {
    public static final Companion Companion = new Companion(null);
    public static final String NAME = "navigation";
    private final NavigatorProvider navigatorProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraphNavigator(NavigatorProvider navigatorProvider) {
        super("navigation");
        navigatorProvider.getClass();
        this.navigatorProvider = navigatorProvider;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v9, types: [T, android.os.Bundle] */
    /* JADX WARN: Type inference failed for: r6v1, types: [T, android.os.Bundle] */
    private final void navigate(NavBackStackEntry navBackStackEntry, NavOptions navOptions, Navigator.Extras extras) {
        NavDestination destination = navBackStackEntry.getDestination();
        destination.getClass();
        NavGraph navGraph = (NavGraph) destination;
        r07 r07Var = new r07();
        r07Var.b = navBackStackEntry.getArguments();
        int startDestinationId = navGraph.getStartDestinationId();
        String startDestinationRoute = navGraph.getStartDestinationRoute();
        if (startDestinationId == 0 && startDestinationRoute == null) {
            vh.e(navGraph.getDisplayName(), "no start destination defined via app:startDestination for ");
            return;
        }
        NavDestination navDestinationFindNode = startDestinationRoute != null ? navGraph.findNode(startDestinationRoute, false) : navGraph.getNodes().get(startDestinationId);
        if (navDestinationFindNode == null) {
            fg.c(me0.c("navigation destination ", navGraph.getStartDestDisplayName(), " is not a direct child of this NavGraph"));
            return;
        }
        if (startDestinationRoute != null) {
            if (!startDestinationRoute.equals(navDestinationFindNode.getRoute())) {
                NavDestination.DeepLinkMatch deepLinkMatchMatchRoute = navDestinationFindNode.matchRoute(startDestinationRoute);
                Bundle matchingArgs = deepLinkMatchMatchRoute != null ? deepLinkMatchMatchRoute.getMatchingArgs() : null;
                if (matchingArgs != null && !SavedStateReader.m9448isEmptyimpl(SavedStateReader.m9370constructorimpl(matchingArgs))) {
                    ?? BundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(new b36[0], 0));
                    Bundle bundleM9456constructorimpl = SavedStateWriter.m9456constructorimpl(BundleOf);
                    SavedStateWriter.m9460putAllimpl(bundleM9456constructorimpl, matchingArgs);
                    Bundle bundle = (Bundle) r07Var.b;
                    if (bundle != null) {
                        SavedStateWriter.m9460putAllimpl(bundleM9456constructorimpl, bundle);
                    }
                    r07Var.b = BundleOf;
                }
            }
            if (!navDestinationFindNode.getArguments().isEmpty()) {
                List<String> listMissingRequiredArguments = NavArgumentKt.missingRequiredArguments(navDestinationFindNode.getArguments(), new xs(r07Var, 4));
                if (!listMissingRequiredArguments.isEmpty()) {
                    dg.d(93, "Cannot navigate to startDestination ", navDestinationFindNode, ". Missing required arguments [", listMissingRequiredArguments);
                    return;
                }
            }
        }
        this.navigatorProvider.getNavigator(navDestinationFindNode.getNavigatorName()).navigate(u96.h(getState().createBackStackEntry(navDestinationFindNode, navDestinationFindNode.addInDefaultArgs((Bundle) r07Var.b))), navOptions, extras);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final boolean navigate$lambda$6(r07 r07Var, String str) {
        str.getClass();
        T t = r07Var.b;
        return t == 0 || !SavedStateReader.m9371containsimpl(SavedStateReader.m9370constructorimpl((Bundle) t), str);
    }

    @Override // androidx.navigation.Navigator
    public NavGraph createDestination() {
        return new NavGraph(this);
    }

    public final y68<List<NavBackStackEntry>> getBackStack() {
        return getState().getBackStack();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    @Override // androidx.navigation.Navigator
    public void navigate(List<NavBackStackEntry> list, NavOptions navOptions, Navigator.Extras extras) {
        list.getClass();
        Iterator<NavBackStackEntry> it = list.iterator();
        while (it.hasNext()) {
            navigate(it.next(), navOptions, extras);
        }
    }
}
