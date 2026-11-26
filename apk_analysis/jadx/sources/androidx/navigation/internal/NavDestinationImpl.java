package androidx.navigation.internal;

import android.net.Uri;
import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.navigation.NavArgument;
import androidx.navigation.NavArgumentKt;
import androidx.navigation.NavDeepLink;
import androidx.navigation.NavDeepLinkRequest;
import androidx.navigation.NavDestination;
import androidx.navigation.NavUriKt;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateWriter;
import defpackage.aa4;
import defpackage.b36;
import defpackage.b80;
import defpackage.cl4;
import defpackage.fg;
import defpackage.fh8;
import defpackage.g7;
import defpackage.i2;
import defpackage.mq4;
import defpackage.n7;
import defpackage.rf0;
import defpackage.ta8;
import defpackage.ui5;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class NavDestinationImpl {
    private Map<String, NavArgument> arguments;
    private final List<NavDeepLink> deepLinks;
    private final NavDestination destination;
    private int id;
    private String idName;
    private String route;
    private cl4<NavDeepLink> routeDeepLink;

    public NavDestinationImpl(NavDestination navDestination) {
        navDestination.getClass();
        this.destination = navDestination;
        this.deepLinks = new ArrayList();
        this.arguments = new LinkedHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean _set_route_$lambda$1(NavDeepLink navDeepLink, String str) {
        str.getClass();
        return !navDeepLink.getArgumentsNames$navigation_common_release().contains(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NavDeepLink _set_route_$lambda$3(String str) {
        return new NavDeepLink.Builder().setUriPattern(str).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean addDeepLink$lambda$4(NavDeepLink navDeepLink, String str) {
        str.getClass();
        return !navDeepLink.getArgumentsNames$navigation_common_release().contains(str);
    }

    private final boolean hasRequiredArguments(NavDeepLink navDeepLink, Uri uri, Map<String, NavArgument> map) {
        return NavArgumentKt.missingRequiredArguments(map, new mq4(navDeepLink.getMatchingPathAndQueryArgs$navigation_common_release(uri, map), 1)).isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean hasRequiredArguments$lambda$7(Bundle bundle, String str) {
        str.getClass();
        return !SavedStateReader.m9371containsimpl(SavedStateReader.m9370constructorimpl(bundle), str);
    }

    public final void addArgument$navigation_common_release(String str, NavArgument navArgument) {
        str.getClass();
        navArgument.getClass();
        this.arguments.put(str, navArgument);
    }

    public final void addDeepLink$navigation_common_release(NavDeepLink navDeepLink) {
        navDeepLink.getClass();
        List<String> listMissingRequiredArguments = NavArgumentKt.missingRequiredArguments(this.arguments, new ui5(navDeepLink, 0));
        if (listMissingRequiredArguments.isEmpty()) {
            this.deepLinks.add(navDeepLink);
        } else {
            g7.c("Deep link ", navDeepLink.getUriPattern(), " can't be used to open destination ", this.destination, ".\nFollowing required arguments are missing: ", listMissingRequiredArguments);
        }
    }

    public final Bundle addInDefaultArgs$navigation_common_release(Bundle bundle) {
        if (bundle == null && this.arguments.isEmpty()) {
            return null;
        }
        b36[] b36VarArr = new b36[0];
        Bundle bundleBundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
        SavedStateWriter.m9456constructorimpl(bundleBundleOf);
        for (Map.Entry<String, NavArgument> entry : this.arguments.entrySet()) {
            entry.getValue().putDefaultValue(entry.getKey(), bundleBundleOf);
        }
        if (bundle != null) {
            SavedStateWriter.m9460putAllimpl(SavedStateWriter.m9456constructorimpl(bundleBundleOf), bundle);
            for (Map.Entry<String, NavArgument> entry2 : this.arguments.entrySet()) {
                String key = entry2.getKey();
                NavArgument value = entry2.getValue();
                if (!value.isDefaultValueUnknown$navigation_common_release() && !value.verify(key, bundleBundleOf)) {
                    i2.e(n7.d("Wrong argument type for '", key, "' in argument savedState. "), value.getType().getName(), " expected.");
                    return null;
                }
            }
        }
        return bundleBundleOf;
    }

    public final Map<String, NavArgument> getArguments$navigation_common_release() {
        return this.arguments;
    }

    public final List<NavDeepLink> getDeepLinks$navigation_common_release() {
        return this.deepLinks;
    }

    public final NavDestination getDestination() {
        return this.destination;
    }

    public final int getId$navigation_common_release() {
        return this.id;
    }

    public final String getIdName$navigation_common_release() {
        return this.idName;
    }

    public final String getRoute$navigation_common_release() {
        return this.route;
    }

    public final boolean hasRoute$navigation_common_release(String str, Bundle bundle) {
        str.getClass();
        if (aa4.e(this.route, str)) {
            return true;
        }
        NavDestination.DeepLinkMatch deepLinkMatchMatchRoute$navigation_common_release = matchRoute$navigation_common_release(str);
        if (aa4.e(this.destination, deepLinkMatchMatchRoute$navigation_common_release != null ? deepLinkMatchMatchRoute$navigation_common_release.getDestination() : null)) {
            return deepLinkMatchMatchRoute$navigation_common_release.hasMatchingArgs(bundle);
        }
        return false;
    }

    public final NavDestination.DeepLinkMatch matchDeepLink$navigation_common_release(NavDeepLinkRequest navDeepLinkRequest) {
        navDeepLinkRequest.getClass();
        if (this.deepLinks.isEmpty()) {
            return null;
        }
        NavDestination.DeepLinkMatch deepLinkMatch = null;
        for (NavDeepLink navDeepLink : this.deepLinks) {
            Uri uri = navDeepLinkRequest.getUri();
            if (navDeepLink.matches$navigation_common_release(navDeepLinkRequest)) {
                Bundle matchingArguments = uri != null ? navDeepLink.getMatchingArguments(uri, this.arguments) : null;
                int iCalculateMatchingPathSegments$navigation_common_release = navDeepLink.calculateMatchingPathSegments$navigation_common_release(uri);
                String action = navDeepLinkRequest.getAction();
                boolean z = action != null && action.equals(navDeepLink.getAction());
                String mimeType = navDeepLinkRequest.getMimeType();
                int mimeTypeMatchRating = mimeType != null ? navDeepLink.getMimeTypeMatchRating(mimeType) : -1;
                if (matchingArguments == null) {
                    if (z || mimeTypeMatchRating > -1) {
                        if (hasRequiredArguments(navDeepLink, uri, this.arguments)) {
                        }
                    }
                }
                NavDestination.DeepLinkMatch deepLinkMatch2 = new NavDestination.DeepLinkMatch(this.destination, matchingArguments, navDeepLink.isExactDeepLink(), iCalculateMatchingPathSegments$navigation_common_release, z, mimeTypeMatchRating);
                if (deepLinkMatch == null || deepLinkMatch2.compareTo(deepLinkMatch) > 0) {
                    deepLinkMatch = deepLinkMatch2;
                }
            }
        }
        return deepLinkMatch;
    }

    public final NavDestination.DeepLinkMatch matchRoute$navigation_common_release(String str) {
        NavDeepLink value;
        Uri uriNavUri;
        Bundle matchingArguments;
        str.getClass();
        cl4<NavDeepLink> cl4Var = this.routeDeepLink;
        if (cl4Var == null || (value = cl4Var.getValue()) == null || (matchingArguments = value.getMatchingArguments((uriNavUri = NavUriKt.NavUri(NavDestination.Companion.createRoute(str))), this.arguments)) == null) {
            return null;
        }
        return new NavDestination.DeepLinkMatch(this.destination, matchingArguments, value.isExactDeepLink(), value.calculateMatchingPathSegments$navigation_common_release(uriNavUri), false, -1);
    }

    public final void removeArgument$navigation_common_release(String str) {
        str.getClass();
        this.arguments.remove(str);
    }

    public final void setArguments$navigation_common_release(Map<String, NavArgument> map) {
        map.getClass();
        this.arguments = map;
    }

    public final void setId$navigation_common_release(int i) {
        this.id = i;
        this.idName = null;
    }

    public final void setIdName$navigation_common_release(String str) {
        this.idName = str;
    }

    public final void setRoute$navigation_common_release(String str) {
        if (str == null) {
            setId$navigation_common_release(0);
        } else {
            if (ta8.M(str)) {
                fg.c("Cannot have an empty route");
                return;
            }
            String strCreateRoute = NavDestination.Companion.createRoute(str);
            int i = 2;
            List<String> listMissingRequiredArguments = NavArgumentKt.missingRequiredArguments(this.arguments, new rf0(new NavDeepLink.Builder().setUriPattern(strCreateRoute).build(), i));
            if (!listMissingRequiredArguments.isEmpty()) {
                StringBuilder sbD = n7.d("Cannot set route \"", str, "\" for destination ");
                sbD.append(this.destination);
                sbD.append(". Following required arguments are missing: ");
                sbD.append(listMissingRequiredArguments);
                throw new IllegalArgumentException(sbD.toString().toString());
            }
            this.routeDeepLink = new fh8(new b80(strCreateRoute, i));
            setId$navigation_common_release(strCreateRoute.hashCode());
        }
        this.route = str;
    }
}
