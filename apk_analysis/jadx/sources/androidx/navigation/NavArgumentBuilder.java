package androidx.navigation;

import defpackage.ah;

/* JADX INFO: loaded from: classes3.dex */
@NavDestinationDsl
public final class NavArgumentBuilder {
    private NavType<?> _type;
    private final NavArgument.Builder builder = new NavArgument.Builder();
    private Object defaultValue;
    private boolean nullable;
    private boolean unknownDefaultValuePresent;

    public final NavArgument build() {
        return this.builder.build();
    }

    public final Object getDefaultValue() {
        return this.defaultValue;
    }

    public final boolean getNullable() {
        return this.nullable;
    }

    public final NavType<?> getType() {
        NavType<?> navType = this._type;
        if (navType != null) {
            return navType;
        }
        ah.f("NavType has not been set on this builder.");
        return null;
    }

    public final boolean getUnknownDefaultValuePresent$navigation_common_release() {
        return this.unknownDefaultValuePresent;
    }

    public final void setDefaultValue(Object obj) {
        this.defaultValue = obj;
        this.builder.setDefaultValue(obj);
    }

    public final void setNullable(boolean z) {
        this.nullable = z;
        this.builder.setIsNullable(z);
    }

    public final void setType(NavType<?> navType) {
        navType.getClass();
        this._type = navType;
        this.builder.setType(navType);
    }

    public final void setUnknownDefaultValuePresent$navigation_common_release(boolean z) {
        this.unknownDefaultValuePresent = z;
        this.builder.setUnknownDefaultValuePresent$navigation_common_release(z);
    }
}
