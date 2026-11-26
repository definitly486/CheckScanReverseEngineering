package defpackage;

import java.util.ArrayList;
import org.jsoup.nodes.f;
import org.jsoup.nodes.h;

/* JADX INFO: loaded from: classes5.dex */
public abstract class h39 {
    public w36 a;
    public ea1 b;
    public jx8 c;
    public f d;
    public ArrayList<h> e;
    public String f;
    public gx8 g;
    public q36 h;
    public bk8 i;
    public gx8.g j;
    public final gx8.f k = new gx8.f(this);

    public final h a() {
        int size = this.e.size();
        return size > 0 ? this.e.get(size - 1) : this.d;
    }

    public final boolean b(String str) {
        h hVarA;
        if (this.e.size() == 0 || (hVarA = a()) == null) {
            return false;
        }
        jj8 jj8Var = hVarA.e;
        return jj8Var.d.equals(str) && jj8Var.b.equals("http://www.w3.org/1999/xhtml");
    }

    public final void c(String str, Object... objArr) {
        p36 p36Var = this.a.b;
        if (p36Var.i()) {
            p36Var.add(new n36(this.b, str, objArr));
        }
    }

    public final h d() {
        return this.e.remove(this.e.size() - 1);
    }

    public abstract boolean e(gx8 gx8Var);

    public final boolean f(String str) {
        gx8 gx8Var = this.g;
        gx8.f fVar = this.k;
        if (gx8Var == fVar) {
            gx8.f fVar2 = new gx8.f(this);
            fVar2.j(str);
            return e(fVar2);
        }
        fVar.f();
        fVar.j(str);
        return e(fVar);
    }

    public final void g(String str) {
        gx8.g gVar = this.j;
        if (this.g == gVar) {
            gx8.g gVar2 = new gx8.g((by3) this);
            gVar2.j(str);
            e(gVar2);
        } else {
            gVar.f();
            gVar.j(str);
            e(gVar);
        }
    }

    public final jj8 h(gx8.g gVar) {
        return this.i.d(gVar.d.e(), gVar.e, "http://www.w3.org/1999/xhtml", this.h.a);
    }
}
