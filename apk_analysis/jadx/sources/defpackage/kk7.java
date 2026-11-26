package defpackage;

import android.text.Editable;
import android.text.TextWatcher;
import com.warefly.checkscan.presentation.bonuses.view.chooseRegion.view.ChooseRegionFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class kk7 implements TextWatcher {
    public final ChooseRegionFragment.a b;

    public kk7(ChooseRegionFragment.a aVar) {
        this.b = aVar;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        this.b.invoke(editable);
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
