package defpackage;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import androidx.core.content.ContextCompat;
import com.warefly.checkscan.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class oo7 implements TextWatcher {
    public final /* synthetic */ po7 b;
    public final /* synthetic */ int c;
    public final /* synthetic */ EditText d;

    public oo7(po7 po7Var, int i, EditText editText) {
        this.b = po7Var;
        this.c = i;
        this.d = editText;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        po7 po7Var = this.b;
        ArrayList<String> arrayList = po7Var.d;
        arrayList.set(this.c, String.valueOf(editable));
        if (!arrayList.isEmpty()) {
            for (String str : arrayList) {
                if (str == null || ta8.M(str)) {
                    return;
                }
            }
        }
        po7Var.b.invoke(qn1.a0(arrayList, "", null, null, 0, null, 62));
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        po7 po7Var = this.b;
        List<EditText> list = po7Var.c;
        int i4 = this.c;
        if (i3 != 1) {
            EditText editText = (EditText) qn1.W(i4 - 1, list);
            if (editText != null) {
                editText.requestFocus();
                return;
            }
            return;
        }
        this.d.setBackground(ContextCompat.getDrawable(po7Var.a, R.drawable.property_edit_code_focus));
        EditText editText2 = (EditText) qn1.W(i4 + 1, list);
        if (editText2 != null) {
            editText2.requestFocus();
        }
    }
}
