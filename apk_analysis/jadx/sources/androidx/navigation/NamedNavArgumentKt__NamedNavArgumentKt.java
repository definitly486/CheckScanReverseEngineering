package androidx.navigation;

import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class NamedNavArgumentKt__NamedNavArgumentKt {
    public static final NamedNavArgument navArgument(String str, nl3<? super NavArgumentBuilder, j59> nl3Var) {
        str.getClass();
        nl3Var.getClass();
        NavArgumentBuilder navArgumentBuilder = new NavArgumentBuilder();
        nl3Var.invoke(navArgumentBuilder);
        return new NamedNavArgument(str, navArgumentBuilder.build());
    }
}
