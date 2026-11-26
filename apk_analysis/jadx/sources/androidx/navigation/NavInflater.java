package androidx.navigation;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.os.BundleKt;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateWriter;
import defpackage.ad2;
import defpackage.b36;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ra8;
import java.io.IOException;
import java.util.Arrays;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes3.dex */
public final class NavInflater {
    public static final String APPLICATION_ID_PLACEHOLDER = "${applicationId}";
    private static final String TAG_ACTION = "action";
    private static final String TAG_ARGUMENT = "argument";
    private static final String TAG_DEEP_LINK = "deepLink";
    private static final String TAG_INCLUDE = "include";
    private final Context context;
    private final NavigatorProvider navigatorProvider;
    public static final Companion Companion = new Companion(null);
    private static final ThreadLocal<TypedValue> sTmpValue = new ThreadLocal<>();

    public NavInflater(Context context, NavigatorProvider navigatorProvider) {
        context.getClass();
        navigatorProvider.getClass();
        this.context = context;
        this.navigatorProvider = navigatorProvider;
    }

    private final NavDestination inflate(Resources resources, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, int i) throws XmlPullParserException, IOException {
        int depth;
        NavigatorProvider navigatorProvider = this.navigatorProvider;
        String name = xmlResourceParser.getName();
        name.getClass();
        NavDestination navDestinationCreateDestination = navigatorProvider.getNavigator(name).createDestination();
        navDestinationCreateDestination.onInflate(this.context, attributeSet);
        int depth2 = xmlResourceParser.getDepth() + 1;
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1 || ((depth = xmlResourceParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2) {
                String name2 = xmlResourceParser.getName();
                if (TAG_ARGUMENT.equals(name2)) {
                    this.inflateArgumentForDestination(resources, navDestinationCreateDestination, attributeSet, i);
                } else if (TAG_DEEP_LINK.equals(name2)) {
                    this.inflateDeepLink(resources, navDestinationCreateDestination, attributeSet);
                } else if (TAG_ACTION.equals(name2)) {
                    this.inflateAction(resources, navDestinationCreateDestination, attributeSet, xmlResourceParser, i);
                } else {
                    NavInflater navInflater = this;
                    Resources resources2 = resources;
                    XmlResourceParser xmlResourceParser2 = xmlResourceParser;
                    AttributeSet attributeSet2 = attributeSet;
                    int i2 = i;
                    if (TAG_INCLUDE.equals(name2) && (navDestinationCreateDestination instanceof NavGraph)) {
                        TypedArray typedArrayObtainAttributes = resources2.obtainAttributes(attributeSet2, R.styleable.NavInclude);
                        typedArrayObtainAttributes.getClass();
                        ((NavGraph) navDestinationCreateDestination).addDestination(navInflater.inflate(typedArrayObtainAttributes.getResourceId(R.styleable.NavInclude_graph, 0)));
                        j59 j59Var = j59.a;
                        typedArrayObtainAttributes.recycle();
                    } else if (navDestinationCreateDestination instanceof NavGraph) {
                        ((NavGraph) navDestinationCreateDestination).addDestination(navInflater.inflate(resources2, xmlResourceParser2, attributeSet2, i2));
                    }
                    this = navInflater;
                    resources = resources2;
                    attributeSet = attributeSet2;
                    xmlResourceParser = xmlResourceParser2;
                    i = i2;
                }
            }
        }
        return navDestinationCreateDestination;
    }

