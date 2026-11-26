package defpackage;

import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemGroupOperationBinding;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ty5 extends vd9<xy5, ItemGroupOperationBinding> {
    public final int b;
    public final int c;

    public static final class a extends gh4 implements dm3<LayoutInflater, ViewGroup, Boolean, ItemGroupOperationBinding> {
        public final /* synthetic */ int f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i) {
            super(3);
            this.f = i;
        }

        @Override // defpackage.dm3
        public final ItemGroupOperationBinding invoke(LayoutInflater layoutInflater, ViewGroup viewGroup, Boolean bool) {
            LayoutInflater layoutInflater2 = layoutInflater;
            ViewGroup viewGroup2 = viewGroup;
            boolean zBooleanValue = bool.booleanValue();
            layoutInflater2.getClass();
            viewGroup2.getClass();
            ItemGroupOperationBinding itemGroupOperationBindingBind = ItemGroupOperationBinding.bind(layoutInflater2.inflate(this.f, viewGroup2, zBooleanValue));
            itemGroupOperationBindingBind.getClass();
            return itemGroupOperationBindingBind;
        }
    }

    public static final /* synthetic */ class b {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[m88.values().length];
            try {
                iArr[m88.PENDING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[m88.UNKNOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
            int[] iArr2 = new int[qy5.values().length];
            try {
                iArr2[qy5.CARD_OPERATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            b = iArr2;
        }
    }

    public ty5(int i, int i2, int i3) {
        super(new a(i));
        this.b = i2;
        this.c = i3;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof xy5;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, xy5 xy5Var) {
        ItemGroupOperationBinding itemGroupOperationBinding = (ItemGroupOperationBinding) viewBinding;
        xy5 xy5Var2 = xy5Var;
        itemGroupOperationBinding.getClass();
        String str = xy5Var2.h;
        String str2 = xy5Var2.g;
        itemGroupOperationBinding.tvTitle.setText(xy5Var2.c);
        itemGroupOperationBinding.tvValue.setText(xy5Var2.d);
        TextView textView = itemGroupOperationBinding.tvStatus;
        if (b.b[xy5Var2.j.ordinal()] == 1) {
            int i = b.a[xy5Var2.f.ordinal()];
            if (i == 1 || i == 2) {
                textView.setText("");
            } else {
                if (str2 == null) {
                    str2 = "";
                }
                textView.setText(str2);
                String strA = zn1.a(str);
                textView.setTextColor(Color.parseColor(strA != null ? strA : "#000000"));
            }
        } else {
            if (str2 == null) {
                str2 = "";
            }
            textView.setText(str2);
            String strA2 = zn1.a(str);
            textView.setTextColor(Color.parseColor(strA2 != null ? strA2 : "#000000"));
        }
        boolean z = xy5Var2.i;
        TextView textView2 = itemGroupOperationBinding.tvExpand;
        if (z) {
            textView2.setText(itemGroupOperationBinding.getRoot().getContext().getString(R.string.operations_unexpand_title));
            itemGroupOperationBinding.ivExpand.setRotation(180.0f);
            itemGroupOperationBinding.rvSuboperations.setVisibility(0);
        } else {
            textView2.setText(itemGroupOperationBinding.getRoot().getContext().getString(R.string.operations_expand_title));
            itemGroupOperationBinding.ivExpand.setRotation(0.0f);
            itemGroupOperationBinding.rvSuboperations.setVisibility(8);
        }
        boolean z2 = xy5Var2.i;
        ImageView imageView = itemGroupOperationBinding.ivExpand;
        imageView.getClass();
        final a87 a87Var = new a87(z2, imageView, new vy5(xy5Var2, itemGroupOperationBinding), new wy5(xy5Var2, itemGroupOperationBinding));
        itemGroupOperationBinding.getRoot().setOnClickListener(new View.OnClickListener() { // from class: sy5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                a87Var.a();
            }
        });
        RecyclerView recyclerView = itemGroupOperationBinding.rvSuboperations;
        recyclerView.setLayoutManager(new LinearLayoutManager(itemGroupOperationBinding.getRoot().getContext(), 1, false));
        List list = xy5Var2.e;
        if (list == null) {
            list = kx2.b;
        }
        recyclerView.setAdapter(new jz7(this.b, list, null, jq0.i, uy5.f, 4));
        com.bumptech.glide.a.e(itemGroupOperationBinding.ivIcon).h(xy5Var2.b).P(qs2.h()).L(itemGroupOperationBinding.ivIcon);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemGroupOperationBinding itemGroupOperationBinding = (ItemGroupOperationBinding) viewBinding;
        itemGroupOperationBinding.getClass();
        int i = this.c;
        if (i > 0) {
            itemGroupOperationBinding.rvSuboperations.addItemDecoration(new fy8(i, false));
        }
    }

    public /* synthetic */ ty5() {
        this(R.layout.item_group_operation, R.layout.item_plain_operation, 0);
    }
}
