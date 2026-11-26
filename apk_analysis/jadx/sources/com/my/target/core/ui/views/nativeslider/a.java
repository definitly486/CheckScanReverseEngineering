package com.my.target.core.ui.views.nativeslider;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.my.target.core.ui.views.nativeslider.b;
import com.my.target.zh;
import defpackage.b3a;
import defpackage.h14;
import defpackage.l3a;
import defpackage.s0a;
import defpackage.y14;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends RecyclerView.Adapter {
    public final Context i;
    public final ArrayList t = new ArrayList();
    public com.my.target.core.ui.views.nativeslider.b.a u;

    /* JADX INFO: renamed from: com.my.target.core.ui.views.nativeslider.a$a, reason: collision with other inner class name */
    public static class C0150a extends FrameLayout {
        public C0150a(Context context) {
            super(context);
        }

        @Override // android.widget.FrameLayout, android.view.View
        public final void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            if (size == 0) {
                size = 0;
            }
            if (size2 == 0) {
                size2 = 0;
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, mode), View.MeasureSpec.makeMeasureSpec(size2, mode2));
        }
    }

    public static class b extends RecyclerView.ViewHolder {
        public final zh l;
        public final FrameLayout m;

        public b(C0150a c0150a, zh zhVar, FrameLayout frameLayout) {
            super(c0150a);
            this.l = zhVar;
            this.m = frameLayout;
        }
    }

    public a(Context context) {
        this.i = context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.t.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        if (i == 0) {
            return 1;
        }
        return i == this.t.size() - 1 ? 2 : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        b bVar = (b) viewHolder;
        if (this.u != null) {
            int i2 = com.my.target.core.ui.views.nativeslider.b.p;
        }
        ArrayList arrayList = this.t;
        b3a b3aVar = i < arrayList.size() ? (b3a) arrayList.get(i) : null;
        h14 h14Var = b3aVar != null ? b3aVar.p : null;
        if (h14Var != null) {
            bVar.l.setPlaceholderDimensions(h14Var.b, h14Var.c);
            Bitmap bitmap = (Bitmap) h14Var.d;
            zh zhVar = bVar.l;
            if (bitmap != null) {
                zhVar.setImageBitmap(bitmap);
            } else {
                s0a.c(h14Var, zhVar);
            }
        }
        bVar.l.setContentDescription("card_" + i);
        bVar.m.setOnClickListener(new View.OnClickListener() { // from class: tm9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                b.a aVar = this.b.u;
                if (aVar != null) {
                    b bVar2 = b.this;
                    if (bVar2.o || !bVar2.isClickable()) {
                        return;
                    }
                    bVar2.l.findContainingItemView(view);
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        Context context = this.i;
        C0150a c0150a = new C0150a(context);
        c0150a.setLayoutParams(new RelativeLayout.LayoutParams(-2, -1));
        zh zhVar = new zh(context);
        l3a.n(zhVar, "card_media_view");
        c0150a.addView(zhVar, new FrameLayout.LayoutParams(-1, -1));
        FrameLayout frameLayout = new FrameLayout(context);
        if (viewGroup.isClickable()) {
            l3a.h(frameLayout, 0, 1153821432);
        }
        c0150a.addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        return new b(c0150a, zhVar, frameLayout);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
        b3a b3aVar;
        b bVar = (b) viewHolder;
        int adapterPosition = bVar.getAdapterPosition();
        zh zhVar = bVar.l;
        if (adapterPosition > 0) {
            ArrayList arrayList = this.t;
            if (adapterPosition < arrayList.size()) {
                b3aVar = (b3a) arrayList.get(adapterPosition);
            } else {
                b3aVar = null;
            }
        } else {
            b3aVar = null;
        }
        zhVar.setImageData(null);
        h14 h14Var = b3aVar != null ? b3aVar.p : null;
        if (h14Var != null) {
            WeakHashMap weakHashMap = s0a.c;
            if (Looper.myLooper() != Looper.getMainLooper()) {
                y14.u(null, "ImageLoaderUtils: Method cancel called from worker thread");
            } else {
                WeakHashMap weakHashMap2 = s0a.c;
                if (weakHashMap2.get(zhVar) == h14Var) {
                    weakHashMap2.remove(zhVar);
                }
            }
        }
        bVar.m.setOnClickListener(null);
    }
}
