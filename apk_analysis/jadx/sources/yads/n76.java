package yads;

import android.content.Context;
import android.text.method.ScrollingMovementMethod;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.yandex.mobile.ads.R$drawable;
import defpackage.j59;
import defpackage.nl3;
import yads.n76;

/* JADX INFO: loaded from: classes6.dex */
public final class n76 extends LinearLayout {
    public final TextView a;
    public final TextView b;
    public final EditText c;
    public nl3 d;

    public n76(Context context) {
        super(context);
        TextView textView = new TextView(getContext());
        a(textView);
        this.a = textView;
        TextView textView2 = new TextView(getContext());
        a(textView2);
        this.b = textView2;
        EditText editTextA = a();
        this.c = editTextA;
        this.d = new defpackage.p12(7);
        setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        setOrientation(0);
        addView(textView, new LinearLayout.LayoutParams(defpackage.w65.b(pq.a((Number) 200, getResources().getDisplayMetrics())), -1));
        addView(textView2, new LinearLayout.LayoutParams(defpackage.w65.b(pq.a((Number) 60, getResources().getDisplayMetrics())), -1));
        addView(editTextA, new LinearLayout.LayoutParams(-2, -2, 1.0f));
    }

    public static void a(TextView textView) {
        int iB = defpackage.w65.b(pq.a((Number) 8, textView.getResources().getDisplayMetrics()));
        textView.setPadding(iB, iB, iB, iB);
        textView.setTextColor(-1);
        textView.setBackgroundResource(R$drawable.monetization_ads_divkit_table_cell_background);
        textView.setHorizontallyScrolling(true);
        textView.setMovementMethod(new ScrollingMovementMethod());
        textView.setMaxLines(1);
    }

    public final EditText a() {
        final EditText editText = new EditText(getContext());
        a(editText);
        editText.setImeOptions(6);
        editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: y2a
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return n76.a(this.b, editText, textView, i, keyEvent);
            }
        });
        return editText;
    }

    public static final boolean a(n76 n76Var, EditText editText, TextView textView, int i, KeyEvent keyEvent) {
        if ((keyEvent != null && keyEvent.getAction() != 0) || i != 6) {
            return false;
        }
        n76Var.d.invoke(editText.getText().toString());
        return true;
    }

    public static final j59 a(String str) {
        return j59.a;
    }
}
