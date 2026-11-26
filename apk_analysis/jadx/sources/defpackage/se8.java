package defpackage;

import android.text.Editable;
import android.text.TextWatcher;
import com.warefly.checkscan.support.presentation.form.view.SupportFormFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class se8 implements TextWatcher {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ se8(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    private final void a(Editable editable) {
    }

    private final void b(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        switch (this.b) {
            case 0:
                break;
            default:
                editable.getClass();
                break;
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        switch (this.b) {
            case 0:
                break;
            default:
                charSequence.getClass();
                break;
        }
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        int i4 = this.b;
        Object obj = this.c;
        switch (i4) {
            case 0:
                ((SupportFormFragment) obj).o().onNameChanged(charSequence.toString());
                break;
            default:
                charSequence.getClass();
                ((fm3) obj).invoke(charSequence, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
                break;
        }
    }
}
