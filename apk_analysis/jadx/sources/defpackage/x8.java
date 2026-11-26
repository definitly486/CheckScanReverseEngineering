package defpackage;

import android.text.Editable;
import android.text.TextWatcher;
import com.warefly.checkscan.auth.presentation.addEmail.presenter.AddEmailPresenter;
import com.warefly.checkscan.auth.presentation.addEmail.view.AddEmailFragment;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.support.presentation.form.view.SupportFormFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class x8 implements TextWatcher {
    public final /* synthetic */ int b;
    public final /* synthetic */ BaseFragment c;

    public /* synthetic */ x8(BaseFragment baseFragment, int i) {
        this.b = i;
        this.c = baseFragment;
    }

    private final void a(Editable editable) {
    }

    private final void b(Editable editable) {
    }

    private final void c(CharSequence charSequence, int i, int i2, int i3) {
    }

    private final void d(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        int i = this.b;
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        int i4 = this.b;
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        int i4 = this.b;
        BaseFragment baseFragment = this.c;
        switch (i4) {
            case 0:
                AddEmailPresenter addEmailPresenter = ((AddEmailFragment) baseFragment).presenter;
                if (addEmailPresenter != null) {
                    addEmailPresenter.onEmailChanged(charSequence.toString());
                    return;
                } else {
                    aa4.j("presenter");
                    throw null;
                }
            default:
                ((SupportFormFragment) baseFragment).o().onDescriptionChanged(charSequence.toString());
                return;
        }
    }
}
