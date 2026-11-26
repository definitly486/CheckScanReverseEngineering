package yads;

import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.yandex.mobile.ads.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class ev4 implements on0 {
    public final f80 a;

    public ev4(f80 f80Var) {
        this.a = f80Var;
    }

    @Override // yads.on0
    public final void a(ViewGroup viewGroup) {
        ImageView imageView = (ImageView) viewGroup.findViewById(R$id.monetization_ads_icon_placeholder);
        f80 f80Var = this.a;
        i80 i80Var = f80Var.c;
        i80 i80Var2 = f80Var.b;
        if (imageView != null && i80Var == null && i80Var2 == null) {
            sg6 sg6Var = new sg6((TextView) viewGroup.findViewById(R$id.monetization_ads_title));
            imageView.setVisibility(0);
            imageView.setOnClickListener(sg6Var);
        }
    }

    @Override // yads.on0
    public final void c() {
    }
}
