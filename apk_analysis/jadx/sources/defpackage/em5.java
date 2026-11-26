package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.databinding.ItemOnlineShopsCategoryBinding;
import com.warefly.checkscan.databinding.ItemOnlineShopsNestedCategoriesBinding;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class em5 extends ListAdapter<g81, a> {
    public final List<g81> i;
    public final nl3<f81, j59> t;
    public final nl3<Boolean, j59> u;
    public final nl3<Boolean, j59> v;

    public static final class a extends RecyclerView.ViewHolder {
        public final ItemOnlineShopsNestedCategoriesBinding l;

        public a(ItemOnlineShopsNestedCategoriesBinding itemOnlineShopsNestedCategoriesBinding) {
            super(itemOnlineShopsNestedCategoriesBinding.getRoot());
            this.l = itemOnlineShopsNestedCategoriesBinding;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public em5(List<g81> list, nl3<? super f81, j59> nl3Var, nl3<? super Boolean, j59> nl3Var2, nl3<? super Boolean, j59> nl3Var3) {
        super(new e81());
        list.getClass();
        nl3Var.getClass();
        nl3Var2.getClass();
        nl3Var3.getClass();
        this.i = list;
        this.t = nl3Var;
        this.u = nl3Var2;
        this.v = nl3Var3;
    }

    @Override // androidx.recyclerview.widget.ListAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return getCurrentList().size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [android.view.View, androidx.recyclerview.widget.RecyclerView] */
    /* JADX WARN: Type inference failed for: r2v20, types: [T, em5] */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [androidx.recyclerview.widget.RecyclerView$Adapter] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, final int i) {
        ?? r2;
        a aVar = (a) viewHolder;
        aVar.getClass();
        ItemOnlineShopsNestedCategoriesBinding itemOnlineShopsNestedCategoriesBinding = aVar.l;
        final r07 r07Var = new r07();
        ?? r1 = itemOnlineShopsNestedCategoriesBinding.rvNestedCategories;
        List<f81> listC = this.i.get(i).a.c();
        if (listC != null) {
            List<f81> list = listC;
            ArrayList arrayList = new ArrayList(kn1.q(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new g81((f81) it.next()));
            }
            ?? em5Var = new em5(arrayList, this.t, this.u, this.v);
            r07Var.b = em5Var;
            r2 = em5Var;
        } else {
            r2 = 0;
        }
        r1.setAdapter(r2);
        r1.setItemAnimator(null);
        r1.setLayoutManager(new LinearLayoutManager(r1.getContext()));
        final ItemOnlineShopsCategoryBinding itemOnlineShopsCategoryBinding = itemOnlineShopsNestedCategoriesBinding.incldAllProductsCategory;
        itemOnlineShopsCategoryBinding.tvCategoryName.setText(getCurrentList().get(i).a.b());
        itemOnlineShopsCategoryBinding.cbCategory.setChecked(getCurrentList().get(i).b);
        itemOnlineShopsCategoryBinding.cbCategory.setOnClickListener(new View.OnClickListener() { // from class: dm5
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                em5 em5Var2 = this.b;
                List<g81> list2 = em5Var2.i;
                nl3<Boolean, j59> nl3Var = em5Var2.u;
                nl3<f81, j59> nl3Var2 = em5Var2.t;
                int i2 = i;
                boolean z = list2.get(i2).b;
                nl3<Boolean, j59> nl3Var3 = em5Var2.v;
                ItemOnlineShopsCategoryBinding itemOnlineShopsCategoryBinding2 = itemOnlineShopsCategoryBinding;
                r07 r07Var2 = r07Var;
                ArrayList arrayList2 = null;
                if (z) {
                    nl3Var3.invoke(Boolean.TRUE);
                    list2.get(i2).b = false;
                    itemOnlineShopsCategoryBinding2.cbCategory.setChecked(false);
                    em5Var2.submitList(list2);
                    em5 em5Var3 = (em5) r07Var2.b;
                    if (em5Var3 != null) {
                        em5Var3.submitList(kx2.b);
                    }
                    nl3Var2.invoke(null);
                    nl3Var.invoke(Boolean.FALSE);
                    return;
                }
                nl3Var3.invoke(Boolean.FALSE);
                list2.get(i2).b = true;
                itemOnlineShopsCategoryBinding2.cbCategory.setChecked(true);
                em5Var2.submitList(u96.a(list2.get(i2)));
                em5 em5Var4 = (em5) r07Var2.b;
                if (em5Var4 != null) {
                    List<f81> listC2 = list2.get(i2).a.c();
                    if (listC2 != null) {
                        List<f81> list3 = listC2;
                        arrayList2 = new ArrayList(kn1.q(list3, 10));
                        Iterator<T> it2 = list3.iterator();
                        while (it2.hasNext()) {
                            arrayList2.add(new g81((f81) it2.next()));
                        }
                    }
                    em5Var4.submitList(arrayList2);
                }
                if (list2.get(i2).a.c() == null) {
                    nl3Var2.invoke(list2.get(i2).a);
                    nl3Var.invoke(Boolean.TRUE);
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        viewGroup.getClass();
        ItemOnlineShopsNestedCategoriesBinding itemOnlineShopsNestedCategoriesBindingInflate = ItemOnlineShopsNestedCategoriesBinding.inflate(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        itemOnlineShopsNestedCategoriesBindingInflate.getClass();
        return new a(itemOnlineShopsNestedCategoriesBindingInflate);
    }
}
