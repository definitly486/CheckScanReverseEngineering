package yads;

import android.view.ViewGroup;
import android.widget.TextView;
import com.yandex.mobile.ads.R$id;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;

/* JADX INFO: loaded from: classes6.dex */
public final class c45 implements on0 {
    public final f80 a;

    public c45(f80 f80Var) {
        this.a = f80Var;
    }

    @Override // yads.on0
    public final void a(ViewGroup viewGroup) {
        String strValueOf;
        ViewGroup viewGroup2 = (ViewGroup) viewGroup.findViewById(R$id.monetization_ads_rating_container);
        Float f = this.a.k;
        if (f == null) {
            if (viewGroup2 != null) {
                viewGroup2.setVisibility(8);
                return;
            }
            return;
        }
        TextView textView = (TextView) viewGroup.findViewById(R$id.monetization_ads_rating_text);
        if (textView != null) {
            float fFloatValue = f.floatValue();
            try {
                DecimalFormatSymbols decimalFormatSymbols = new DecimalFormatSymbols();
                decimalFormatSymbols.setDecimalSeparator(',');
                strValueOf = new DecimalFormat("0.0", decimalFormatSymbols).format(fFloatValue);
            } catch (RuntimeException unused) {
                strValueOf = String.valueOf(fFloatValue);
            }
            textView.setText(strValueOf);
        }
    }

    @Override // yads.on0
    public final void c() {
    }
}
