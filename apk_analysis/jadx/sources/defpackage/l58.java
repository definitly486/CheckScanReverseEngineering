package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.core.ui.databinding.ItemSpecialHorizontalBinding;
import com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter;
import eightbitlab.com.blurview.BlurView;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class l58 extends r44<a> {
    public final BonusesMainNewPresenter i;

    public final class a extends RecyclerView.ViewHolder {
        public final ItemSpecialHorizontalBinding l;

        public a(ItemSpecialHorizontalBinding itemSpecialHorizontalBinding) {
            super(itemSpecialHorizontalBinding.getRoot());
            this.l = itemSpecialHorizontalBinding;
        }
    }

    public static final class b extends DiffUtil.ItemCallback<o58> {
        public static final b a = new b();

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public final boolean areContentsTheSame(o58 o58Var, o58 o58Var2) {
            o58 o58Var3 = o58Var;
            o58 o58Var4 = o58Var2;
            o58Var3.getClass();
            o58Var4.getClass();
            String str = o58Var3.b;
            String str2 = o58Var3.a;
            b06 b06Var = o58Var3.e;
            String str3 = str + str2 + ((Object) null) + (b06Var != null ? b06Var.a : null);
            String str4 = o58Var4.b;
            String str5 = o58Var4.a;
            b06 b06Var2 = o58Var4.e;
            return str3.equals(str4 + str5 + ((Object) null) + (b06Var2 != null ? b06Var2.a : null));
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public final boolean areItemsTheSame(o58 o58Var, o58 o58Var2) {
            o58 o58Var3 = o58Var;
            o58 o58Var4 = o58Var2;
            o58Var3.getClass();
            o58Var4.getClass();
            String str = o58Var3.b;
            String str2 = o58Var3.a;
            if (str2 == null) {
                str2 = "";
            }
            String strConcat = str.concat(str2);
            String str3 = o58Var4.b;
            String str4 = o58Var4.a;
            return strConcat.equals(str3.concat(str4 != null ? str4 : ""));
        }
    }

    public interface c {
        void onSpecialItemClick(o58 o58Var);

        void onSpecialItemOrdClick(b06 b06Var);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public l58(BonusesMainNewPresenter bonusesMainNewPresenter) {
        b bVar = b.a;
        bVar.getClass();
        super(bVar);
        this.i = bonusesMainNewPresenter;
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
        j59 j59Var;
        a aVar = (a) viewHolder;
        aVar.getClass();
        List<o58> currentList = getCurrentList();
        currentList.getClass();
        if (currentList.isEmpty()) {
            return;
        }
        o58 item = getItem(i % getCurrentList().size());
        item.getClass();
        o58 o58Var = item;
        ItemSpecialHorizontalBinding itemSpecialHorizontalBinding = aVar.l;
        l58 l58Var = l58.this;
        ImageView imageView = itemSpecialHorizontalBinding.ivPicture;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new x30(2, l58Var, o58Var)));
        if (o58Var.e != null) {
            BlurView root = itemSpecialHorizontalBinding.incldAdsBadge.getRoot();
            root.getClass();
            root.setVisibility(0);
            BlurView root2 = itemSpecialHorizontalBinding.incldAdsBadge.getRoot();
            root2.getClass();
            root2.setOnClickListener(new lb7(new ro0(1, l58Var, o58Var)));
            j59Var = j59.a;
        } else {
            j59Var = null;
        }
        if (j59Var == null) {
            BlurView root3 = itemSpecialHorizontalBinding.incldAdsBadge.getRoot();
            root3.getClass();
            root3.setVisibility(8);
        }
        p37 p37VarE = com.bumptech.glide.a.e(itemSpecialHorizontalBinding.ivPicture);
        String str = o58Var.a;
        p37VarE.g(str != null ? str : null).P(qs2.h()).L(itemSpecialHorizontalBinding.ivPicture);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        viewGroup.getClass();
        ItemSpecialHorizontalBinding itemSpecialHorizontalBindingInflate = ItemSpecialHorizontalBinding.inflate(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        BlurView blurView = itemSpecialHorizontalBindingInflate.incldAdsBadge.blurView;
        blurView.getClass();
        MaterialCardView root = itemSpecialHorizontalBindingInflate.getRoot();
        root.getClass();
        zd3.h(blurView, root);
        MaterialCardView root2 = itemSpecialHorizontalBindingInflate.getRoot();
        root2.getClass();
        ViewGroup.LayoutParams layoutParams = root2.getLayoutParams();
        if (layoutParams == null) {
            o2.d("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            return null;
        }
        layoutParams.width = -1;
        root2.setLayoutParams(layoutParams);
        return new a(itemSpecialHorizontalBindingInflate);
    }
}
