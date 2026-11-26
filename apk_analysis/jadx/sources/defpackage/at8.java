package defpackage;

import android.text.SpannableString;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.View;
import android.widget.TextView;

/* JADX INFO: loaded from: classes5.dex */
public final class at8 {

    public static final class a extends ClickableSpan {
        public final /* synthetic */ nl3<String, j59> b;
        public final /* synthetic */ URLSpan c;

        /* JADX WARN: Multi-variable type inference failed */
        public a(nl3<? super String, j59> nl3Var, URLSpan uRLSpan) {
            this.b = nl3Var;
            this.c = uRLSpan;
        }

        @Override // android.text.style.ClickableSpan
        public final void onClick(View view) {
            view.getClass();
            String url = this.c.getURL();
            url.getClass();
            this.b.invoke(url);
        }
    }

    public static final void a(TextView textView, String str, nl3<? super String, j59> nl3Var) {
        textView.getClass();
        str.getClass();
        SpannableString spannableString = new SpannableString(ta8.g0(sx3.a(str)));
        Object[] spans = spannableString.getSpans(0, spannableString.length(), URLSpan.class);
        spans.getClass();
        for (Object obj : spans) {
            URLSpan uRLSpan = (URLSpan) obj;
            int spanStart = spannableString.getSpanStart(uRLSpan);
            int spanEnd = spannableString.getSpanEnd(uRLSpan);
            int spanFlags = spannableString.getSpanFlags(uRLSpan);
            spannableString.removeSpan(uRLSpan);
            spannableString.setSpan(new a(nl3Var, uRLSpan), spanStart, spanEnd, spanFlags);
        }
        textView.setText(spannableString);
        textView.setMovementMethod(x61.a);
    }
}
