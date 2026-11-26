package androidx.navigation;

import androidx.navigation.serialization.RouteSerializerKt;
import defpackage.ah;
import defpackage.ef4;
import defpackage.fg;
import defpackage.iq7;
import defpackage.mx2;
import defpackage.ne4;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
@NavDeepLinkDsl
public final class NavDeepLinkDslBuilder {
    private String action;
    private final NavDeepLink.Builder builder;
    private String mimeType;
    private ne4<?> route;
    private Map<ef4, ? extends NavType<?>> typeMap;
    private String uriPattern;

    public NavDeepLinkDslBuilder(String str, ne4<?> ne4Var, Map<ef4, NavType<?>> map) {
        str.getClass();
        ne4Var.getClass();
        map.getClass();
        this.builder = new NavDeepLink.Builder();
        this.typeMap = mx2.b;
        if (str.length() <= 0) {
            fg.c("The basePath for NavDeepLink from KClass cannot be empty");
            throw null;
        }
        this.uriPattern = RouteSerializerKt.generateRoutePattern(iq7.b(ne4Var), map, str);
        this.route = ne4Var;
        this.typeMap = map;
    }

    public final NavDeepLink build$navigation_common_release() {
        NavDeepLink.Builder builder = this.builder;
        String str = this.uriPattern;
        if (str == null && this.action == null && this.mimeType == null) {
            ah.f("The NavDeepLink must have an uri, action, and/or mimeType.");
            return null;
        }
        if (str != null) {
            builder.setUriPattern(str);
        }
        String str2 = this.action;
        if (str2 != null) {
            builder.setAction(str2);
        }
        String str3 = this.mimeType;
        if (str3 != null) {
            builder.setMimeType(str3);
        }
        return builder.build();
    }

    public final String getAction() {
        return this.action;
    }

    public final String getMimeType() {
        return this.mimeType;
    }

    public final String getUriPattern() {
        return this.uriPattern;
    }

    public final void setAction(String str) {
        if (str == null || str.length() != 0) {
            this.action = str;
        } else {
            fg.c("The NavDeepLink cannot have an empty action.");
        }
    }

    public final void setMimeType(String str) {
        this.mimeType = str;
    }

    public final void setUriPattern(String str) {
        this.uriPattern = str;
    }

    public NavDeepLinkDslBuilder() {
        this.builder = new NavDeepLink.Builder();
        this.typeMap = mx2.b;
    }
}
