package com.my.target.core.ui.views.promo.style2.cards;

import android.content.Context;
import android.widget.FrameLayout;
import com.my.target.c3;
import com.my.target.hg;
import com.my.target.m1;
import com.my.target.sc;
import defpackage.ao9;
import defpackage.l3a;
import defpackage.mda;
import defpackage.mia;
import defpackage.r0a;

/* JADX INFO: loaded from: classes4.dex */
public class b extends FrameLayout implements a, sc.a {
    public final sc b;
    public final CardsLayoutManagerS2 c;
    public final r0a d;
    public a.InterfaceC0152a e;

    public b(Context context) {
        super(context);
        sc scVar = new sc(context);
        this.b = scVar;
        CardsLayoutManagerS2 cardsLayoutManagerS2 = new CardsLayoutManagerS2(context, 0, false);
        cardsLayoutManagerS2.e = this;
        scVar.setLayoutManager(cardsLayoutManagerS2);
        this.c = cardsLayoutManagerS2;
        r0a r0aVar = new r0a();
        this.d = r0aVar;
        r0aVar.attachToRecyclerView(scVar);
        scVar.setHasFixedSize(true);
        scVar.setMoveStopListener(this);
        addView(scVar, new FrameLayout.LayoutParams(-1, -1));
    }

    public final void a() {
        int[] iArr;
        if (this.e != null) {
            CardsLayoutManagerS2 cardsLayoutManagerS2 = this.c;
            int iFindFirstVisibleItemPosition = cardsLayoutManagerS2.findFirstVisibleItemPosition();
            int iFindLastVisibleItemPosition = cardsLayoutManagerS2.findLastVisibleItemPosition();
            if (iFindFirstVisibleItemPosition < 0 || iFindLastVisibleItemPosition < 0) {
                return;
            }
            if (l3a.a(cardsLayoutManagerS2.findViewByPosition(iFindFirstVisibleItemPosition)) < 50.0f) {
                iFindFirstVisibleItemPosition++;
            }
            if (l3a.a(cardsLayoutManagerS2.findViewByPosition(iFindLastVisibleItemPosition)) < 50.0f) {
                iFindLastVisibleItemPosition--;
            }
            if (iFindFirstVisibleItemPosition > iFindLastVisibleItemPosition) {
                return;
            }
            if (iFindFirstVisibleItemPosition == iFindLastVisibleItemPosition) {
                iArr = new int[]{iFindFirstVisibleItemPosition};
            } else {
                int i = (iFindLastVisibleItemPosition - iFindFirstVisibleItemPosition) + 1;
                int[] iArr2 = new int[i];
                for (int i2 = 0; i2 < i; i2++) {
                    iArr2[i2] = iFindFirstVisibleItemPosition;
                    iFindFirstVisibleItemPosition++;
                }
                iArr = iArr2;
            }
            mia miaVar = (mia) this.e;
            miaVar.getClass();
            for (int i3 : iArr) {
                if (i3 >= 0) {
                    boolean[] zArr = miaVar.c;
                    if (i3 < zArr.length && !zArr[i3]) {
                        zArr[i3] = true;
                        c3 c3Var = miaVar.b;
                        ao9 ao9Var = (ao9) miaVar.e.get(i3);
                        hg hgVar = c3Var.e;
                        hgVar.getClass();
                        String strT = l3a.t(hgVar.getContext());
                        if (strT != null) {
                            m1.c(ao9Var.a, strT);
                        }
                        m1.d(ao9Var.a, "show", 1, null);
                    }
                }
            }
        }
    }

    public void setAdapter(mda mdaVar) {
        this.b.setAdapter(mdaVar);
    }

    @Override // com.my.target.core.ui.views.promo.style2.cards.a
    public void setListener(a.InterfaceC0152a interfaceC0152a) {
        this.e = interfaceC0152a;
    }
}
