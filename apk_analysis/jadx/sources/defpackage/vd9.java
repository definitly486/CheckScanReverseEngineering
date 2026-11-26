package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class vd9<T, V extends ViewBinding> implements il2 {
    public final dm3<LayoutInflater, ViewGroup, Boolean, V> a;

    public static final class a<V extends ViewBinding> extends RecyclerView.ViewHolder {
        public final V l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(V v) {
            super(v.getRoot());
            v.getClass();
            this.l = v;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public vd9(dm3<? super LayoutInflater, ? super ViewGroup, ? super Boolean, ? extends V> dm3Var) {
        dm3Var.getClass();
        this.a = dm3Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.il2
    public final void a(RecyclerView.ViewHolder viewHolder, int i, List list) {
        list.getClass();
        V v = ((a) viewHolder).l;
        Object obj = list.get(i);
        obj.getClass();
        i(v, obj);
        if (i + 1 == list.size()) {
            l(v);
        }
    }

    @Override // defpackage.il2
    public final void b(RecyclerView.ViewHolder viewHolder) {
        h(((a) viewHolder).l);
    }

    @Override // defpackage.il2
    public final void c(RecyclerView.ViewHolder viewHolder) {
        ((a) viewHolder).l.getClass();
    }

    @Override // defpackage.il2
    public final void d(RecyclerView.ViewHolder viewHolder) {
        k(((a) viewHolder).l);
    }

    @Override // defpackage.il2
    public final boolean e(int i, List list) {
        list.getClass();
        return g(list.get(i));
    }

    @Override // defpackage.il2
    public final RecyclerView.ViewHolder f(ViewGroup viewGroup) {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(viewGroup.getContext());
        layoutInflaterFrom.getClass();
        V vInvoke = this.a.invoke(layoutInflaterFrom, viewGroup, Boolean.FALSE);
        j(vInvoke);
        return new a(vInvoke);
    }

    public abstract boolean g(Object obj);

    public void h(V v) {
        v.getClass();
    }

    public abstract void i(V v, T t);

    public void j(V v) {
        v.getClass();
    }

    public void k(V v) {
        v.getClass();
    }

    public void l(V v) {
        v.getClass();
    }
}
