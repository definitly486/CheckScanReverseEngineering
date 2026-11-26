package defpackage;

import android.text.Editable;
import android.text.TextWatcher;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class p76 implements TextWatcher {
    public final String b;
    public final nl3<String, j59> c;
    public boolean d;
    public boolean e;

    public p76(int i, String str, nl3 nl3Var) {
        this.b = str;
        this.c = nl3Var;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        String str;
        if (this.d || this.e) {
            return;
        }
        this.d = true;
        if (editable != null) {
            String string = editable.toString();
            Pattern patternCompile = Pattern.compile("\\D+");
            patternCompile.getClass();
            string.getClass();
            Matcher matcher = patternCompile.matcher(string);
            String string2 = "";
            String strReplaceAll = matcher.replaceAll("");
            strReplaceAll.getClass();
            editable.clear();
            int i = 0;
            int i2 = 0;
            while (true) {
                str = this.b;
                if (i >= str.length()) {
                    break;
                }
                if (str.charAt(i) == '#') {
                    i2++;
                }
                i++;
            }
            int iMin = StrictMath.min(i2, strReplaceAll.length());
            if (iMin < 0) {
                c9.f(kv2.b(iMin, "Requested character count ", " is less than zero."));
                return;
            }
            int length = strReplaceAll.length();
            if (iMin > length) {
                iMin = length;
            }
            CharSequence charSequenceSubSequence = strReplaceAll.subSequence(0, iMin);
            int i3 = 0;
            for (int i4 = 0; i4 < charSequenceSubSequence.length(); i4++) {
                char cCharAt = charSequenceSubSequence.charAt(i4);
                int length2 = str.length();
                int i5 = i3;
                while (i3 < length2) {
                    if (str.charAt(i3) == '#') {
                        StringBuilder sb = new StringBuilder();
                        sb.append((Object) string2);
                        sb.append(cCharAt);
                        string2 = sb.toString();
                        i5++;
                        break;
                    }
                    char cCharAt2 = str.charAt(i3);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append((Object) string2);
                    sb2.append(cCharAt2);
                    string2 = sb2.toString();
                    i5 = i3 + 1;
                    i3 = i5;
                }
                i3 = i5;
            }
            editable.append((CharSequence) string2);
        }
        this.c.invoke(String.valueOf(editable));
        this.d = false;
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.e = i2 > i3;
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (this.e) {
            this.c.invoke(String.valueOf(charSequence));
        }
    }
}
