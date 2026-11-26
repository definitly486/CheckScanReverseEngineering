package defpackage;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.flows.promotions.view.PromotionFlowFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class uh7 implements lk3 {
    public final int a;

    public uh7(int i) {
        this.a = i;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        PromotionFlowFragment promotionFlowFragment = new PromotionFlowFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("promotionId", this.a);
        promotionFlowFragment.setArguments(bundle);
        return promotionFlowFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return uh7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof uh7) && this.a == ((uh7) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        return kv2.b(this.a, "PromotionRegistrationFlow(promotionId=", ")");
    }
}
