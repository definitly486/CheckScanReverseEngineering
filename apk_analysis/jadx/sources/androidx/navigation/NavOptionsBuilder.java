package androidx.navigation;

import defpackage.aa4;
import defpackage.fg;
import defpackage.h04;
import defpackage.j59;
import defpackage.ne4;
import defpackage.nl3;
import defpackage.ta8;
import defpackage.uf;
import defpackage.ul2;
import defpackage.y12;

/* JADX INFO: loaded from: classes3.dex */
@NavOptionsDsl
public final class NavOptionsBuilder {
    private boolean inclusive;
    private boolean launchSingleTop;
    private String popUpToRoute;
    private ne4<?> popUpToRouteClass;
    private Object popUpToRouteObject;
    private boolean restoreState;
    private boolean saveState;
    private final NavOptions.Builder builder = new NavOptions.Builder();
    private int popUpToId = -1;

    @ul2
    public static /* synthetic */ void getPopUpTo$annotations() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void popUpTo$default(NavOptionsBuilder navOptionsBuilder, int i, nl3 nl3Var, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            nl3Var = new uf(1);
        }
        navOptionsBuilder.popUpTo(i, (nl3<? super PopUpToBuilder, j59>) nl3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 popUpTo$lambda$1(PopUpToBuilder popUpToBuilder) {
        popUpToBuilder.getClass();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 popUpTo$lambda$2(PopUpToBuilder popUpToBuilder) {
        popUpToBuilder.getClass();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 popUpTo$lambda$3(PopUpToBuilder popUpToBuilder) {
        popUpToBuilder.getClass();
        return j59.a;
    }

    private final void setPopUpToRoute(String str) {
        if (str != null) {
            if (ta8.M(str)) {
                fg.c("Cannot pop up to an empty route");
            } else {
                this.popUpToRoute = str;
                this.inclusive = false;
            }
        }
    }

    private final void setPopUpToRouteClass(ne4<?> ne4Var) {
        if (ne4Var != null) {
            this.popUpToRouteClass = ne4Var;
            this.inclusive = false;
        }
    }

    private final void setPopUpToRouteObject(Object obj) {
        if (obj != null) {
            this.popUpToRouteObject = obj;
            this.inclusive = false;
        }
    }

    public final void anim(nl3<? super AnimBuilder, j59> nl3Var) {
        nl3Var.getClass();
        AnimBuilder animBuilder = new AnimBuilder();
        nl3Var.invoke(animBuilder);
        this.builder.setEnterAnim(animBuilder.getEnter()).setExitAnim(animBuilder.getExit()).setPopEnterAnim(animBuilder.getPopEnter()).setPopExitAnim(animBuilder.getPopExit());
    }

    public final NavOptions build$navigation_common_release() {
        NavOptions.Builder builder = this.builder;
        builder.setLaunchSingleTop(this.launchSingleTop);
        builder.setRestoreState(this.restoreState);
        String str = this.popUpToRoute;
        if (str != null) {
            builder.setPopUpTo(str, this.inclusive, this.saveState);
        } else {
            ne4<?> ne4Var = this.popUpToRouteClass;
            if (ne4Var != null) {
                ne4Var.getClass();
                builder.setPopUpTo((ne4) ne4Var, this.inclusive, this.saveState);
            } else {
                Object obj = this.popUpToRouteObject;
                if (obj != null) {
                    obj.getClass();
                    builder.setPopUpTo(obj, this.inclusive, this.saveState);
                } else {
                    builder.setPopUpTo(this.popUpToId, this.inclusive, this.saveState);
                }
            }
        }
        return builder.build();
    }

    public final boolean getLaunchSingleTop() {
        return this.launchSingleTop;
    }

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

    public final boolean getRestoreState() {
        return this.restoreState;
    }

    public final <T> void popUpTo(ne4<T> ne4Var, nl3<? super PopUpToBuilder, j59> nl3Var) {
        ne4Var.getClass();
        nl3Var.getClass();
        setPopUpToRouteClass(ne4Var);
        setPopUpToId$navigation_common_release(-1);
        setPopUpToRoute(null);
        PopUpToBuilder popUpToBuilder = new PopUpToBuilder();
        nl3Var.invoke(popUpToBuilder);
        this.inclusive = popUpToBuilder.getInclusive();
        this.saveState = popUpToBuilder.getSaveState();
    }

    public final void setLaunchSingleTop(boolean z) {
        this.launchSingleTop = z;
    }

    @ul2
    public final void setPopUpTo(int i) {
        popUpTo$default(this, i, (nl3) null, 2, (Object) null);
    }

    public final void setPopUpToId$navigation_common_release(int i) {
        this.popUpToId = i;
        this.inclusive = false;
    }

    public final void setRestoreState(boolean z) {
        this.restoreState = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void popUpTo$default(NavOptionsBuilder navOptionsBuilder, String str, nl3 nl3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            nl3Var = new h04(1);
        }
        navOptionsBuilder.popUpTo(str, (nl3<? super PopUpToBuilder, j59>) nl3Var);
    }

    public static void popUpTo$default(NavOptionsBuilder navOptionsBuilder, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            nl3Var = new nl3<PopUpToBuilder, j59>() { // from class: androidx.navigation.NavOptionsBuilder.popUpTo.3
                @Override // defpackage.nl3
                public /* bridge */ /* synthetic */ j59 invoke(PopUpToBuilder popUpToBuilder) {
                    invoke2(popUpToBuilder);
                    return j59.a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(PopUpToBuilder popUpToBuilder) {
                    popUpToBuilder.getClass();
                }
            };
        }
        nl3Var.getClass();
        aa4.i();
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void popUpTo$default(NavOptionsBuilder navOptionsBuilder, Object obj, nl3 nl3Var, int i, Object obj2) {
        if ((i & 2) != 0) {
            nl3Var = new y12(3);
        }
        navOptionsBuilder.popUpTo(obj, (nl3<? super PopUpToBuilder, j59>) nl3Var);
    }

    public final void popUpTo(String str, nl3<? super PopUpToBuilder, j59> nl3Var) {
        str.getClass();
        nl3Var.getClass();
        setPopUpToRoute(str);
        setPopUpToId$navigation_common_release(-1);
        PopUpToBuilder popUpToBuilder = new PopUpToBuilder();
        nl3Var.invoke(popUpToBuilder);
        this.inclusive = popUpToBuilder.getInclusive();
        this.saveState = popUpToBuilder.getSaveState();
    }

    public final void popUpTo(int i, nl3<? super PopUpToBuilder, j59> nl3Var) {
        nl3Var.getClass();
        setPopUpToId$navigation_common_release(i);
        setPopUpToRoute(null);
        PopUpToBuilder popUpToBuilder = new PopUpToBuilder();
        nl3Var.invoke(popUpToBuilder);
        this.inclusive = popUpToBuilder.getInclusive();
        this.saveState = popUpToBuilder.getSaveState();
    }

    public final <T> void popUpTo(T t, nl3<? super PopUpToBuilder, j59> nl3Var) {
        t.getClass();
        nl3Var.getClass();
        setPopUpToRouteObject(t);
        setPopUpToId$navigation_common_release(-1);
        setPopUpToRoute(null);
        PopUpToBuilder popUpToBuilder = new PopUpToBuilder();
        nl3Var.invoke(popUpToBuilder);
        this.inclusive = popUpToBuilder.getInclusive();
        this.saveState = popUpToBuilder.getSaveState();
    }

    public final <T> void popUpTo(nl3<? super PopUpToBuilder, j59> nl3Var) {
        nl3Var.getClass();
        aa4.i();
        throw null;
    }
}
