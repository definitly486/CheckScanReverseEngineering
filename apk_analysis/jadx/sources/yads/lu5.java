package yads;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.yandex.mobile.ads.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class lu5 extends LinearLayout {
    public lu5(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setId(R$id.monetization_ads_divkit_div_tabbed_tab_title_item);
        setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        setOrientation(1);
        setGravity(0);
    }

    public lu5(Context context) {
        this(context, null);
    }
}
