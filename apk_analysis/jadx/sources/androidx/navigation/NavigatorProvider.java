package androidx.navigation;

import defpackage.aa4;
import defpackage.ah;
import defpackage.c9;
import defpackage.fg;
import defpackage.jh2;
import defpackage.me0;
import defpackage.n05;
import defpackage.wg;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class NavigatorProvider {
    public static final Companion Companion = new Companion(null);
    private static final Map<Class<?>, String> annotationNames = new LinkedHashMap();
    private final Map<String, Navigator<? extends NavDestination>> _navigators = new LinkedHashMap();

    public Navigator<? extends NavDestination> addNavigator(String str, Navigator<? extends NavDestination> navigator) {
        str.getClass();
        navigator.getClass();
        if (!Companion.validateName$navigation_common_release(str)) {
            fg.c("navigator name cannot be an empty string");
            return null;
        }
        Navigator<? extends NavDestination> navigator2 = this._navigators.get(str);
        if (aa4.e(navigator2, navigator)) {
            return navigator;
        }
        boolean z = false;
        if (navigator2 != null && navigator2.isAttached()) {
            z = true;
        }
        if (z) {
            fg.d("Navigator ", navigator, " is replacing an already attached ", navigator2);
            return null;
        }
        if (!navigator.isAttached()) {
            return this._navigators.put(str, navigator);
        }
        wg.c(navigator, "Navigator ", " is already attached to another NavController");
        return null;
    }

    public <T extends Navigator<?>> T getNavigator(String str) {
        str.getClass();
        if (!Companion.validateName$navigation_common_release(str)) {
            fg.c("navigator name cannot be an empty string");
            return null;
        }
        Navigator<? extends NavDestination> navigator = this._navigators.get(str);
        if (navigator != null) {
            return navigator;
        }
        ah.f(me0.c("Could not find Navigator with name \"", str, "\". You must call NavController.addNavigator() for each navigation type."));
        return null;
    }

    public final Map<String, Navigator<? extends NavDestination>> getNavigators() {
        return n05.l(this._navigators);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final String getNameForNavigator$navigation_common_release(Class<? extends Navigator<?>> cls) {
            cls.getClass();
            String strValue = (String) NavigatorProvider.annotationNames.get(cls);
            if (strValue == null) {
                Navigator.Name name = (Navigator.Name) cls.getAnnotation(Navigator.Name.class);
                strValue = name != null ? name.value() : null;
                if (!validateName$navigation_common_release(strValue)) {
                    c9.f("No @Navigator.Name annotation found for ".concat(cls.getSimpleName()));
                    return null;
                }
                NavigatorProvider.annotationNames.put(cls, strValue);
            }
            strValue.getClass();
            return strValue;
        }

        public final boolean validateName$navigation_common_release(String str) {
            return str != null && str.length() > 0;
        }

        private Companion() {
        }
    }

    public final <T extends Navigator<?>> T getNavigator(Class<T> cls) {
        cls.getClass();
        return (T) getNavigator(Companion.getNameForNavigator$navigation_common_release(cls));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Navigator<? extends NavDestination> addNavigator(Navigator<? extends NavDestination> navigator) {
        navigator.getClass();
        return addNavigator(Companion.getNameForNavigator$navigation_common_release(navigator.getClass()), navigator);
    }
}
