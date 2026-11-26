package yads;

import android.view.View;
import defpackage.u96;
import java.util.LinkedHashMap;
import java.util.List;
import yads.bc0;

/* JADX INFO: loaded from: classes6.dex */
public final class bc0 extends rf6 {
    public final ac0 c;
    public final yb0 d;
    public final sz e;
    public final String f;

    public bc0(View view, ac0 ac0Var, yb0 yb0Var, String str) {
        sz szVar = new sz();
        super(view);
        this.c = ac0Var;
        this.d = yb0Var;
        this.e = szVar;
        this.f = str;
    }

    public static final void a(bc0 bc0Var, yb0 yb0Var, View view) {
        LinkedHashMap linkedHashMapA = bc0Var.e.a(view, null);
        ac0 ac0Var = bc0Var.c;
        String str = yb0Var.a;
        ot3 ot3Var = ac0Var.b;
        if (ot3Var != null) {
            h16 h16Var = ac0Var.c;
            List list = ot3Var.c;
            vz vzVar = vz.a;
            h16Var.a(list, vzVar, linkedHashMapA);
            String str2 = ot3Var.d;
            if (str2 != null) {
                ac0Var.c.a(u96.h(str2), vzVar, defpackage.mx2.b);
            }
        }
        q84 q84Var = ac0Var.d;
        defpackage.uz4 uz4Var = new defpackage.uz4();
        d75 d75Var = d75.CUSTOM;
        uz4Var.put("click_type", "custom");
        uz4Var.put("asset_name", str);
        String str3 = ac0Var.a.c.a;
        if (str3 != null) {
            uz4Var.put("ad_unit_id", str3);
        }
        uz4Var.put("ad_type", ac0Var.a.a.b);
        uz4Var.put("adapter", c75.a);
        defpackage.uz4 uz4VarB = uz4Var.b();
        e75 e75Var = e75.AD_LOADING_RESULT;
        q84Var.a(new g75("click", new LinkedHashMap(uz4VarB), (c) null));
        zb0 zb0Var = (zb0) yb0Var.b.get(yb0Var.a());
        if (zb0Var != null) {
            zb0Var.onCustomAssetClicked(bc0Var.f);
        }
    }

    @Override // yads.rf6
    public final void b(View view, Object obj) {
        final yb0 yb0Var = this.d;
        view.setOnClickListener(new View.OnClickListener() { // from class: io9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                bc0.a(this.b, yb0Var, view2);
            }
        });
    }

    @Override // yads.rf6
    public final void a(View view) {
        view.setVisibility(8);
        view.setOnClickListener(null);
        view.setOnTouchListener(null);
        view.setSelected(false);
    }

    @Override // yads.rf6
    public final boolean a(View view, Object obj) {
        yb0 yb0Var = this.d;
        return (((zb0) yb0Var.b.get(yb0Var.a())) == null || this.d.a() == null) ? false : true;
    }
}
