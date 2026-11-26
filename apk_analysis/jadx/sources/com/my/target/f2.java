package com.my.target;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.my.target.common.views.StarsRatingView;
import defpackage.fo9;
import defpackage.h14;
import defpackage.l3a;
import defpackage.m3;
import defpackage.n4a;
import defpackage.pfa;
import defpackage.s0a;
import defpackage.wt9;
import defpackage.y14;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class f2 extends RecyclerView {
    public static final /* synthetic */ int t = 0;
    public final wt9 l;
    public final LinearSnapHelper m;
    public ArrayList n;
    public g2.a o;
    public final a p;
    public boolean q;
    public boolean r;
    public final b s;

    public class a implements c {
        public a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.my.target.f2.c
        public final void a(View view, pfa pfaVar) {
            ArrayList arrayList;
            ViewParent parent = view.getParent();
            while (parent != 0 && !(parent instanceof v1)) {
                parent = parent.getParent();
            }
            f2 f2Var = f2.this;
            g2.a aVar = f2Var.o;
            if (aVar == null || (arrayList = f2Var.n) == null || parent == 0) {
                return;
            }
            fo9 fo9Var = (fo9) arrayList.get(f2Var.getCardLayoutManager().getPosition((View) parent));
            i iVar = i.this;
            m2.a aVar2 = iVar.c;
            if (aVar2 != null) {
                aVar2.g(fo9Var, null, 2, y14.j(pfaVar), iVar.a.getView().getContext());
            }
        }
    }

    public class b implements c {
        public b() {
        }

        @Override // com.my.target.f2.c
        public final void a(View view, pfa pfaVar) {
            View viewFindContainingItemView;
            g2.a aVar;
            ArrayList arrayList;
            f2 f2Var = f2.this;
            if (f2Var.q || (viewFindContainingItemView = f2Var.getCardLayoutManager().findContainingItemView(view)) == null) {
                return;
            }
            wt9 cardLayoutManager = f2Var.getCardLayoutManager();
            int iFindFirstCompletelyVisibleItemPosition = cardLayoutManager.findFirstCompletelyVisibleItemPosition();
            int position = cardLayoutManager.getPosition(viewFindContainingItemView);
            int iFindLastCompletelyVisibleItemPosition = cardLayoutManager.findLastCompletelyVisibleItemPosition();
            if ((iFindFirstCompletelyVisibleItemPosition > position || position > iFindLastCompletelyVisibleItemPosition) && !f2Var.r) {
                int[] iArrCalculateDistanceToFinalSnap = f2Var.m.calculateDistanceToFinalSnap(f2Var.getCardLayoutManager(), viewFindContainingItemView);
                if (iArrCalculateDistanceToFinalSnap != null) {
                    f2Var.smoothScrollBy(iArrCalculateDistanceToFinalSnap[0], 0);
                    return;
                }
                return;
            }
            if (!view.isClickable() || (aVar = f2Var.o) == null || (arrayList = f2Var.n) == null) {
                return;
            }
            fo9 fo9Var = (fo9) arrayList.get(f2Var.getCardLayoutManager().getPosition(viewFindContainingItemView));
            i iVar = i.this;
            m2.a aVar2 = iVar.c;
            if (aVar2 != null) {
                aVar2.g(fo9Var, null, 1, y14.j(pfaVar), iVar.a.getView().getContext());
            }
        }
    }

    public interface c {
        void a(View view, pfa pfaVar);
    }

    public static class d extends RecyclerView.Adapter {
        public final Context i;
        public final ArrayList t;
        public final ArrayList u = new ArrayList();
        public final boolean v;
        public b w;
        public a x;

        public d(Context context, ArrayList arrayList) {
            this.t = arrayList;
            this.i = context;
            this.v = (context.getResources().getConfiguration().screenLayout & 15) >= 3;
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
            v1 v1Var = ((e) viewHolder).l;
            fo9 fo9Var = (fo9) this.t.get(i);
            ArrayList arrayList = this.u;
            if (!arrayList.contains(fo9Var)) {
                arrayList.add(fo9Var);
                m1.d(fo9Var.a, "render", 1, null);
            }
            h14 h14Var = fo9Var.p;
            if (h14Var != null) {
                zh smartImageView = v1Var.getSmartImageView();
                smartImageView.setPlaceholderDimensions(h14Var.b, h14Var.c);
                s0a.c(h14Var, smartImageView);
            }
            v1Var.getTitleTextView().setText(fo9Var.e);
            v1Var.getDescriptionTextView().setText(fo9Var.c);
            v1Var.getCtaButtonView().setText(fo9Var.g());
            v1Var.setIsHitMapEnabled(fo9Var.Q.c);
            TextView domainTextView = v1Var.getDomainTextView();
            String str = fo9Var.l;
            StarsRatingView ratingView = v1Var.getRatingView();
            String str2 = fo9Var.m;
            str2.getClass();
            switch (str2) {
                case "web":
                case "webform":
                    ratingView.setVisibility(8);
                    domainTextView.setVisibility(0);
                    domainTextView.setText(str);
                    break;
                case "store":
                    domainTextView.setVisibility(8);
                    float fB = fo9Var.b();
                    if (fB <= 0.0f) {
                        ratingView.setVisibility(8);
                        break;
                    } else {
                        ratingView.setVisibility(0);
                        ratingView.setRating(fB);
                        break;
                    }
                    break;
            }
            v1Var.a(this.w, fo9Var.r, this.x);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new e(new v1(this.i, this.v));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
            ((e) viewHolder).l.a(null, null, null);
        }
    }

    public static class e extends RecyclerView.ViewHolder {
        public final v1 l;

        public e(v1 v1Var) {
            super(v1Var);
            this.l = v1Var;
        }
    }

    public f2(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.p = new a();
        this.s = new b();
        setOverScrollMode(2);
        this.l = new wt9(context);
        LinearSnapHelper linearSnapHelper = new LinearSnapHelper();
        this.m = linearSnapHelper;
        linearSnapHelper.attachToRecyclerView(this);
    }

    private List<fo9> getVisibleCards() {
        int iFindFirstCompletelyVisibleItemPosition;
        int iFindLastCompletelyVisibleItemPosition;
        ArrayList arrayList = new ArrayList();
        if (this.n != null && (iFindFirstCompletelyVisibleItemPosition = getCardLayoutManager().findFirstCompletelyVisibleItemPosition()) <= (iFindLastCompletelyVisibleItemPosition = getCardLayoutManager().findLastCompletelyVisibleItemPosition()) && iFindFirstCompletelyVisibleItemPosition >= 0 && iFindLastCompletelyVisibleItemPosition < this.n.size()) {
            while (iFindFirstCompletelyVisibleItemPosition <= iFindLastCompletelyVisibleItemPosition) {
                arrayList.add((fo9) this.n.get(iFindFirstCompletelyVisibleItemPosition));
                iFindFirstCompletelyVisibleItemPosition++;
            }
        }
        return arrayList;
    }

    private void setCardLayoutManager(wt9 wt9Var) {
        wt9Var.g = new m3(this, 3);
        super.setLayoutManager(wt9Var);
    }

    public final void a(List list) {
        ArrayList arrayList = (ArrayList) list;
        d dVar = new d(getContext(), arrayList);
        this.n = arrayList;
        dVar.w = this.s;
        dVar.x = this.p;
        setCardLayoutManager(this.l);
        setAdapter(dVar);
    }

    public wt9 getCardLayoutManager() {
        return this.l;
    }

    public LinearSnapHelper getSnapHelper() {
        return this.m;
    }

    public final void j() {
        g2.a aVar = this.o;
        if (aVar != null) {
            List<fo9> visibleCards = getVisibleCards();
            i iVar = i.this;
            g2 g2Var = iVar.a;
            ArrayList arrayList = iVar.b;
            String strT = l3a.t(g2Var.getView().getContext());
            for (fo9 fo9Var : visibleCards) {
                if (!arrayList.contains(fo9Var)) {
                    arrayList.add(fo9Var);
                    n4a n4aVar = fo9Var.a;
                    if (strT != null) {
                        m1.c(n4aVar, strT);
                    }
                    m1.c(n4aVar, "show");
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (i3 > i4) {
            this.r = true;
        }
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void onScrollStateChanged(int i) {
        super.onScrollStateChanged(i);
        boolean z = i != 0;
        this.q = z;
        if (z) {
            return;
        }
        j();
    }

    public void setCarouselListener(g2.a aVar) {
        this.o = aVar;
    }

    public void setSideSlidesMargins(int i) {
        getCardLayoutManager().f = i;
    }

    public f2(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public f2(Context context) {
        this(context, null);
    }
}
