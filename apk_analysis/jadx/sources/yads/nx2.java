package yads;

import android.os.Build;
import android.widget.TextView;

/* JADX INFO: loaded from: classes6.dex */
public final class nx2 {
    public final TextView a;
    public int b;
    public int c;
    public int d = -1;

    public nx2(TextView textView) {
        this.a = textView;
        textView.setIncludeFontPadding(false);
    }

    public final void a(int i) {
        if (i == -1) {
            this.b = 0;
            this.c = 0;
            this.a.setLineSpacing(0.0f, 1.0f);
            if (Build.VERSION.SDK_INT >= 28) {
                this.a.setFallbackLineSpacing(true);
                return;
            }
            return;
        }
        int fontMetricsInt = i - this.a.getPaint().getFontMetricsInt(null);
        if (fontMetricsInt < 0) {
            int i2 = fontMetricsInt / 2;
            this.b = i2;
            this.c = fontMetricsInt - i2;
        } else {
            int i3 = fontMetricsInt / 2;
            this.c = i3;
            this.b = fontMetricsInt - i3;
        }
        this.a.setLineSpacing(i - this.a.getPaint().getFontMetrics(null), 1.0f);
        if (Build.VERSION.SDK_INT >= 28) {
            this.a.setFallbackLineSpacing(false);
        }
    }
}
