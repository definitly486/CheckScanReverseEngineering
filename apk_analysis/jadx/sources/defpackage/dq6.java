package defpackage;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.databinding.PromocodeItemBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class dq6 extends vd9<er6, PromocodeItemBinding> {
    public final bm3<Integer, Boolean, j59> b;
    public final nl3<Integer, j59> c;

    public static final /* synthetic */ class a extends qm3 implements dm3<LayoutInflater, ViewGroup, Boolean, PromocodeItemBinding> {
        public static final a c = new a(3, PromocodeItemBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/PromocodeItemBinding;", 0);

        @Override // defpackage.dm3
        public final PromocodeItemBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            return PromocodeItemBinding.inflate(layoutInflater2, viewGroup, zBooleanValue);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public dq6(bm3<? super Integer, ? super Boolean, j59> bm3Var, nl3<? super Integer, j59> nl3Var) {
        super(a.c);
        this.b = bm3Var;
        this.c = nl3Var;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof er6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, er6 er6Var) {
        PromocodeItemBinding promocodeItemBinding = (PromocodeItemBinding) viewBinding;
        final er6 er6Var2 = er6Var;
        promocodeItemBinding.getClass();
        promocodeItemBinding.tvTitle.setText(er6Var2.f);
        promocodeItemBinding.tvSubtitle.setText(er6Var2.e);
        com.bumptech.glide.a.e(promocodeItemBinding.ivIcon).h(er6Var2.d).P(qs2.h()).i().L(promocodeItemBinding.ivIcon);
        er6.b bVar = er6Var2.a;
        if (bVar != null) {
            er6.a aVar = bVar.a;
            promocodeItemBinding.tvSale.setText(bVar.c);
            promocodeItemBinding.tvSaleSubtitle.setText(bVar.b);
            promocodeItemBinding.tvBadge.setText(aVar.b);
            String strConcat = aVar.c;
            if (strConcat == null) {
                strConcat = "#999DA6";
            }
            if (!ta8.D(strConcat, "#", false)) {
                strConcat = "#".concat(strConcat);
            }
            String string = ta8.f0(strConcat).toString();
            String strConcat2 = aVar.a;
            if (strConcat2 == null) {
                strConcat2 = "#FFB300";
            }
            if (!ta8.D(strConcat2, "#", false)) {
                strConcat2 = "#".concat(strConcat2);
            }
            String string2 = ta8.f0(strConcat2).toString();
            promocodeItemBinding.tvBadge.setTextColor(Color.parseColor(string));
            Drawable background = promocodeItemBinding.tvBadge.getBackground();
            if (background != null) {
                background.setTint(Color.parseColor(string2));
            }
        }
        promocodeItemBinding.btnFave.setSelected(er6Var2.c);
        promocodeItemBinding.btnFave.setOnClickListener(new View.OnClickListener() { // from class: bq6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                bm3<Integer, Boolean, j59> bm3Var = this.b.b;
                er6 er6Var3 = er6Var2;
                bm3Var.invoke(Integer.valueOf(er6Var3.b), Boolean.valueOf(!er6Var3.c));
            }
        });
        promocodeItemBinding.getRoot().setOnClickListener(new View.OnClickListener() { // from class: cq6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.b.c.invoke(Integer.valueOf(er6Var2.b));
            }
        });
    }
}
