package yads;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class mi4 implements pg4 {
    public final ArrayList a;
    public final pg4 b;

    public mi4(ArrayList arrayList) {
        this.a = arrayList;
        this.b = (pg4) defpackage.qn1.V(arrayList);
    }

    @Override // yads.pg4
    public final g70 a(ih4 ih4Var) {
        g70 g70VarA;
        pg4 pg4Var = this.b;
        return (pg4Var == null || (g70VarA = pg4Var.a(ih4Var)) == null) ? new e70(null, new IllegalStateException("No native ad available for binding")) : g70VarA;
    }

    @Override // yads.pg4
    public final vg4 b() {
        pg4 pg4Var = this.b;
        if (pg4Var != null) {
            return pg4Var.b();
        }
        return null;
    }

    @Override // yads.pg4
    public final String c() {
        pg4 pg4Var = this.b;
        String strC = pg4Var != null ? pg4Var.c() : null;
        return strC == null ? "" : strC;
    }

    @Override // yads.pg4
    public final sj4 d() {
        sj4 sj4VarD;
        pg4 pg4Var = this.b;
        return (pg4Var == null || (sj4VarD = pg4Var.d()) == null) ? new sj4(null, null) : sj4VarD;
    }

    @Override // yads.pg4
    public final void destroy() {
        pg4 pg4Var = this.b;
        if (pg4Var != null) {
            pg4Var.destroy();
        }
    }

    @Override // yads.pg4
    public final s70 e() {
        pg4 pg4Var = this.b;
        if (pg4Var != null) {
            return pg4Var.e();
        }
        return null;
    }

    @Override // yads.pg4
    public final List f() {
        pg4 pg4Var = this.b;
        if (pg4Var != null) {
            return pg4Var.f();
        }
        return null;
    }

    @Override // yads.pg4
    public final f80 getAdAssets() {
        f80 adAssets;
        pg4 pg4Var = this.b;
        return (pg4Var == null || (adAssets = pg4Var.getAdAssets()) == null) ? new f80(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false) : adAssets;
    }

    @Override // yads.pg4
    public final f95 getAdType() {
        f95 adType;
        pg4 pg4Var = this.b;
        return (pg4Var == null || (adType = pg4Var.getAdType()) == null) ? f95.d : adType;
    }

    @Override // yads.pg4
    public final String getInfo() {
        pg4 pg4Var = this.b;
        if (pg4Var != null) {
            return pg4Var.getInfo();
        }
        return null;
    }

    @Override // yads.pg4
    public final void loadImages() {
        pg4 pg4Var = this.b;
        if (pg4Var != null) {
            pg4Var.loadImages();
        }
    }

    @Override // yads.pg4
    public final String a() {
        pg4 pg4Var = this.b;
        if (pg4Var != null) {
            return pg4Var.a();
        }
        return null;
    }

    @Override // yads.pg4
    public final void a(ih4 ih4Var, pz pzVar) {
        pg4 pg4Var = this.b;
        if (pg4Var != null) {
            pg4Var.a(ih4Var, pzVar);
        }
    }

    @Override // yads.pg4
    public final void a(h80 h80Var) {
        pg4 pg4Var = this.b;
        if (pg4Var != null) {
            pg4Var.a(h80Var);
        }
    }
}
