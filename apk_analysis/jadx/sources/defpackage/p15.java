package defpackage;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import androidx.appcompat.widget.AppCompatEditText;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class p15 implements TextWatcher {
    public final na1 b;
    public final WeakReference<EditText> c;
    public String d;
    public int e;

    public p15(na1 na1Var, AppCompatEditText appCompatEditText) {
        na1Var.getClass();
        this.b = na1Var;
        this.c = new WeakReference<>(appCompatEditText);
        this.d = "";
    }

    /* JADX WARN: Code duplicated, block: B:33:0x007e A[PHI: r6
      0x007e: PHI (r6v9 int) = (r6v4 int), (r6v6 int) binds: [B:32:0x007c, B:63:0x00cc] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:62:0x00cb  */
    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        Integer numValueOf;
        Integer numValueOf2;
        boolean zA;
        if (editable == null) {
            return;
        }
        String string = editable.toString();
        na1 na1Var = this.b;
        j15 j15Var = (j15) na1Var.a;
        if (j15Var != null) {
            ArrayList arrayList = (ArrayList) j15Var.c;
            if (arrayList == null) {
                aa4.j("mMask");
                throw null;
            }
            numValueOf = Integer.valueOf(arrayList.size());
        } else {
            numValueOf = null;
        }
        int iIntValue = numValueOf != null ? numValueOf.intValue() : 0;
        if (string.length() > this.d.length() && iIntValue < string.length()) {
            string = this.d;
        }
        string.getClass();
        j15 j15Var2 = (j15) na1Var.a;
        ui3 ui3Var = j15Var2 != null ? new ui3(j15Var2, string) : null;
        if (ui3Var != null) {
            EditText editText = this.c.get();
            if (editText != null) {
                int length = ui3Var.length() - this.d.length();
                editText.removeTextChangedListener(this);
                editText.setText(ui3Var);
                editText.addTextChangedListener(this);
                int i = this.e;
                if (length > 0) {
                    i += length;
                } else if (length >= 0) {
                    j15 j15Var3 = (j15) na1Var.a;
                    j15 j15Var4 = j15Var3 != null ? j15Var3 : null;
                    if (j15Var3 != null) {
                        ArrayList arrayList2 = (ArrayList) j15Var3.c;
                        if (arrayList2 == null) {
                            aa4.j("mMask");
                            throw null;
                        }
                        numValueOf2 = Integer.valueOf(arrayList2.size());
                    } else {
                        numValueOf2 = null;
                    }
                    int iIntValue2 = numValueOf2 != null ? numValueOf2.intValue() : 0;
                    if (i > iIntValue2) {
                        i = iIntValue2;
                    }
                    if (1 >= i) {
                        i = 1;
                    }
                    if (j15Var4 != null) {
                        int i2 = i - 1;
                        ArrayList arrayList3 = (ArrayList) j15Var4.c;
                        if (arrayList3 == null) {
                            aa4.j("mMask");
                            throw null;
                        }
                        k15 k15Var = (k15) arrayList3.get(i2);
                        if (k15Var != null) {
                            zA = k15Var.a();
                        } else {
                            zA = false;
                        }
                    } else {
                        zA = false;
                    }
                    if (zA) {
                        i--;
                    }
                } else {
                    i--;
                }
                int length2 = ui3Var.length();
                if (i > length2) {
                    i = length2;
                }
                editText.setSelection(i > 0 ? i : 0);
            }
            this.d = ui3Var.toString();
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        charSequence.getClass();
        EditText editText = this.c.get();
        if (editText != null) {
            this.e = editText.getSelectionStart();
        }
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        charSequence.getClass();
    }
}
