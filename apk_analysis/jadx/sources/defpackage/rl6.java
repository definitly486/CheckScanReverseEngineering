package defpackage;

import com.warefly.checkscan.R;
import com.warefly.checkscan.profile.domain.entities.PromocodeBlock;
import com.warefly.checkscan.profile.presentation.main.presenter.ProfilePresenter;

/* JADX INFO: loaded from: classes5.dex */
public abstract class rl6 implements ql6 {
    public final int a;
    public final Integer b;

    public static final class a extends rl6 {
        public final PromocodeBlock c;

        public a(PromocodeBlock promocodeBlock) {
            super(R.string.profile_item_activate_promocode, Integer.valueOf(R.drawable.ic_profile_activate_promocode));
            this.c = promocodeBlock;
        }

        @Override // defpackage.ql6
        public final void e(ProfilePresenter profilePresenter) {
            profilePresenter.onActivatePromocodeClick(this.c);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && this.c.equals(((a) obj).c);
        }

        public final int hashCode() {
            return this.c.hashCode();
        }

        public final String toString() {
            return "ActivatePromocode(promocodeBlock=" + this.c + ")";
        }
    }

    public static final class b extends rl6 {
        public static final b c = new b(R.string.profile_item_electro_cheques, Integer.valueOf(R.drawable.ic_electro_cheques_light));

        @Override // defpackage.ql6
        public final void e(ProfilePresenter profilePresenter) {
            profilePresenter.onElectroChequeClick();
        }
    }

    public static final class c extends rl6 {
        public static final c c = new c(R.string.profile_item_faq, Integer.valueOf(R.drawable.ic_faq_light));

        @Override // defpackage.ql6
        public final void e(ProfilePresenter profilePresenter) {
            profilePresenter.onFaqClick();
        }
    }

    public static final class d extends rl6 {
        public static final d c = new d(R.string.profile_item_favorites, Integer.valueOf(R.drawable.ic_favorites_light));

        @Override // defpackage.ql6
        public final void e(ProfilePresenter profilePresenter) {
            profilePresenter.onFavouriteClick();
        }
    }

    public static final class e extends rl6 {
        public static final e c = new e(R.string.profile_item_history_shop, Integer.valueOf(R.drawable.ic_shop_history_light));

        @Override // defpackage.ql6
        public final void e(ProfilePresenter profilePresenter) {
            profilePresenter.onHistoryShopClick();
        }
    }

    public static final class f extends rl6 {
        public static final f c = new f(R.string.profile_item_support, Integer.valueOf(R.drawable.ic_support_light));

        @Override // defpackage.ql6
        public final void e(ProfilePresenter profilePresenter) {
            profilePresenter.onFeedbackClick();
        }
    }

    public rl6(int i, Integer num) {
        this.a = i;
        this.b = num;
    }

    @Override // defpackage.pz3
    public final Object f() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.a);
        sb.append(this.b);
        return sb.toString();
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }
}
