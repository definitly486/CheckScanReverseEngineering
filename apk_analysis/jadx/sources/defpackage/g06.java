package defpackage;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import androidx.core.content.ContextCompat;
import com.warefly.checkscan.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class g06 {
    public final a a;
    public final List<EditText> b;
    public final ArrayList c;

    public interface a {
        void onOtpCodeChange(String str);

        void onOtpCodeReady(String str);
    }

    public static final class b implements TextWatcher {
        public final /* synthetic */ int c;

        public b(int i) {
            this.c = i;
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            g06 g06Var = g06.this;
            ArrayList<String> arrayList = g06Var.c;
            arrayList.set(this.c, String.valueOf(editable));
            a aVar = g06Var.a;
            aVar.onOtpCodeChange(qn1.a0(qn1.R(arrayList), "", null, null, 0, null, 62));
            if (!arrayList.isEmpty()) {
                for (String str : arrayList) {
                    if (str == null || ta8.M(str)) {
                        return;
                    }
                }
            }
            aVar.onOtpCodeReady(qn1.a0(arrayList, "", null, null, 0, null, 62));
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            List<EditText> list = g06.this.b;
            int i4 = this.c;
            if (i3 == 1) {
                EditText editText = (EditText) qn1.W(i4 + 1, list);
                if (editText != null) {
                    editText.requestFocus();
                    return;
                }
                return;
            }
            EditText editText2 = (EditText) qn1.W(i4 - 1, list);
            if (editText2 != null) {
                editText2.requestFocus();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public g06(a aVar, List<? extends EditText> list) {
        this.a = aVar;
        this.b = list;
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(null);
        }
        this.c = arrayList;
    }

    public final void a() {
        List<EditText> list = this.b;
        for (EditText editText : list) {
            if (editText != null) {
                editText.setText((CharSequence) null);
            }
        }
        EditText editText2 = (EditText) qn1.V(list);
        if (editText2 != null) {
            editText2.requestFocus();
        }
    }

    public final void b() {
        int i = 0;
        for (Object obj : this.b) {
            int i2 = i + 1;
            if (i < 0) {
                u96.o();
                throw null;
            }
            EditText editText = (EditText) obj;
            if (editText != null) {
                if (i == 0) {
                    le9.e(editText);
                }
                editText.addTextChangedListener(new b(i));
            }
            i = i2;
        }
    }

    public final void c() {
        for (EditText editText : this.b) {
            if (editText != null) {
                editText.setBackground(ContextCompat.getDrawable(editText.getContext(), R.drawable.stroke_rectangle_primary60_rounded5));
            }
        }
    }

    public final void d(boolean z) {
        for (EditText editText : this.b) {
            if (editText != null) {
                editText.setBackground(z ? ContextCompat.getDrawable(editText.getContext(), R.drawable.stroke_rectangle_red60_rounded5) : ContextCompat.getDrawable(editText.getContext(), R.drawable.stroke_rectangle_primary60_rounded5));
            }
        }
    }
}