    private final void inflateAction(Resources resources, NavDestination navDestination, AttributeSet attributeSet, XmlResourceParser xmlResourceParser, int i) throws XmlPullParserException, IOException {
        int depth;
        Context context = this.context;
        int[] iArr = androidx.navigation.common.R.styleable.NavAction;
        iArr.getClass();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, 0, 0);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(androidx.navigation.common.R.styleable.NavAction_android_id, 0);
        NavAction navAction = new NavAction(typedArrayObtainStyledAttributes.getResourceId(androidx.navigation.common.R.styleable.NavAction_destination, 0), null, null, 6, null);
        NavOptions.Builder builder = new NavOptions.Builder();
        builder.setLaunchSingleTop(typedArrayObtainStyledAttributes.getBoolean(androidx.navigation.common.R.styleable.NavAction_launchSingleTop, false));
        builder.setRestoreState(typedArrayObtainStyledAttributes.getBoolean(androidx.navigation.common.R.styleable.NavAction_restoreState, false));
        builder.setPopUpTo(typedArrayObtainStyledAttributes.getResourceId(androidx.navigation.common.R.styleable.NavAction_popUpTo, -1), typedArrayObtainStyledAttributes.getBoolean(androidx.navigation.common.R.styleable.NavAction_popUpToInclusive, false), typedArrayObtainStyledAttributes.getBoolean(androidx.navigation.common.R.styleable.NavAction_popUpToSaveState, false));
        builder.setEnterAnim(typedArrayObtainStyledAttributes.getResourceId(androidx.navigation.common.R.styleable.NavAction_enterAnim, -1));
        builder.setExitAnim(typedArrayObtainStyledAttributes.getResourceId(androidx.navigation.common.R.styleable.NavAction_exitAnim, -1));
        builder.setPopEnterAnim(typedArrayObtainStyledAttributes.getResourceId(androidx.navigation.common.R.styleable.NavAction_popEnterAnim, -1));
        builder.setPopExitAnim(typedArrayObtainStyledAttributes.getResourceId(androidx.navigation.common.R.styleable.NavAction_popExitAnim, -1));
        navAction.setNavOptions(builder.build());
        b36[] b36VarArr = new b36[0];
        Bundle bundleBundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
        SavedStateWriter.m9456constructorimpl(bundleBundleOf);
        int depth2 = xmlResourceParser.getDepth() + 1;
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1 || ((depth = xmlResourceParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && TAG_ARGUMENT.equals(xmlResourceParser.getName())) {
                inflateArgumentForBundle(resources, bundleBundleOf, attributeSet, i);
            }
        }
        if (!SavedStateReader.m9448isEmptyimpl(SavedStateReader.m9370constructorimpl(bundleBundleOf))) {
            navAction.setDefaultArguments(bundleBundleOf);
        }
        navDestination.putAction(resourceId, navAction);
        typedArrayObtainStyledAttributes.recycle();
    }

    private final NavArgument inflateArgument(TypedArray typedArray, Resources resources, int i) throws XmlPullParserException {
        NavType<Object> navTypeInferFromValue;
        int iValueOf;
        NavType<Object> navTypeFromArgType;
        NavArgument.Builder builder = new NavArgument.Builder();
        builder.setIsNullable(typedArray.getBoolean(androidx.navigation.common.R.styleable.NavArgument_nullable, false));
        ThreadLocal<TypedValue> threadLocal = sTmpValue;
        TypedValue typedValue = threadLocal.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal.set(typedValue);
        }
        TypedValue typedValue2 = typedValue;
        String string = typedArray.getString(androidx.navigation.common.R.styleable.NavArgument_argType);
        Object value = null;
        if (string != null) {
            NavType.Companion companion = NavType.Companion;
            String resourcePackageName = resources.getResourcePackageName(i);
            if (string.startsWith("java")) {
                try {
                    navTypeFromArgType = companion.fromArgType("j$".concat(string.substring(4)), resourcePackageName);
                } catch (RuntimeException e) {
                    if (!(e.getCause() instanceof ClassNotFoundException)) {
                        throw e;
                    }
                    navTypeFromArgType = companion.fromArgType(string, resourcePackageName);
                }
            } else {
                navTypeFromArgType = companion.fromArgType(string, resourcePackageName);
            }
            navTypeInferFromValue = navTypeFromArgType;
        } else {
            navTypeInferFromValue = null;
        }
        if (typedArray.getValue(androidx.navigation.common.R.styleable.NavArgument_android_defaultValue, typedValue2)) {
            NavType<Object> navType = NavType.ReferenceType;
            int i2 = typedValue2.resourceId;
            if (navTypeInferFromValue == navType) {
                if (i2 != 0) {
                    iValueOf = Integer.valueOf(i2);
                } else {
                    if (typedValue2.type != 16 || typedValue2.data != 0) {
                        StringBuilder sb = new StringBuilder("unsupported value '");
                        sb.append((Object) typedValue2.string);
                        String name = navTypeInferFromValue.getName();
                        sb.append("' for ");
                        sb.append(name);
                        sb.append(". Must be a reference to a resource.");
                        throw new XmlPullParserException(sb.toString());
                    }
                    iValueOf = 0;
                }
                value = iValueOf;
            } else if (i2 != 0) {
                if (navTypeInferFromValue != null) {
                    StringBuilder sb2 = new StringBuilder("unsupported value '");
                    sb2.append((Object) typedValue2.string);
                    String name2 = navTypeInferFromValue.getName();
                    String name3 = navType.getName();
                    sb2.append("' for ");
                    sb2.append(name2);
                    sb2.append(". You must use a \"");
                    sb2.append(name3);
                    sb2.append("\" type to reference other resources.");
                    throw new XmlPullParserException(sb2.toString());
                }
                value = Integer.valueOf(i2);
                navTypeInferFromValue = navType;
            } else if (navTypeInferFromValue == NavType.StringType) {
                value = typedArray.getString(androidx.navigation.common.R.styleable.NavArgument_android_defaultValue);
            } else {
                int i3 = typedValue2.type;
                if (i3 == 3) {
                    String string2 = typedValue2.string.toString();
                    if (navTypeInferFromValue == null) {
                        navTypeInferFromValue = NavType.Companion.inferFromValue(string2);
                    }
                    value = navTypeInferFromValue.parseValue(string2);
                } else if (i3 == 4) {
                    navTypeInferFromValue = Companion.checkNavType$navigation_runtime_release(typedValue2, navTypeInferFromValue, NavType.FloatType, string, TypedValues.Custom.S_FLOAT);
                    value = Float.valueOf(typedValue2.getFloat());
                } else if (i3 == 5) {
                    navTypeInferFromValue = Companion.checkNavType$navigation_runtime_release(typedValue2, navTypeInferFromValue, NavType.IntType, string, TypedValues.Custom.S_DIMENSION);
                    value = Integer.valueOf((int) typedValue2.getDimension(resources.getDisplayMetrics()));
                } else if (i3 == 18) {
                    navTypeInferFromValue = Companion.checkNavType$navigation_runtime_release(typedValue2, navTypeInferFromValue, NavType.BoolType, string, TypedValues.Custom.S_BOOLEAN);
                    value = Boolean.valueOf(typedValue2.data != 0);
                } else {
                    if (i3 < 16 || i3 > 31) {
                        throw new XmlPullParserException("unsupported argument type " + typedValue2.type);
                    }
                    NavType<Object> navType2 = NavType.FloatType;
                    if (navTypeInferFromValue == navType2) {
                        navTypeInferFromValue = Companion.checkNavType$navigation_runtime_release(typedValue2, navTypeInferFromValue, navType2, string, TypedValues.Custom.S_FLOAT);
                        value = Float.valueOf(typedValue2.data);
                    } else {
                        navTypeInferFromValue = Companion.checkNavType$navigation_runtime_release(typedValue2, navTypeInferFromValue, NavType.IntType, string, TypedValues.Custom.S_INT);
                        value = Integer.valueOf(typedValue2.data);
                    }
                }
            }
        }
        if (value != null) {
            builder.setDefaultValue(value);
        }
        if (navTypeInferFromValue != null) {
            builder.setType(navTypeInferFromValue);
        }
        return builder.build();
    }

    private final void inflateArgumentForBundle(Resources resources, Bundle bundle, AttributeSet attributeSet, int i) throws XmlPullParserException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, androidx.navigation.common.R.styleable.NavArgument);
        typedArrayObtainAttributes.getClass();
        String string = typedArrayObtainAttributes.getString(androidx.navigation.common.R.styleable.NavArgument_android_name);
        if (string == null) {
            throw new XmlPullParserException("Arguments must have a name");
        }
        NavArgument navArgumentInflateArgument = inflateArgument(typedArrayObtainAttributes, resources, i);
        if (navArgumentInflateArgument.isDefaultValuePresent()) {
            navArgumentInflateArgument.putDefaultValue(string, bundle);
        }
        j59 j59Var = j59.a;
        typedArrayObtainAttributes.recycle();
    }

    private final void inflateArgumentForDestination(Resources resources, NavDestination navDestination, AttributeSet attributeSet, int i) throws XmlPullParserException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, androidx.navigation.common.R.styleable.NavArgument);
        typedArrayObtainAttributes.getClass();
        String string = typedArrayObtainAttributes.getString(androidx.navigation.common.R.styleable.NavArgument_android_name);
        if (string == null) {
            throw new XmlPullParserException("Arguments must have a name");
        }
        navDestination.addArgument(string, inflateArgument(typedArrayObtainAttributes, resources, i));
        j59 j59Var = j59.a;
        typedArrayObtainAttributes.recycle();
    }

    private final void inflateDeepLink(Resources resources, NavDestination navDestination, AttributeSet attributeSet) throws XmlPullParserException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, androidx.navigation.common.R.styleable.NavDeepLink);
        typedArrayObtainAttributes.getClass();
        String string = typedArrayObtainAttributes.getString(androidx.navigation.common.R.styleable.NavDeepLink_uri);
        String string2 = typedArrayObtainAttributes.getString(androidx.navigation.common.R.styleable.NavDeepLink_action);
        String string3 = typedArrayObtainAttributes.getString(androidx.navigation.common.R.styleable.NavDeepLink_mimeType);
        if ((string == null || string.length() == 0) && ((string2 == null || string2.length() == 0) && (string3 == null || string3.length() == 0))) {
            throw new XmlPullParserException("Every <deepLink> must include at least one of app:uri, app:action, or app:mimeType");
        }
        NavDeepLink.Builder builder = new NavDeepLink.Builder();
        if (string != null) {
            String packageName = this.context.getPackageName();
            packageName.getClass();
            builder.setUriPattern(ra8.y(string, APPLICATION_ID_PLACEHOLDER, packageName));
        }
        if (string2 != null && string2.length() != 0) {
            String packageName2 = this.context.getPackageName();
            packageName2.getClass();
            builder.setAction(ra8.y(string2, APPLICATION_ID_PLACEHOLDER, packageName2));
        }
        if (string3 != null) {
            String packageName3 = this.context.getPackageName();
            packageName3.getClass();
            builder.setMimeType(ra8.y(string3, APPLICATION_ID_PLACEHOLDER, packageName3));
        }
        navDestination.addDeepLink(builder.build());
        j59 j59Var = j59.a;
        typedArrayObtainAttributes.recycle();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final NavType<?> checkNavType$navigation_runtime_release(TypedValue typedValue, NavType<?> navType, NavType<?> navType2, String str, String str2) throws XmlPullParserException {
            typedValue.getClass();
            navType2.getClass();
            str2.getClass();
            if (navType == null || navType == navType2) {
                return navType == null ? navType2 : navType;
            }
            StringBuilder sbD = ad2.d("Type is ", str, " but found ", str2, ": ");
            sbD.append(typedValue.data);
            throw new XmlPullParserException(sbD.toString());
        }

        private Companion() {
        }
    }

    public final NavGraph inflate(int i) {
        int next;
        Resources resources = this.context.getResources();
        XmlResourceParser xml = resources.getXml(i);
        xml.getClass();
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
        do {
            try {
                try {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } catch (Exception e) {
                    throw new RuntimeException("Exception inflating " + resources.getResourceName(i) + " line " + xml.getLineNumber(), e);
                }
            } catch (Throwable th) {
                xml.close();
                throw th;
            }
        } while (next != 1);
        if (next == 2) {
            String name = xml.getName();
            attributeSetAsAttributeSet.getClass();
            NavDestination navDestinationInflate = inflate(resources, xml, attributeSetAsAttributeSet, i);
            if (navDestinationInflate instanceof NavGraph) {
                NavGraph navGraph = (NavGraph) navDestinationInflate;
                xml.close();
                return navGraph;
            }
            throw new IllegalArgumentException(("Root element <" + name + "> did not inflate into a NavGraph").toString());
        }
        throw new XmlPullParserException("No start tag found");
    }
}
