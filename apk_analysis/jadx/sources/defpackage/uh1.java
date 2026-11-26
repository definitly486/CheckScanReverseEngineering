package defpackage;

import android.view.View;
import android.widget.TextView;
import com.warefly.checkscan.databinding.ItemPollBinding;
import com.warefly.checkscan.presentation.cheques.view.ChequesFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class uh1 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ z96 f;
    public final /* synthetic */ TextView g;
    public final /* synthetic */ ItemPollBinding h;
    public final /* synthetic */ ChequesFragment i;
    public final /* synthetic */ z96.a j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public uh1(z96 z96Var, TextView textView, ItemPollBinding itemPollBinding, ChequesFragment chequesFragment, z96.a aVar) {
        super(1);
        this.f = z96Var;
        this.g = textView;
        this.h = itemPollBinding;
        this.i = chequesFragment;
        this.j = aVar;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        z96 z96Var = this.f;
        z96Var.e = true;
        this.g.setVisibility(8);
        ItemPollBinding itemPollBinding = this.h;
        itemPollBinding.groupContent.setVisibility(8);
        String str = z96Var.a;
        ChequesFragment chequesFragment = this.i;
        if (str != null) {
            ze4<Object>[] ze4VarArr = ChequesFragment.q;
            ((v05) chequesFragment.i.getValue()).a(itemPollBinding.tvCompletion, str);
            itemPollBinding.tvCompletion.setVisibility(0);
        }
        itemPollBinding.btnClose.setVisibility(0);
        chequesFragment.o().onPollVariantComplete(this.j, z96Var);
        itemPollBinding.tvCompletion.setVisibility(0);
        return j59.a;
    }
}
