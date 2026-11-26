package yads;

import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public final class o95 {
    public final DecimalFormat a;

    public o95() {
        DecimalFormatSymbols decimalFormatSymbols = new DecimalFormatSymbols(Locale.US);
        decimalFormatSymbols.setGroupingSeparator(' ');
        this.a = new DecimalFormat("#,###,###", decimalFormatSymbols);
    }

    public final String a(String str) throws rg4 {
        try {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < str.length(); i++) {
                char cCharAt = str.charAt(i);
                if (!defpackage.ga1.e(cCharAt)) {
                    sb.append(cCharAt);
                }
            }
            return this.a.format(Long.parseLong(sb.toString()));
        } catch (NumberFormatException unused) {
            String.format("Could not parse review count value. Review Count value is %s", Arrays.copyOf(new Object[]{str}, 1));
            throw new rg4("Native Ad json has not required attributes");
        }
    }
}
