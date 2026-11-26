package defpackage;

import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.ItemSpecialVerticalBinding;
import com.warefly.checkscan.presentation.bonuses.special.presenter.AllSpecialsPresenter;
import eightbitlab.com.blurview.BlurView;

/* JADX INFO: loaded from: classes5.dex */
public final class k58 extends vd9<mc0, ItemSpecialVerticalBinding> {
    public final AllSpecialsPresenter b;

    public interface a {
        void onSpecialAdClicked(b06 b06Var);

        void onSpecialClicked(hc0.b bVar);
    }

    public k58(AllSpecialsPresenter allSpecialsPresenter) {
        super(j58.c);
        this.b = allSpecialsPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof mc0;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, mc0 mc0Var) {
        ItemSpecialVerticalBinding itemSpecialVerticalBinding = (ItemSpecialVerticalBinding) viewBinding;
        mc0 mc0Var2 = mc0Var;
        itemSpecialVerticalBinding.getClass();
        p37 p37VarE = com.bumptech.glide.a.e(itemSpecialVerticalBinding.ivPicture);
        hc0.b bVar = mc0Var2.a;
        String str = bVar.a;
        j59 j59Var = null;
        if (str == null) {
            str = null;
        }
        p37VarE.g(str).P(qs2.h()).L(itemSpecialVerticalBinding.ivPicture);
        b06 b06Var = bVar.c;
        if (b06Var != null) {
            BlurView root = itemSpecialVerticalBinding.incldAdsBadge.getRoot();
            root.getClass();
            root.setVisibility(b06Var.b ? 0 : 8);
            BlurView root2 = itemSpecialVerticalBinding.incldAdsBadge.getRoot();
            root2.getClass();
            root2.setOnClickListener(new lb7(new qo0(this, b06Var, 4)));
            j59Var = j59.a;
        }
        if (j59Var == null) {
            BlurView root3 = itemSpecialVerticalBinding.incldAdsBadge.getRoot();
            root3.getClass();
            root3.setVisibility(8);
        }
        CardView root4 = itemSpecialVerticalBinding.getRoot();
        root4.getClass();
        root4.setOnClickListener(new lb7(new t30(this, mc0Var2, 2)));
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemSpecialVerticalBinding itemSpecialVerticalBinding = (ItemSpecialVerticalBinding) viewBinding;
        itemSpecialVerticalBinding.getClass();
        BlurView blurView = itemSpecialVerticalBinding.incldAdsBadge.blurView;
        blurView.getClass();
        CardView root = itemSpecialVerticalBinding.getRoot();
        root.getClass();
        zd3.h(blurView, root);
    }
}
