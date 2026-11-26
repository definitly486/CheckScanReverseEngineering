package defpackage;

import android.text.Editable;
import android.text.TextWatcher;
import com.warefly.checkscan.presentation.cheques.view.sortDialogs.view.SumSortDialog;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;

/* JADX INFO: loaded from: classes5.dex */
public final class dd8 implements TextWatcher {
    public final /* synthetic */ SumSortDialog b;

    public dd8(SumSortDialog sumSortDialog) {
        this.b = sumSortDialog;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        if (editable == null || !ta8.Z(editable, '0') || editable.length() <= 1) {
            return;
        }
        this.b.e().etFrom.setText(CommonUrlParts.Values.FALSE_INTEGER);
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
