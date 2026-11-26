package androidx.navigation;

import android.content.Context;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayKt;
import androidx.navigation.internal.NavContext;
import androidx.navigation.internal.NavDestinationImpl;
import androidx.navigation.serialization.RouteSerializerKt;
import androidx.savedstate.SavedStateReader;
import defpackage.aa4;
import defpackage.bt3;
import defpackage.cg;
import defpackage.dp7;
import defpackage.fg;
import defpackage.fr;
import defpackage.h8;
import defpackage.iq7;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kn1;
import defpackage.lx1;
import defpackage.mx2;
import defpackage.n05;
import defpackage.n1;
import defpackage.ne4;
import defpackage.qn1;
import defpackage.rg5;
import defpackage.ta8;
import defpackage.x07;
import defpackage.zg;
import defpackage.zo7;
import defpackage.zr6;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public class NavDestination {
    public static final Companion Companion = new Companion(null);
    private static final Map<String, Class<?>> classes = new LinkedHashMap();
    private final SparseArrayCompat<NavAction> actions;
    private final NavDestinationImpl impl;
    private CharSequence label;
    private final String navigatorName;
    private NavGraph parent;

    @Target({ElementType.TYPE, ElementType.ANNOTATION_TYPE})
    @Retention(RetentionPolicy.CLASS)
    public @interface ClassType {
        Class<?> value();
    }

    public static final class DeepLinkMatch implements Comparable<DeepLinkMatch> {
        private final NavDestination destination;
        private final boolean hasMatchingAction;
        private final boolean isExactDeepLink;
        private final Bundle matchingArgs;
        private final int matchingPathSegments;
        private final int mimeTypeMatchLevel;

        public DeepLinkMatch(NavDestination navDestination, Bundle bundle, boolean z, int i, boolean z2, int i2) {
            navDestination.getClass();
            this.destination = navDestination;
            this.matchingArgs = bundle;
            this.isExactDeepLink = z;
            this.matchingPathSegments = i;
            this.hasMatchingAction = z2;
            this.mimeTypeMatchLevel = i2;
        }

        @Override // java.lang.Comparable
        public int compareTo(DeepLinkMatch deepLinkMatch) {
            deepLinkMatch.getClass();
            boolean z = this.isExactDeepLink;
            if (z && !deepLinkMatch.isExactDeepLink) {
                return 1;
            }
            if (!z && deepLinkMatch.isExactDeepLink) {
                return -1;
            }
            int i = this.matchingPathSegments - deepLinkMatch.matchingPathSegments;
            if (i > 0) {
                return 1;
            }
            if (i < 0) {
                return -1;
            }
            Bundle bundle = this.matchingArgs;
            if (bundle != null && deepLinkMatch.matchingArgs == null) {
                return 1;
            }
            if (bundle == null && deepLinkMatch.matchingArgs != null) {
                return -1;
            }
            if (bundle != null) {
                int iM9450sizeimpl = SavedStateReader.m9450sizeimpl(SavedStateReader.m9370constructorimpl(bundle));
                Bundle bundle2 = deepLinkMatch.matchingArgs;
                bundle2.getClass();
                int iM9450sizeimpl2 = iM9450sizeimpl - SavedStateReader.m9450sizeimpl(SavedStateReader.m9370constructorimpl(bundle2));
                if (iM9450sizeimpl2 > 0) {
                    return 1;
                }
                if (iM9450sizeimpl2 < 0) {
                    return -1;
                }
            }
            boolean z2 = this.hasMatchingAction;
            if (z2 && !deepLinkMatch.hasMatchingAction) {
                return 1;
            }
            if (z2 || !deepLinkMatch.hasMatchingAction) {
                return this.mimeTypeMatchLevel - deepLinkMatch.mimeTypeMatchLevel;
            }
            return -1;
        }

        public final NavDestination getDestination() {
            return this.destination;
        }

        public final Bundle getMatchingArgs() {
            return this.matchingArgs;
        }

        public final boolean hasMatchingArgs(Bundle bundle) {
            Bundle bundle2;
            if (bundle == null || (bundle2 = this.matchingArgs) == null) {
                return false;
            }
            Set<String> setKeySet = bundle2.keySet();
            setKeySet.getClass();
            for (String str : setKeySet) {
                Bundle bundleM9370constructorimpl = SavedStateReader.m9370constructorimpl(bundle);
                str.getClass();
                if (!SavedStateReader.m9371containsimpl(bundleM9370constructorimpl, str)) {
                    return false;
                }
                NavArgument navArgument = this.destination.getArguments().get(str);
                NavType<Object> type = navArgument != null ? navArgument.getType() : null;
                Object obj = type != null ? type.get(this.matchingArgs, str) : null;
                Object obj2 = type != null ? type.get(bundle, str) : null;
                if (type != null && !type.valueEquals(obj, obj2)) {
                    return false;
                }
            }
            return true;
        }
    }

    public NavDestination(String str) {
        str.getClass();
        this.navigatorName = str;
        this.impl = new NavDestinationImpl(this);
        this.actions = new SparseArrayCompat<>(0, 1, null);
    }

    public static /* synthetic */ int[] buildDeepLinkIds$default(NavDestination navDestination, NavDestination navDestination2, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: buildDeepLinkIds");
            return null;
        }
        if ((i & 1) != 0) {
            navDestination2 = null;
        }
        return navDestination.buildDeepLinkIds(navDestination2);
    }

    private final List<NavDeepLink> getDeepLinks() {
        return this.impl.getDeepLinks$navigation_common_release();
    }

    private static Object getDeepLinks$delegate(NavDestination navDestination) {
        zr6 zr6Var = new zr6(navDestination.impl, NavDestinationImpl.class, "deepLinks", "getDeepLinks$navigation_common_release()Ljava/util/List;", 0);
        x07.a.getClass();
        return zr6Var;
    }

    public static final zo7<NavDestination> getHierarchy(NavDestination navDestination) {
        return Companion.getHierarchy(navDestination);
    }

    private final String getIdName() {
        return this.impl.getIdName$navigation_common_release();
    }

    private static Object getIdName$delegate(NavDestination navDestination) {
        rg5 rg5Var = new rg5(navDestination.impl, NavDestinationImpl.class, "idName", "getIdName$navigation_common_release()Ljava/lang/String;", 0);
        x07.a.getClass();
        return rg5Var;
    }

    private static Object getRoute$delegate(NavDestination navDestination) {
        rg5 rg5Var = new rg5(navDestination.impl, NavDestinationImpl.class, "route", "getRoute$navigation_common_release()Ljava/lang/String;", 0);
        x07.a.getClass();
        return rg5Var;
    }

    public static final <C> Class<? extends C> parseClassFromName(Context context, String str, Class<? extends C> cls) {
        return Companion.parseClassFromName(context, str, cls);
    }

    public static final <C> Class<? extends C> parseClassFromNameInternal(Context context, String str, Class<? extends C> cls) {
        return Companion.parseClassFromNameInternal(context, str, cls);
    }

    private final void setIdName(String str) {
        this.impl.setIdName$navigation_common_release(str);
    }

    public final void addArgument(String str, NavArgument navArgument) {
        str.getClass();
        navArgument.getClass();
        this.impl.addArgument$navigation_common_release(str, navArgument);
    }

    public final void addDeepLink(String str) {
        str.getClass();
        addDeepLink(new NavDeepLink.Builder().setUriPattern(str).build());
    }

    public final Bundle addInDefaultArgs(Bundle bundle) {
        return this.impl.addInDefaultArgs$navigation_common_release(bundle);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0022  */
    /* JADX WARN: Code duplicated, block: B:14:0x002e  */
    public final int[] buildDeepLinkIds(NavDestination navDestination) {
        fr frVar = new fr();
        while (true) {
            NavGraph navGraph = this.parent;
            if ((navDestination != null ? navDestination.parent : null) != null) {
                NavGraph navGraph2 = navDestination.parent;
                navGraph2.getClass();
                if (navGraph2.findNode(this.getId()) != this) {
                    if (navGraph != null || navGraph.getStartDestinationId() != this.getId()) {
                        frVar.addFirst(this);
                    }
                    if (!aa4.e(navGraph, navDestination) || navGraph == null) {
                        break;
                    }
                    this = navGraph;
                } else {
                    frVar.addFirst(this);
                    break;
                }
            } else {
                if (navGraph != null) {
                    frVar.addFirst(this);
                } else {
                    frVar.addFirst(this);
                }
                if (!aa4.e(navGraph, navDestination)) {
                    break;
                }
                this = navGraph;
            }
        }
        List listT0 = qn1.t0(frVar);
        ArrayList arrayList = new ArrayList(kn1.q(listT0, 10));
        Iterator it = listT0.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((NavDestination) it.next()).getId()));
        }
        return qn1.s0(arrayList);
    }

    public boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this != obj) {
            if (obj != null && (obj instanceof NavDestination)) {
                NavDestination navDestination = (NavDestination) obj;
                boolean zE = aa4.e(getDeepLinks(), navDestination.getDeepLinks());
                if (this.actions.size() != navDestination.actions.size()) {
                    z = false;
                    break;
                }
                Iterator it = ((lx1) dp7.f(SparseArrayKt.keyIterator(this.actions))).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = true;
                        break;
                    }
                    int iIntValue = ((Number) it.next()).intValue();
                    if (!aa4.e(this.actions.get(iIntValue), navDestination.actions.get(iIntValue))) {
                        z = false;
                        break;
                    }
                }
                if (getArguments().size() != navDestination.getArguments().size()) {
                    z2 = false;
                    break;
                }
                Map<String, NavArgument> arguments = getArguments();
                arguments.getClass();
                Iterator it2 = qn1.K(arguments.entrySet()).a.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z2 = true;
                        break;
                    }
                    Map.Entry entry = (Map.Entry) it2.next();
                    if (!navDestination.getArguments().containsKey(entry.getKey()) || !aa4.e(navDestination.getArguments().get(entry.getKey()), entry.getValue())) {
                        z2 = false;
                        break;
                    }
                }
                if (getId() != navDestination.getId() || !aa4.e(getRoute(), navDestination.getRoute()) || !zE || !z || !z2) {
                }
            }
            return false;
        }
        return true;
    }

    public final String fillInLabel(Context context, Bundle bundle) {
        Map mapM9451toMapimpl;
        String strValueOf;
        context.getClass();
        CharSequence charSequence = this.label;
        if (charSequence == null) {
            return null;
        }
        Matcher matcher = Pattern.compile("\\{(.+?)\\}").matcher(charSequence);
        StringBuffer stringBuffer = new StringBuffer();
        if (bundle == null || (mapM9451toMapimpl = SavedStateReader.m9451toMapimpl(SavedStateReader.m9370constructorimpl(bundle))) == null) {
            mapM9451toMapimpl = mx2.b;
        }
        while (matcher.find()) {
            String strGroup = matcher.group(1);
            if (strGroup == null || !mapM9451toMapimpl.containsKey(strGroup)) {
                throw new IllegalArgumentException(("Could not find \"" + strGroup + "\" in " + bundle + " to fill label \"" + ((Object) charSequence) + '\"').toString());
            }
            matcher.appendReplacement(stringBuffer, "");
            NavArgument navArgument = getArguments().get(strGroup);
            NavType<Object> type = navArgument != null ? navArgument.getType() : null;
            NavType<Integer> navType = NavType.ReferenceType;
            if (aa4.e(type, navType)) {
                bundle.getClass();
                Integer num = navType.get(bundle, strGroup);
                num.getClass();
                strValueOf = context.getString(num.intValue());
            } else {
                type.getClass();
                bundle.getClass();
                strValueOf = String.valueOf(type.get(bundle, strGroup));
            }
            strValueOf.getClass();
            stringBuffer.append(strValueOf);
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    public final NavAction getAction(int i) {
        NavAction navAction = this.actions.getIsEmpty() ? null : this.actions.get(i);
        if (navAction != null) {
            return navAction;
        }
        NavGraph navGraph = this.parent;
        if (navGraph != null) {
            return navGraph.getAction(i);
        }
        return null;
    }

    public final Map<String, NavArgument> getArguments() {
        return n05.l(this.impl.getArguments$navigation_common_release());
    }

    public String getDisplayName() {
        String idName = getIdName();
        return idName == null ? String.valueOf(getId()) : idName;
    }

    public final int getId() {
        return this.impl.getId$navigation_common_release();
    }

    public final CharSequence getLabel() {
        return this.label;
    }

    public final String getNavigatorName() {
        return this.navigatorName;
    }

    public final NavGraph getParent() {
        return this.parent;
    }

    public final String getRoute() {
        return this.impl.getRoute$navigation_common_release();
    }

    public boolean hasDeepLink(Uri uri) {
        uri.getClass();
        return hasDeepLink(new NavDeepLinkRequest(uri, null, null));
    }

    public final boolean hasRoute(String str, Bundle bundle) {
        str.getClass();
        return this.impl.hasRoute$navigation_common_release(str, bundle);
    }

    public int hashCode() {
        int id = getId() * 31;
        String route = getRoute();
        int iHashCode = id + (route != null ? route.hashCode() : 0);
        for (NavDeepLink navDeepLink : getDeepLinks()) {
            int i = iHashCode * 31;
            String uriPattern = navDeepLink.getUriPattern();
            int iHashCode2 = (i + (uriPattern != null ? uriPattern.hashCode() : 0)) * 31;
            String action = navDeepLink.getAction();
            int iHashCode3 = (iHashCode2 + (action != null ? action.hashCode() : 0)) * 31;
            String mimeType = navDeepLink.getMimeType();
            iHashCode = iHashCode3 + (mimeType != null ? mimeType.hashCode() : 0);
        }
        Iterator itValueIterator = SparseArrayKt.valueIterator(this.actions);
        while (itValueIterator.hasNext()) {
            NavAction navAction = (NavAction) itValueIterator.next();
            int destinationId = (navAction.getDestinationId() + (iHashCode * 31)) * 31;
            NavOptions navOptions = navAction.getNavOptions();
            int iHashCode4 = destinationId + (navOptions != null ? navOptions.hashCode() : 0);
            Bundle defaultArguments = navAction.getDefaultArguments();
            iHashCode = defaultArguments != null ? SavedStateReader.m9373contentDeepHashCodeimpl(SavedStateReader.m9370constructorimpl(defaultArguments)) + (iHashCode4 * 31) : iHashCode4;
        }
        for (String str : getArguments().keySet()) {
            int iB = zg.b(iHashCode * 31, 31, str);
            NavArgument navArgument = getArguments().get(str);
            iHashCode = iB + (navArgument != null ? navArgument.hashCode() : 0);
        }
        return iHashCode;
    }

    public DeepLinkMatch matchDeepLink(NavDeepLinkRequest navDeepLinkRequest) {
        navDeepLinkRequest.getClass();
        return this.impl.matchDeepLink$navigation_common_release(navDeepLinkRequest);
    }

    public final DeepLinkMatch matchRoute(String str) {
        str.getClass();
        return this.impl.matchRoute$navigation_common_release(str);
    }

    public void onInflate(Context context, AttributeSet attributeSet) {
        context.getClass();
        attributeSet.getClass();
        TypedArray typedArrayObtainAttributes = context.getResources().obtainAttributes(attributeSet, androidx.navigation.common.R.styleable.Navigator);
        typedArrayObtainAttributes.getClass();
        setRoute(typedArrayObtainAttributes.getString(androidx.navigation.common.R.styleable.Navigator_route));
        if (typedArrayObtainAttributes.hasValue(androidx.navigation.common.R.styleable.Navigator_android_id)) {
            setId(typedArrayObtainAttributes.getResourceId(androidx.navigation.common.R.styleable.Navigator_android_id, 0));
            setIdName(Companion.getDisplayName(new NavContext(context), getId()));
        }
        this.label = typedArrayObtainAttributes.getText(androidx.navigation.common.R.styleable.Navigator_android_label);
        j59 j59Var = j59.a;
        typedArrayObtainAttributes.recycle();
    }

    public final void putAction(int i, NavAction navAction) {
        navAction.getClass();
        if (supportsActions()) {
            if (i != 0) {
                this.actions.put(i, navAction);
                return;
            } else {
                fg.c("Cannot have an action with actionId 0");
                return;
            }
        }
        throw new UnsupportedOperationException("Cannot add action " + i + " to " + this + " as it does not support actions, indicating that it is a terminal destination in your navigation graph and will never trigger actions.");
    }

    public final void removeAction(int i) {
        this.actions.remove(i);
    }

    public final void removeArgument(String str) {
        str.getClass();
        this.impl.removeArgument$navigation_common_release(str);
    }

    public final void setId(int i) {
        this.impl.setId$navigation_common_release(i);
    }

    public final void setLabel(CharSequence charSequence) {
        this.label = charSequence;
    }

    public final void setParent(NavGraph navGraph) {
        this.parent = navGraph;
    }

    public final void setRoute(String str) {
        this.impl.setRoute$navigation_common_release(str);
    }

    public boolean supportsActions() {
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(getClass().getSimpleName());
        sb.append("(");
        if (getIdName() == null) {
            sb.append("0x");
            sb.append(Integer.toHexString(getId()));
        } else {
            sb.append(getIdName());
        }
        sb.append(")");
        String route = getRoute();
        if (route != null && !ta8.M(route)) {
            sb.append(" route=");
            sb.append(getRoute());
        }
        if (this.label != null) {
            sb.append(" label=");
            sb.append(this.label);
        }
        return sb.toString();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final NavDestination _get_hierarchy_$lambda$1(NavDestination navDestination) {
            navDestination.getClass();
            return navDestination.getParent();
        }

        public static /* synthetic */ void getHierarchy$annotations(NavDestination navDestination) {
        }

        public final String createRoute(String str) {
            return str != null ? "android-app://androidx.navigation/".concat(str) : "";
        }

        public final String getDisplayName(NavContext navContext, int i) {
            navContext.getClass();
            return i <= 16777215 ? String.valueOf(i) : navContext.getResourceName(i);
        }

        public final zo7<NavDestination> getHierarchy(NavDestination navDestination) {
            navDestination.getClass();
            return dp7.h(new bt3(1), navDestination);
        }

        public final <T> boolean hasRoute(NavDestination navDestination, ne4<T> ne4Var) {
            navDestination.getClass();
            ne4Var.getClass();
            return RouteSerializerKt.generateHashCode(iq7.b(ne4Var)) == navDestination.getId();
        }

        public final <C> Class<? extends C> parseClassFromName(Context context, String str, Class<? extends C> cls) {
            String str2;
            context.getClass();
            str.getClass();
            cls.getClass();
            if (str.charAt(0) == '.') {
                str2 = context.getPackageName() + str;
            } else {
                str2 = str;
            }
            Class<? extends C> cls2 = (Class) NavDestination.classes.get(str2);
            if (cls2 == null) {
                try {
                    cls2 = (Class<? extends C>) Class.forName(str2, true, context.getClassLoader());
                    NavDestination.classes.put(str, cls2);
                } catch (ClassNotFoundException e) {
                    cg.h(e);
                    return null;
                }
            }
            cls2.getClass();
            if (cls.isAssignableFrom(cls2)) {
                return cls2;
            }
            h8.f(" must be a subclass of ", str2, cls);
            return null;
        }

        public final <C> Class<? extends C> parseClassFromNameInternal(Context context, String str, Class<? extends C> cls) {
            context.getClass();
            str.getClass();
            cls.getClass();
            return NavDestination.parseClassFromName(context, str, cls);
        }

        private Companion() {
        }

        public final <T> boolean hasRoute(NavDestination navDestination) {
            navDestination.getClass();
            aa4.i();
            throw null;
        }
    }

    public static final <T> boolean hasRoute(NavDestination navDestination, ne4<T> ne4Var) {
        return Companion.hasRoute(navDestination, ne4Var);
    }

    public boolean hasDeepLink(NavDeepLinkRequest navDeepLinkRequest) {
        navDeepLinkRequest.getClass();
        return matchDeepLink(navDeepLinkRequest) != null;
    }

    public static final String getDisplayName(NavContext navContext, int i) {
        return Companion.getDisplayName(navContext, i);
    }

    public final void addDeepLink(NavDeepLink navDeepLink) {
        navDeepLink.getClass();
        this.impl.addDeepLink$navigation_common_release(navDeepLink);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public NavDestination(Navigator<? extends NavDestination> navigator) {
        this(NavigatorProvider.Companion.getNameForNavigator$navigation_common_release(navigator.getClass()));
        navigator.getClass();
    }

    public final void putAction(int i, int i2) {
        putAction(i, new NavAction(i2, null, null, 6, null));
    }

    public final int[] buildDeepLinkIds() {
        return buildDeepLinkIds$default(this, null, 1, null);
    }
}
