package defpackage;

import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemRvBalancePromoBannerBinding;
import com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter;
import eightbitlab.com.blurview.BlurView;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class k60 extends vd9<b70, ItemRvBalancePromoBannerBinding> {
    public final BalancePresenter b;

    public k60(BalancePresenter balancePresenter) {
        super(e60.c);
        this.b = balancePresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof b70;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, b70 b70Var) {
        j59 j59Var;
        j59 j59Var2;
        j59 j59Var3;
        ItemRvBalancePromoBannerBinding itemRvBalancePromoBannerBinding = (ItemRvBalancePromoBannerBinding) viewBinding;
        b70 b70Var2 = b70Var;
        itemRvBalancePromoBannerBinding.getClass();
        itemRvBalancePromoBannerBinding.tvTitle.setText(b70Var2.b);
        String str = b70Var2.g;
        j59 j59Var4 = null;
        if (str != null) {
            a.d(itemRvBalancePromoBannerBinding.getRoot().getContext()).h(str).P(qs2.h()).b(new s37().B(new e87(pl2.e(8)), true)).L(itemRvBalancePromoBannerBinding.ivBanner);
            ImageView imageView = itemRvBalancePromoBannerBinding.ivBanner;
            imageView.getClass();
            imageView.setVisibility(0);
            j59Var = j59.a;
        } else {
            j59Var = null;
        }
        if (j59Var == null) {
            ImageView imageView2 = itemRvBalancePromoBannerBinding.ivBanner;
            imageView2.getClass();
            imageView2.setVisibility(8);
        }
        b06 b06Var = b70Var2.h;
        if (b06Var != null) {
            BlurView root = itemRvBalancePromoBannerBinding.incldAdsBadge.getRoot();
            root.getClass();
            root.setOnClickListener(new lb7(new j60(this, b06Var, 0)));
            BlurView root2 = itemRvBalancePromoBannerBinding.incldAdsBadge.getRoot();
            root2.getClass();
            root2.setVisibility(0);
            j59Var2 = j59.a;
        } else {
            j59Var2 = null;
        }
        if (j59Var2 == null) {
            BlurView root3 = itemRvBalancePromoBannerBinding.incldAdsBadge.getRoot();
            root3.getClass();
            root3.setVisibility(8);
        }
        List<String> list = b70Var2.d;
        if (list != null) {
            RecyclerView recyclerView = itemRvBalancePromoBannerBinding.rvTerms;
            recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
            recyclerView.setAdapter(new jz7(R.layout.item_rv_balance_promo_banner_term, list, null, f60.f, g60.f, 4));
            if (recyclerView.getItemDecorationCount() > 0) {
                recyclerView.removeItemDecorationAt(0);
            }
            recyclerView.addItemDecoration(new i16(pl2.o(12)));
            RecyclerView recyclerView2 = itemRvBalancePromoBannerBinding.rvTerms;
            recyclerView2.getClass();
            recyclerView2.setVisibility(0);
            j59Var3 = j59.a;
        } else {
            j59Var3 = null;
        }
        if (j59Var3 == null) {
            RecyclerView recyclerView3 = itemRvBalancePromoBannerBinding.rvTerms;
            recyclerView3.getClass();
            recyclerView3.setVisibility(8);
        }
        TextView textView = itemRvBalancePromoBannerBinding.btnAction;
        textView.setText(b70Var2.e);
        textView.setOnClickListener(new lb7(new h60(this, b70Var2, 0)));
        String str2 = b70Var2.f;
        if (str2 != null) {
            TextView textView2 = itemRvBalancePromoBannerBinding.btnHide;
            textView2.setText(str2);
            textView2.setOnClickListener(new lb7(new i60(this, b70Var2, 0)));
            textView2.setVisibility(0);
            j59Var4 = j59.a;
        }
        if (j59Var4 == null) {
            TextView textView3 = itemRvBalancePromoBannerBinding.btnHide;
            textView3.getClass();
            textView3.setVisibility(8);
        }
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvBalancePromoBannerBinding itemRvBalancePromoBannerBinding = (ItemRvBalancePromoBannerBinding) viewBinding;
        itemRvBalancePromoBannerBinding.getClass();
        BlurView blurView = itemRvBalancePromoBannerBinding.incldAdsBadge.blurView;
        blurView.b(itemRvBalancePromoBannerBinding.getRoot());
        blurView.b.a();
        blurView.setOutlineProvider(ViewOutlineProvider.BACKGROUND);
        blurView.setClipToOutline(true);
    }
}
