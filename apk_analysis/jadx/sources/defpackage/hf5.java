package defpackage;

import androidx.core.util.Pools;
import com.bumptech.glide.load.engine.GlideException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class hf5<Model, Data> implements nc5<Model, Data> {
    public final ArrayList a;
    public final Pools.Pool<List<Throwable>> b;

    public static class a<Data> implements s82<Data>, s82.a<Data> {
        public final ArrayList b;
        public final Pools.Pool<List<Throwable>> c;
        public int d;
        public jg6 e;
        public s82.a<? super Data> f;
        public List<Throwable> g;
        public boolean h;

        public a(ArrayList arrayList, Pools.Pool pool) {
            this.c = pool;
            if (arrayList.isEmpty()) {
                fg.c("Must not be empty.");
                throw null;
            }
            this.b = arrayList;
            this.d = 0;
        }

        @Override // defpackage.s82
        public final Class<Data> a() {
            return ((s82) this.b.get(0)).a();
        }

        @Override // defpackage.s82
        public final void b() {
            List<Throwable> list = this.g;
            if (list != null) {
                this.c.release(list);
            }
            this.g = null;
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                ((s82) it.next()).b();
            }
        }

        @Override // defpackage.s82
        public final y82 c() {
            return ((s82) this.b.get(0)).c();
        }

        @Override // defpackage.s82
        public final void cancel() {
            this.h = true;
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                ((s82) it.next()).cancel();
            }
        }

        @Override // s82.a
        public final void d(Data data) {
            if (data != null) {
                this.f.d(data);
            } else {
                g();
            }
        }

        @Override // s82.a
        public final void e(Exception exc) {
            List<Throwable> list = this.g;
            r96.c(list, "Argument must not be null");
            list.add(exc);
            g();
        }

        @Override // defpackage.s82
        public final void f(jg6 jg6Var, s82.a<? super Data> aVar) {
            this.e = jg6Var;
            this.f = aVar;
            this.g = this.c.acquire();
            ((s82) this.b.get(this.d)).f(jg6Var, this);
            if (this.h) {
                cancel();
            }
        }

        public final void g() {
            if (this.h) {
                return;
            }
            if (this.d < this.b.size() - 1) {
                this.d++;
                f(this.e, this.f);
            } else {
                r96.b(this.g);
                this.f.e(new GlideException("Fetch failed", new ArrayList(this.g)));
            }
        }
    }

    public hf5(ArrayList arrayList, f53.c cVar) {
        this.a = arrayList;
        this.b = cVar;
    }

    @Override // defpackage.nc5
    public final nc5.a<Data> a(Model model, int i, int i2, xz5 xz5Var) {
        nc5.a<Data> aVarA;
        ArrayList arrayList = this.a;
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList(size);
        kf4 kf4Var = null;
        for (int i3 = 0; i3 < size; i3++) {
            nc5 nc5Var = (nc5) arrayList.get(i3);
            if (nc5Var.b(model) && (aVarA = nc5Var.a(model, i, i2, xz5Var)) != null) {
                kf4Var = aVarA.a;
                arrayList2.add(aVarA.c);
            }
        }
        if (arrayList2.isEmpty() || kf4Var == null) {
            return null;
        }
        return new nc5.a<>(kf4Var, new a(arrayList2, this.b));
    }

    @Override // defpackage.nc5
    public final boolean b(Model model) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            if (((nc5) it.next()).b(model)) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        return "MultiModelLoader{modelLoaders=" + Arrays.toString(this.a.toArray()) + '}';
    }
}
