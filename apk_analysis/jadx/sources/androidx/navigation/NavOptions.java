package androidx.navigation;

import androidx.navigation.serialization.RouteSerializerKt;
import defpackage.aa4;
import defpackage.iq7;
import defpackage.ne4;
import defpackage.ul2;
import defpackage.x07;

/* JADX INFO: loaded from: classes3.dex */
public final class NavOptions {
    private final int enterAnim;
    private final int exitAnim;
    private final int popEnterAnim;
    private final int popExitAnim;
    private final int popUpToId;
    private final boolean popUpToInclusive;
    private String popUpToRoute;
    private ne4<?> popUpToRouteClass;
    private Object popUpToRouteObject;
    private final boolean popUpToSaveState;
    private final boolean restoreState;
    private final boolean singleTop;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavOptions(boolean z, boolean z2, Object obj, boolean z3, boolean z4, int i, int i2, int i3, int i4) {
        this(z, z2, RouteSerializerKt.generateHashCode(iq7.b(x07.a(obj.getClass()))), z3, z4, i, i2, i3, i4);
        obj.getClass();
        this.popUpToRouteObject = obj;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof NavOptions)) {
            NavOptions navOptions = (NavOptions) obj;
            if (this.singleTop == navOptions.singleTop && this.restoreState == navOptions.restoreState && this.popUpToId == navOptions.popUpToId && aa4.e(this.popUpToRoute, navOptions.popUpToRoute) && aa4.e(this.popUpToRouteClass, navOptions.popUpToRouteClass) && aa4.e(this.popUpToRouteObject, navOptions.popUpToRouteObject) && this.popUpToInclusive == navOptions.popUpToInclusive && this.popUpToSaveState == navOptions.popUpToSaveState && this.enterAnim == navOptions.enterAnim && this.exitAnim == navOptions.exitAnim && this.popEnterAnim == navOptions.popEnterAnim && this.popExitAnim == navOptions.popExitAnim) {
                return true;
            }
        }
        return false;
    }

    public final int getEnterAnim() {
        return this.enterAnim;
    }

    public final int getExitAnim() {
        return this.exitAnim;
    }

    public final int getPopEnterAnim() {
        return this.popEnterAnim;
    }

    public final int getPopExitAnim() {
        return this.popExitAnim;
    }

    @ul2
    public final int getPopUpTo() {
        return this.popUpToId;
    }

    public final int getPopUpToId() {
        return this.popUpToId;
    }

    public final String getPopUpToRoute() {
        return this.popUpToRoute;
    }

    public final ne4<?> getPopUpToRouteClass() {
        return this.popUpToRouteClass;
    }

    public final Object getPopUpToRouteObject() {
        return this.popUpToRouteObject;
    }

    public int hashCode() {
        int i = ((((shouldRestoreState() ? 1 : 0) + ((shouldLaunchSingleTop() ? 1 : 0) * 31)) * 31) + this.popUpToId) * 31;
        String str = this.popUpToRoute;
        int iHashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        ne4<?> ne4Var = this.popUpToRouteClass;
        int iHashCode2 = (iHashCode + (ne4Var != null ? ne4Var.hashCode() : 0)) * 31;
        Object obj = this.popUpToRouteObject;
        return (((((((((shouldPopUpToSaveState() ? 1 : 0) + (((isPopUpToInclusive() ? 1 : 0) + ((iHashCode2 + (obj != null ? obj.hashCode() : 0)) * 31)) * 31)) * 31) + this.enterAnim) * 31) + this.exitAnim) * 31) + this.popEnterAnim) * 31) + this.popExitAnim;
    }

    public final boolean isPopUpToInclusive() {
        return this.popUpToInclusive;
    }

    public final boolean shouldLaunchSingleTop() {
        return this.singleTop;
    }

    public final boolean shouldPopUpToSaveState() {
        return this.popUpToSaveState;
    }

    public final boolean shouldRestoreState() {
        return this.restoreState;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NavOptions(");
        if (this.singleTop) {
            sb.append("launchSingleTop ");
        }
        if (this.restoreState) {
            sb.append("restoreState ");
        }
        String str = this.popUpToRoute;
        if ((str != null || this.popUpToId != -1) && str != null) {
            sb.append("popUpTo(");
            String str2 = this.popUpToRoute;
            if (str2 != null) {
                sb.append(str2);
            } else {
                ne4<?> ne4Var = this.popUpToRouteClass;
                if (ne4Var != null) {
                    sb.append(ne4Var);
                } else {
                    Object obj = this.popUpToRouteObject;
                    if (obj != null) {
                        sb.append(obj);
                    } else {
                        sb.append("0x");
                        sb.append(Integer.toHexString(this.popUpToId));
                    }
                }
            }
            if (this.popUpToInclusive) {
                sb.append(" inclusive");
            }
            if (this.popUpToSaveState) {
                sb.append(" saveState");
            }
            sb.append(")");
        }
        if (this.enterAnim != -1 || this.exitAnim != -1 || this.popEnterAnim != -1 || this.popExitAnim != -1) {
            sb.append("anim(enterAnim=0x");
            sb.append(Integer.toHexString(this.enterAnim));
            sb.append(" exitAnim=0x");
            sb.append(Integer.toHexString(this.exitAnim));
            sb.append(" popEnterAnim=0x");
            sb.append(Integer.toHexString(this.popEnterAnim));
            sb.append(" popExitAnim=0x");
            sb.append(Integer.toHexString(this.popExitAnim));
            sb.append(")");
        }
        return sb.toString();
    }

    public static final class Builder {
        private boolean popUpToInclusive;
        private String popUpToRoute;
        private ne4<?> popUpToRouteClass;
        private Object popUpToRouteObject;
        private boolean popUpToSaveState;
        private boolean restoreState;
        private boolean singleTop;
        private int popUpToId = -1;
        private int enterAnim = -1;
        private int exitAnim = -1;
        private int popEnterAnim = -1;
        private int popExitAnim = -1;

        public static /* synthetic */ Builder setPopUpTo$default(Builder builder, int i, boolean z, boolean z2, int i2, Object obj) {
            if ((i2 & 4) != 0) {
                z2 = false;
            }
            return builder.setPopUpTo(i, z, z2);
        }

        public final NavOptions build() {
            String str = this.popUpToRoute;
            if (str != null) {
                return new NavOptions(this.singleTop, this.restoreState, str, this.popUpToInclusive, this.popUpToSaveState, this.enterAnim, this.exitAnim, this.popEnterAnim, this.popExitAnim);
            }
            ne4<?> ne4Var = this.popUpToRouteClass;
            if (ne4Var != null) {
                return new NavOptions(this.singleTop, this.restoreState, ne4Var, this.popUpToInclusive, this.popUpToSaveState, this.enterAnim, this.exitAnim, this.popEnterAnim, this.popExitAnim);
            }
            Object obj = this.popUpToRouteObject;
            boolean z = this.singleTop;
            if (obj == null) {
                return new NavOptions(z, this.restoreState, this.popUpToId, this.popUpToInclusive, this.popUpToSaveState, this.enterAnim, this.exitAnim, this.popEnterAnim, this.popExitAnim);
            }
            boolean z2 = this.restoreState;
            obj.getClass();
            return new NavOptions(z, z2, obj, this.popUpToInclusive, this.popUpToSaveState, this.enterAnim, this.exitAnim, this.popEnterAnim, this.popExitAnim);
        }

        public final Builder setEnterAnim(int i) {
            this.enterAnim = i;
            return this;
        }

        public final Builder setExitAnim(int i) {
            this.exitAnim = i;
            return this;
        }

        public final Builder setLaunchSingleTop(boolean z) {
            this.singleTop = z;
            return this;
        }

        public final Builder setPopEnterAnim(int i) {
            this.popEnterAnim = i;
            return this;
        }

        public final Builder setPopExitAnim(int i) {
            this.popExitAnim = i;
            return this;
        }

        public final <T> Builder setPopUpTo(T t, boolean z, boolean z2) {
            t.getClass();
            this.popUpToRouteObject = t;
            setPopUpTo(RouteSerializerKt.generateHashCode(iq7.b(x07.a(t.getClass()))), z, z2);
            return this;
        }

        public final Builder setRestoreState(boolean z) {
            this.restoreState = z;
            return this;
        }

        public static Builder setPopUpTo$default(Builder builder, boolean z, boolean z2, int i, Object obj) {
            aa4.i();
            throw null;
        }

        public static /* synthetic */ Builder setPopUpTo$default(Builder builder, String str, boolean z, boolean z2, int i, Object obj) {
            if ((i & 4) != 0) {
                z2 = false;
            }
            return builder.setPopUpTo(str, z, z2);
        }

        public static /* synthetic */ Builder setPopUpTo$default(Builder builder, ne4 ne4Var, boolean z, boolean z2, int i, Object obj) {
            if ((i & 4) != 0) {
                z2 = false;
            }
            return builder.setPopUpTo(ne4Var, z, z2);
        }

        public static /* synthetic */ Builder setPopUpTo$default(Builder builder, Object obj, boolean z, boolean z2, int i, Object obj2) {
            if ((i & 4) != 0) {
                z2 = false;
            }
            return builder.setPopUpTo(obj, z, z2);
        }

        public final <T> Builder setPopUpTo(ne4<T> ne4Var, boolean z) {
            ne4Var.getClass();
            return setPopUpTo$default(this, (ne4) ne4Var, z, false, 4, (Object) null);
        }

        public final <T> Builder setPopUpTo(T t, boolean z) {
            t.getClass();
            return setPopUpTo$default(this, (Object) t, z, false, 4, (Object) null);
        }

        public final Builder setPopUpTo(String str, boolean z) {
            return setPopUpTo$default(this, str, z, false, 4, (Object) null);
        }

        public final <T> Builder setPopUpTo(boolean z) {
            aa4.i();
            throw null;
        }

        public final <T> Builder setPopUpTo(boolean z, boolean z2) {
            aa4.i();
            throw null;
        }

        public final Builder setPopUpTo(int i, boolean z, boolean z2) {
            this.popUpToId = i;
            this.popUpToRoute = null;
            this.popUpToInclusive = z;
            this.popUpToSaveState = z2;
            return this;
        }

        public final Builder setPopUpTo(String str, boolean z, boolean z2) {
            this.popUpToRoute = str;
            this.popUpToId = -1;
            this.popUpToInclusive = z;
            this.popUpToSaveState = z2;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final <T> Builder setPopUpTo(ne4<T> ne4Var, boolean z, boolean z2) {
            ne4Var.getClass();
            this.popUpToRouteClass = ne4Var;
            this.popUpToId = -1;
            this.popUpToInclusive = z;
            this.popUpToSaveState = z2;
            return this;
        }

        public final Builder setPopUpTo(int i, boolean z) {
            return setPopUpTo$default(this, i, z, false, 4, (Object) null);
        }
    }

    public NavOptions(boolean z, boolean z2, String str, boolean z3, boolean z4, int i, int i2, int i3, int i4) {
        this(z, z2, NavDestination.Companion.createRoute(str).hashCode(), z3, z4, i, i2, i3, i4);
        this.popUpToRoute = str;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavOptions(boolean z, boolean z2, ne4<?> ne4Var, boolean z3, boolean z4, int i, int i2, int i3, int i4) {
        this(z, z2, RouteSerializerKt.generateHashCode(iq7.b(ne4Var)), z3, z4, i, i2, i3, i4);
        ne4Var.getClass();
        this.popUpToRouteClass = ne4Var;
    }

    public NavOptions(boolean z, boolean z2, int i, boolean z3, boolean z4, int i2, int i3, int i4, int i5) {
        this.singleTop = z;
        this.restoreState = z2;
        this.popUpToId = i;
        this.popUpToInclusive = z3;
        this.popUpToSaveState = z4;
        this.enterAnim = i2;
        this.exitAnim = i3;
        this.popEnterAnim = i4;
        this.popExitAnim = i5;
    }
}
