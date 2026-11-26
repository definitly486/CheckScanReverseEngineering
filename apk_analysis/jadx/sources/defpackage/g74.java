package defpackage;

import androidx.recyclerview.widget.GridLayoutManager;
import com.warefly.checkscan.insuranceShowcase.presentation.showcase.view.InsuranceShowcaseFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class g74 extends GridLayoutManager.SpanSizeLookup {
    public final /* synthetic */ InsuranceShowcaseFragment a;

    public g74(InsuranceShowcaseFragment insuranceShowcaseFragment) {
        this.a = insuranceShowcaseFragment;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
    public final int getSpanSize(int i) {
        i58 i58Var = this.a.h;
        return (i58Var != null ? i58Var.i.e(i) : null) instanceof f74 ? 2 : 1;
    }
}
