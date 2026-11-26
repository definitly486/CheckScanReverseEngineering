package defpackage;

import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.text.style.BulletSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.appcompat.widget.AppCompatTextView;

/* JADX INFO: loaded from: classes5.dex */
public final class t05 implements s05 {
    @Override // defpackage.s05
    public final void a(String str, AppCompatTextView appCompatTextView, int i) {
        str.getClass();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        int i2 = g58.a;
        ep3.a aVar = new ep3.a(g17.b(j17.e, spannableStringBuilder));
        while (aVar.hasNext()) {
            String value = ((r15) aVar.next()).getValue();
            int iK = ta8.K(spannableStringBuilder, value, 0, false, 6);
            spannableStringBuilder.replace(iK, value.length() + iK, (CharSequence) new String());
        }
        g17 g17Var = j17.a;
        String string = spannableStringBuilder.toString();
        string.getClass();
        ep3.a aVar2 = new ep3.a(g17.b(g17Var, string));
        while (aVar2.hasNext()) {
            String value2 = ((r15) aVar2.next()).getValue();
            int iK2 = ta8.K(spannableStringBuilder, value2, 0, false, 6);
            String strY = ra8.y(value2, "**", new String());
            spannableStringBuilder.replace(iK2, value2.length() + iK2, (CharSequence) strY);
            spannableStringBuilder.setSpan(new StyleSpan(1), iK2, strY.length() + iK2, 18);
        }
        g17 g17Var2 = j17.b;
        String string2 = spannableStringBuilder.toString();
        string2.getClass();
        ep3.a aVar3 = new ep3.a(g17.b(g17Var2, string2));
        while (aVar3.hasNext()) {
            String value3 = ((r15) aVar3.next()).getValue();
            int iK3 = ta8.K(spannableStringBuilder, value3, 0, false, 6);
            String strY2 = ra8.y(value3, "_", new String());
            spannableStringBuilder.replace(iK3, value3.length() + iK3, (CharSequence) strY2);
            spannableStringBuilder.setSpan(new StyleSpan(2), iK3, strY2.length() + iK3, 18);
        }
        g17 g17Var3 = j17.d;
        String string3 = spannableStringBuilder.toString();
        string3.getClass();
        ep3.a aVar4 = new ep3.a(g17.b(g17Var3, string3));
        while (aVar4.hasNext()) {
            String strY3 = ra8.y(((r15) aVar4.next()).getValue(), "\n", "");
            int iK4 = ta8.K(spannableStringBuilder, strY3, 0, false, 6);
            String strY4 = ra8.y(strY3, "- ", new String());
            spannableStringBuilder.replace(iK4, strY3.length() + iK4, (CharSequence) strY4);
            spannableStringBuilder.setSpan(new BulletSpan(10, -16777216), iK4, strY4.length() + iK4, 18);
        }
        g17 g17Var4 = j17.c;
        String string4 = spannableStringBuilder.toString();
        string4.getClass();
        ep3.a aVar5 = new ep3.a(g17.b(g17Var4, string4));
        while (aVar5.hasNext()) {
            String value4 = ((r15) aVar5.next()).getValue();
            String strSubstring = value4.substring(ta8.J('[', 0, 6, value4) + 1, ta8.J(']', 0, 6, value4));
            int iK5 = ta8.K(spannableStringBuilder, value4, 0, false, 6);
            String strSubstring2 = value4.substring(ta8.J('(', 0, 6, value4) + 1, ta8.J(')', 0, 6, value4));
            int length = strSubstring.length() + iK5;
            spannableStringBuilder.replace(iK5, value4.length() + iK5, (CharSequence) strSubstring);
            spannableStringBuilder.setSpan(new UnderlineSpan(), iK5, length, 18);
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i), iK5, length, 18);
            spannableStringBuilder.setSpan(new r05(strSubstring2), iK5, length, 18);
        }
        appCompatTextView.setText(spannableStringBuilder);
        appCompatTextView.setMovementMethod(LinkMovementMethod.getInstance());
        appCompatTextView.setLinkTextColor(i);
    }
}
