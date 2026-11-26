package yads;

import android.view.View;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class a45 extends rf6 {
    public final q84 c;

    public a45(View view, q84 q84Var) {
        super(view);
        this.c = q84Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // yads.rf6
    public final void a(View view) {
        ((b45) view).setRating(0.0f);
        view.setVisibility(8);
        view.setOnClickListener(null);
        view.setOnTouchListener(null);
        view.setSelected(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // yads.rf6
    public final void b(View view, Object obj) {
        String str = (String) obj;
        try {
            float f = Float.parseFloat(str);
            b45 b45Var = (b45) view;
            if (f < 0.0f) {
                f = 0.0f;
            }
            b45Var.setRating(f);
        } catch (NumberFormatException e) {
            String.format("Could not parse rating value. Rating value is %s", Arrays.copyOf(new Object[]{str}, 1));
            this.c.reportError("Could not parse rating value", e);
        }
    }

    @Override // yads.rf6
    public final /* bridge */ /* synthetic */ boolean a(View view, Object obj) {
        return true;
    }
}
