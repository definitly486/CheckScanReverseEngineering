package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.core.ui.databinding.LayoutAdsBadgeBinding;
import com.warefly.checkscan.databinding.ItemSpecialInfiniteBinding;
import eightbitlab.com.blurview.BlurView;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class t44 extends q44<a> {
    public final b i;

    public final class a extends RecyclerView.ViewHolder {
        public final ItemSpecialInfiniteBinding l;

        public a(ItemSpecialInfiniteBinding itemSpecialInfiniteBinding) {
            super(itemSpecialInfiniteBinding.getRoot());
            this.l = itemSpecialInfiniteBinding;
        }
    }

    public interface b {
        void onSpecialItemClick(hc0.b bVar);

        void showSpecialAdInfoDialog(b06 b06Var);
    }

    public static final class c extends DiffUtil.ItemCallback<hc0.b> {
        public static final c a = new c();

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public final boolean areContentsTheSame(hc0.b bVar, hc0.b bVar2) {
            hc0.b bVar3 = bVar;
            hc0.b bVar4 = bVar2;
            bVar3.getClass();
            bVar4.getClass();
            return (bVar3.b + bVar3.a + bVar3.c + ((Object) null)).equals(bVar4.b + bVar4.a + bVar4.c + ((Object) null));
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public final boolean areItemsTheSame(hc0.b bVar, hc0.b bVar2) {
            hc0.b bVar3 = bVar;
            hc0.b bVar4 = bVar2;
            bVar3.getClass();
            bVar4.getClass();
            String str = bVar3.b;
            String str2 = bVar3.a;
            if (str2 == null) {
                str2 = "";
            }
            String strConcat = str.concat(str2);
            String str3 = bVar4.b;
            String str4 = bVar4.a;
            return strConcat.equals(str3.concat(str4 != null ? str4 : ""));
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public t44(b bVar) {
        c cVar = c.a;
        cVar.getClass();
        super(cVar);
        this.i = bVar;
    }

    @Override // androidx.recyclerview.widget.ListAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return getCurrentList().size() == 1 ? 1 : Integer.MAX_VALUE;
    }

    @Override // defpackage.x44
    public final int i() {
        return getCurrentList().size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        a aVar = (a) viewHolder;
        aVar.getClass();
        List<hc0.b> currentList = getCurrentList();
        currentList.getClass();
        if (currentList.isEmpty()) {
            return;
        }
        hc0.b item = getItem(i % getCurrentList().size());
        item.getClass();
        final hc0.b bVar = item;
        b06 b06Var = bVar.c;
        ItemSpecialInfiniteBinding itemSpecialInfiniteBinding = aVar.l;
        MaterialCardView root = itemSpecialInfiniteBinding.getRoot();
        final t44 t44Var = t44.this;
        root.setOnClickListener(new View.OnClickListener() { // from class: s44
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.b.i.onSpecialItemClick(bVar);
            }
        });
        LayoutAdsBadgeBinding layoutAdsBadgeBinding = itemSpecialInfiniteBinding.incldAdsBadge;
        if (b06Var != null) {
            BlurView blurView = layoutAdsBadgeBinding.blurView;
            blurView.getClass();
            MaterialCardView root2 = itemSpecialInfiniteBinding.getRoot();
            root2.getClass();
            zd3.h(blurView, root2);
            BlurView root3 = itemSpecialInfiniteBinding.incldAdsBadge.getRoot();
            root3.getClass();
            root3.setVisibility(0);
            BlurView root4 = itemSpecialInfiniteBinding.incldAdsBadge.getRoot();
            root4.getClass();
            root4.setOnClickListener(new lb7(new m90(2, t44Var, b06Var)));
        } else {
            BlurView root5 = layoutAdsBadgeBinding.getRoot();
            root5.getClass();
            root5.setVisibility(8);
        }
        p37 p37VarE = com.bumptech.glide.a.e(itemSpecialInfiniteBinding.ivPicture);
        String str = bVar.a;
        if (str == null) {
            str = null;
        }
        p37VarE.g(str).P(qs2.h()).L(itemSpecialInfiniteBinding.ivPicture);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        viewGroup.getClass();
        ItemSpecialInfiniteBinding itemSpecialInfiniteBindingInflate = ItemSpecialInfiniteBinding.inflate(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        MaterialCardView root = itemSpecialInfiniteBindingInflate.getRoot();
        root.getClass();
        ViewGroup.LayoutParams layoutParams = root.getLayoutParams();
        if (layoutParams == null) {
            o2.d("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            return null;
        }
        layoutParams.width = -1;
        root.setLayoutParams(layoutParams);
        return new a(itemSpecialInfiniteBindingInflate);
    }
}
