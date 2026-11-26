package defpackage;

import android.view.View;
import android.widget.ImageButton;

/* JADX INFO: loaded from: classes5.dex */
public final class f42 extends gh4 implements nl3<View, j59> {
    public final /* synthetic */ g42 f;
    public final /* synthetic */ gr6 g;
    public final /* synthetic */ ImageButton h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f42(g42 g42Var, gr6 gr6Var, ImageButton imageButton) {
        super(1);
        this.f = g42Var;
        this.g = gr6Var;
        this.h = imageButton;
    }

    @Override // defpackage.nl3
    public final j59 invoke(View view) {
        view.getClass();
        this.f.c.invoke(Long.valueOf(this.g.a), Boolean.valueOf(!this.h.isSelected()));
        return j59.a;
    }
}
