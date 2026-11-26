package androidx.navigation.ui;

import defpackage.aa4;
import defpackage.cm3;
import defpackage.ll3;
import defpackage.mm3;

/* JADX INFO: loaded from: classes3.dex */
public final class AppBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0 implements AppBarConfiguration.OnNavigateUpListener, mm3 {
    private final /* synthetic */ ll3 function;

    public AppBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0(ll3 ll3Var) {
        ll3Var.getClass();
        this.function = ll3Var;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof AppBarConfiguration.OnNavigateUpListener) && (obj instanceof mm3)) {
            return aa4.e(getFunctionDelegate(), ((mm3) obj).getFunctionDelegate());
        }
        return false;
    }

    @Override // defpackage.mm3
    public final cm3<?> getFunctionDelegate() {
        return this.function;
    }

    public final int hashCode() {
        return getFunctionDelegate().hashCode();
    }

    @Override // androidx.navigation.ui.AppBarConfiguration.OnNavigateUpListener
    public final /* synthetic */ boolean onNavigateUp() {
        return ((Boolean) this.function.invoke()).booleanValue();
    }
}
