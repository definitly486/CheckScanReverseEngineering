package yads;

import android.view.View;
import android.widget.CompoundButton;
import android.widget.Switch;
import com.yandex.mobile.ads.R$id;
import yads.zt5;

/* JADX INFO: loaded from: classes6.dex */
public final class zt5 extends wh0 {
    public final defpackage.bm3 a;
    public final Switch b;

    public zt5(View view, defpackage.bm3 bm3Var) {
        super(view);
        this.a = bm3Var;
        this.b = (Switch) view.findViewById(R$id.item_switch);
    }

    @Override // yads.wh0
    public final void a(final th0 th0Var) {
        this.b.setOnCheckedChangeListener(null);
        Switch r0 = this.b;
        th0Var.getClass();
        r0.setText("Debug Error Indicator");
        this.b.setChecked(th0Var.a);
        this.b.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: yna
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                zt5.a(this.a, th0Var, compoundButton, z);
            }
        });
    }

    public static final void a(zt5 zt5Var, th0 th0Var, CompoundButton compoundButton, boolean z) {
        defpackage.bm3 bm3Var = zt5Var.a;
        th0Var.getClass();
        bm3Var.invoke(sh0.DEBUG_ERROR_INDICATOR, Boolean.valueOf(z));
    }
}
