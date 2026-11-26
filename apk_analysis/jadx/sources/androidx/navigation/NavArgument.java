package androidx.navigation;

import android.os.Bundle;
import androidx.savedstate.SavedStateReader;
import defpackage.aa4;
import defpackage.h8;
import defpackage.x07;
import defpackage.xp;

/* JADX INFO: loaded from: classes3.dex */
public final class NavArgument {
    private final Object defaultValue;
    private final boolean isDefaultValuePresent;
    private final boolean isDefaultValueUnknown;
    private final boolean isNullable;
    private final NavType<Object> type;

    public static final class Builder {
        private Object defaultValue;
        private boolean defaultValuePresent;
        private boolean isNullable;
        private NavType<Object> type;
        private boolean unknownDefaultValuePresent;

        public final NavArgument build() {
            NavType<Object> navTypeInferFromValueType = this.type;
            if (navTypeInferFromValueType == null) {
                navTypeInferFromValueType = NavType.Companion.inferFromValueType(this.defaultValue);
                navTypeInferFromValueType.getClass();
            }
            return new NavArgument(navTypeInferFromValueType, this.isNullable, this.defaultValue, this.defaultValuePresent, this.unknownDefaultValuePresent);
        }

        public final Builder setDefaultValue(Object obj) {
            this.defaultValue = obj;
            this.defaultValuePresent = true;
            return this;
        }

        public final Builder setIsNullable(boolean z) {
            this.isNullable = z;
            return this;
        }

        public final <T> Builder setType(NavType<T> navType) {
            navType.getClass();
            this.type = navType;
            return this;
        }

        public final Builder setUnknownDefaultValuePresent$navigation_common_release(boolean z) {
            this.unknownDefaultValuePresent = z;
            return this;
        }
    }

    public NavArgument(NavType<Object> navType, boolean z, Object obj, boolean z2, boolean z3) {
        navType.getClass();
        if (!navType.isNullableAllowed() && z) {
            xp.i(navType.getName(), " does not allow nullable values");
            throw null;
        }
        if (!z && z2 && obj == null) {
            h8.f(navType.getName(), "Argument with type ", " has null value but is not nullable.");
            throw null;
        }
        this.type = navType;
        this.isNullable = z;
        this.defaultValue = obj;
        this.isDefaultValuePresent = z2 || z3;
        this.isDefaultValueUnknown = z3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && NavArgument.class == obj.getClass()) {
            NavArgument navArgument = (NavArgument) obj;
            if (this.isNullable != navArgument.isNullable || this.isDefaultValuePresent != navArgument.isDefaultValuePresent || !aa4.e(this.type, navArgument.type)) {
                return false;
            }
            Object obj2 = this.defaultValue;
            Object obj3 = navArgument.defaultValue;
            if (obj2 != null) {
                return aa4.e(obj2, obj3);
            }
            if (obj3 == null) {
                return true;
            }
        }
        return false;
    }

    public final Object getDefaultValue() {
        return this.defaultValue;
    }

    public final NavType<Object> getType() {
        return this.type;
    }

    public int hashCode() {
        int iHashCode = ((((this.type.hashCode() * 31) + (this.isNullable ? 1 : 0)) * 31) + (this.isDefaultValuePresent ? 1 : 0)) * 31;
        Object obj = this.defaultValue;
        return iHashCode + (obj != null ? obj.hashCode() : 0);
    }

    public final boolean isDefaultValuePresent() {
        return this.isDefaultValuePresent;
    }

    public final boolean isDefaultValueUnknown$navigation_common_release() {
        return this.isDefaultValueUnknown;
    }

    public final boolean isNullable() {
        return this.isNullable;
    }

    public final void putDefaultValue(String str, Bundle bundle) {
        Object obj;
        str.getClass();
        bundle.getClass();
        if (!this.isDefaultValuePresent || (obj = this.defaultValue) == null) {
            return;
        }
        this.type.put(bundle, str, obj);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(x07.a(NavArgument.class).f());
        sb.append(" Type: " + this.type);
        sb.append(" Nullable: " + this.isNullable);
        if (this.isDefaultValuePresent) {
            sb.append(" DefaultValue: " + this.defaultValue);
        }
        return sb.toString();
    }

    public final boolean verify(String str, Bundle bundle) {
        str.getClass();
        bundle.getClass();
        if (!this.isNullable) {
            Bundle bundleM9370constructorimpl = SavedStateReader.m9370constructorimpl(bundle);
            if (SavedStateReader.m9371containsimpl(bundleM9370constructorimpl, str) && SavedStateReader.m9449isNullimpl(bundleM9370constructorimpl, str)) {
                return false;
            }
        }
        try {
            this.type.get(bundle, str);
            return true;
        } catch (IllegalStateException unused) {
            return false;
        }
    }
}
