package defpackage;

import android.text.Editable;
import android.view.View;
import com.warefly.checkscan.databinding.SumSortDialogLayoutBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class cd8 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ SumSortDialogLayoutBinding f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cd8(SumSortDialogLayoutBinding sumSortDialogLayoutBinding) {
        super(1);
        this.f = sumSortDialogLayoutBinding;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        SumSortDialogLayoutBinding sumSortDialogLayoutBinding = this.f;
        Editable text = sumSortDialogLayoutBinding.etFrom.getText();
        if (text != null) {
            text.clear();
        }
        Editable text2 = sumSortDialogLayoutBinding.etUnder.getText();
        if (text2 != null) {
            text2.clear();
        }
        sumSortDialogLayoutBinding.tilFrom.setErrorEnabled(false);
        sumSortDialogLayoutBinding.tilUnder.setErrorEnabled(false);
        return j59.a;
    }
}
