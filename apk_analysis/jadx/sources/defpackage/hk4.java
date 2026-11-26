package defpackage;

import android.text.TextWatcher;
import android.view.View;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.textfield.TextInputEditText;
import com.warefly.checkscan.databinding.ItemRvLandingTextFieldWithBackgroundBinding;
import com.warefly.checkscan.presentation.landing.presenter.LandingPresenter;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class hk4 extends vd9<ik4, ItemRvLandingTextFieldWithBackgroundBinding> {
    public final LandingPresenter b;
    public final LinkedHashMap c;

    public hk4(LandingPresenter landingPresenter) {
        super(fk4.c);
        this.b = landingPresenter;
        this.c = new LinkedHashMap();
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof ik4;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, ik4 ik4Var) {
        final ItemRvLandingTextFieldWithBackgroundBinding itemRvLandingTextFieldWithBackgroundBinding = (ItemRvLandingTextFieldWithBackgroundBinding) viewBinding;
        final ik4 ik4Var2 = ik4Var;
        itemRvLandingTextFieldWithBackgroundBinding.getClass();
        itemRvLandingTextFieldWithBackgroundBinding.tlText.setHint(ik4Var2.c);
        itemRvLandingTextFieldWithBackgroundBinding.tlText.setEnabled(ik4Var2.g);
        TextInputEditText textInputEditText = itemRvLandingTextFieldWithBackgroundBinding.etText;
        if (textInputEditText.hasFocus()) {
            return;
        }
        textInputEditText.setInputType(ik4Var2.e);
        textInputEditText.setImeOptions(ik4Var2.i);
        textInputEditText.setText(ik4Var2.d);
        textInputEditText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: ek4
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                hk4 hk4Var = this.b;
                LinkedHashMap linkedHashMap = hk4Var.c;
                ik4 ik4Var3 = ik4Var2;
                String str = ik4Var3.a;
                ItemRvLandingTextFieldWithBackgroundBinding itemRvLandingTextFieldWithBackgroundBinding2 = itemRvLandingTextFieldWithBackgroundBinding;
                if (!z) {
                    itemRvLandingTextFieldWithBackgroundBinding2.etText.removeTextChangedListener((TextWatcher) linkedHashMap.get(str));
                    return;
                }
                int i = ik4Var3.e;
                if (linkedHashMap.get(str) == null) {
                    linkedHashMap.put(str, new gk4(hk4Var, str, i));
                }
                itemRvLandingTextFieldWithBackgroundBinding2.etText.addTextChangedListener((TextWatcher) linkedHashMap.get(str));
            }
        });
    }
}
