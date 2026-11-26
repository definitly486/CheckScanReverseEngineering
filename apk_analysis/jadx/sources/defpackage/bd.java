package defpackage;

import android.text.Editable;
import android.text.Selection;
import android.text.TextWatcher;
import android.widget.EditText;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class bd implements TextWatcher {
    public final EditText b;
    public final i09 c;
    public final DecimalFormat d;
    public boolean e;

    public bd(EditText editText, i09 i09Var) {
        editText.getClass();
        this.b = editText;
        this.c = i09Var;
        DecimalFormatSymbols decimalFormatSymbols = new DecimalFormatSymbols(Locale.US);
        decimalFormatSymbols.setGroupingSeparator(' ');
        decimalFormatSymbols.setDecimalSeparator('.');
        DecimalFormat decimalFormat = new DecimalFormat("#,###.##", decimalFormatSymbols);
        decimalFormat.setDecimalSeparatorAlwaysShown(false);
        this.d = decimalFormat;
    }

    public final String a(String str) {
        if (str.equals(".")) {
            return "0.";
        }
        List listY = ta8.Y(str, new String[]{"."});
        Long lQ = qa8.q((String) listY.get(0));
        String str2 = this.d.format(lQ != null ? lQ.longValue() : 0L);
        if (!ta8.D(str, ".", false)) {
            str2.getClass();
            return str2;
        }
        String strSubstring = listY.size() > 1 ? (String) listY.get(1) : "";
        if (strSubstring.length() > 2) {
            strSubstring = strSubstring.substring(0, 2);
        }
        return cg.d(str2, ".", strSubstring);
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        int length;
        EditText editText = this.b;
        if (this.e || editable == null) {
            return;
        }
        this.e = true;
        try {
            String strSubstring = editable.toString().substring(0, Selection.getSelectionStart(editable));
            int i = 0;
            for (int i2 = 0; i2 < strSubstring.length(); i2++) {
                char cCharAt = strSubstring.charAt(i2);
                if (Character.isDigit(cCharAt) || cCharAt == '.' || cCharAt == ',') {
                    i++;
                }
            }
            String string = editable.toString();
            String strY = ra8.y(ra8.y(string, " ", ""), StringUtils.COMMA, ".");
            int length2 = strY.length();
            i09 i09Var = this.c;
            if (length2 > 0) {
                String strA = a(strY);
                if (!strA.equals(string)) {
                    editText.setText(strA);
                    int length3 = strA.length();
                    int i3 = 0;
                    int i4 = 0;
                    while (true) {
                        if (i3 >= length3) {
                            length = strA.length();
                            break;
                        }
                        if (Character.isDigit(strA.charAt(i3)) || strA.charAt(i3) == '.') {
                            i4++;
                        }
                        if (i4 >= i) {
                            length = i3 + 1;
                            if (length < strA.length() && strA.charAt(length) == ' ') {
                                length = i3 + 2;
                                break;
                            } else {
                                break;
                                break;
                            }
                        }
                        i3++;
                    }
                    editText.setSelection(Math.min(length, strA.length()));
                }
            } else {
                i09Var.invoke(null);
            }
            i09Var.invoke(qa8.m(strY));
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.e = false;
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
