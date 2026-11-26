package defpackage;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class wl9 extends gh4 implements nl3<k4a, lz7<k4a>> {
    public final /* synthetic */ fm9 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wl9(fm9 fm9Var) {
        super(1);
        this.f = fm9Var;
    }

    @Override // defpackage.nl3
    public final lz7<k4a> invoke(k4a k4aVar) {
        k4a k4aVar2 = k4aVar;
        if (k4aVar2 == null) {
            ah.f("fsaEvent in null");
            return null;
        }
        fm9 fm9Var = this.f;
        hia hiaVar = fm9Var.b;
        hiaVar.getClass();
        sha shaVar = hiaVar.a;
        String str = k4aVar2.b;
        c6a c6aVar = hiaVar.b;
        String str2 = k4aVar2.a;
        String packageName = ((Context) c6aVar.b).getPackageName();
        packageName.getClass();
        h5a h5aVar = new h5a(str2, packageName, System.currentTimeMillis());
        shaVar.getClass();
        k08 k08Var = new k08(new xfa(shaVar, h5aVar, str));
        gha ghaVar = gha.f;
        ghaVar.getClass();
        return new q08(new zz7(new q08(k08Var, ghaVar), new ps5(fm9Var)), new nk1(k4aVar2, 4));
    }
}
