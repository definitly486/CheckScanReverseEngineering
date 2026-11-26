package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class f32<T, V extends ViewBinding> implements il2 {
    public final dm3<LayoutInflater, ViewGroup, Boolean, V> a;
    public final y22 b;

    public static final class a<V extends ViewBinding> extends RecyclerView.ViewHolder {
        public final V l;
        public s68 m;

        public a(V v) {
            super(v.getRoot());
            this.l = v;
        }
    }

    @bd2(c = "com.warefly.checkscan.core.ui.delegateAdapter.CounterViewBindingDelegateAdapter$onBindViewHolder$1$1", f = "CounterViewBindingDelegateAdapter.kt", l = {43}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;
        public final /* synthetic */ y68<Long> m;
        public final /* synthetic */ f32<Object, ViewBinding> n;
        public final /* synthetic */ RecyclerView.ViewHolder o;

        public static final class a<T> implements id3 {
            public final /* synthetic */ f32<T, ViewBinding> b;
            public final /* synthetic */ RecyclerView.ViewHolder c;

            public a(f32<T, ViewBinding> f32Var, RecyclerView.ViewHolder viewHolder) {
                this.b = f32Var;
                this.c = viewHolder;
            }

            @Override // defpackage.id3
            public final Object emit(Object obj, e02 e02Var) {
                long jLongValue = ((Number) obj).longValue();
                this.b.j(((a) this.c).l, jLongValue);
                return j59.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(y68<Long> y68Var, f32<Object, ViewBinding> f32Var, RecyclerView.ViewHolder viewHolder, e02<? super b> e02Var) {
            super(2, e02Var);
            this.m = y68Var;
            this.n = f32Var;
            this.o = viewHolder;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new b(this.m, this.n, this.o, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((b) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                a aVar = new a(this.n, this.o);
                this.l = 1;
                if (this.m.collect(aVar, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            h8.d();
            return null;
        }
    }

    public f32(y22 y22Var, dm3 dm3Var) {
        dm3Var.getClass();
        this.a = dm3Var;
        this.b = y22Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.il2
    public final void a(RecyclerView.ViewHolder viewHolder, int i, List list) {
        list.getClass();
        a aVar = (a) viewHolder;
        s68 s68Var = aVar.m;
        if (s68Var != null) {
            s68Var.cancel(null);
        }
        aVar.m = null;
        Object obj = list.get(i);
        obj.getClass();
        V v = aVar.l;
        i(v, obj);
        y68<Long> y68VarG = g(obj);
        if (y68VarG != null) {
            aVar.m = av0.c(this.b, null, null, new b(y68VarG, this, viewHolder, null), 3);
        }
        if (i + 1 == list.size()) {
            v.getClass();
        }
    }

    @Override // defpackage.il2
    public final void b(RecyclerView.ViewHolder viewHolder) {
        ((a) viewHolder).l.getClass();
    }

    @Override // defpackage.il2
    public final void c(RecyclerView.ViewHolder viewHolder) {
        a aVar = (a) viewHolder;
        s68 s68Var = aVar.m;
        if (s68Var != null) {
            s68Var.cancel(null);
        }
        aVar.m = null;
        aVar.l.getClass();
    }

    @Override // defpackage.il2
    public final void d(RecyclerView.ViewHolder viewHolder) {
        ((a) viewHolder).l.getClass();
    }

    @Override // defpackage.il2
    public final boolean e(int i, List list) {
        list.getClass();
        return h(list.get(i));
    }

    @Override // defpackage.il2
    public final RecyclerView.ViewHolder f(ViewGroup viewGroup) {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(viewGroup.getContext());
        layoutInflaterFrom.getClass();
        V vInvoke = this.a.invoke(layoutInflaterFrom, viewGroup, Boolean.FALSE);
        vInvoke.getClass();
        return new a(vInvoke);
    }

    public abstract y68<Long> g(T t);

    public abstract boolean h(Object obj);

    public abstract void i(V v, T t);

    public abstract void j(V v, long j);
}
