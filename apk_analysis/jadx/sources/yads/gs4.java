package yads;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public class gs4 extends View {
    public static final /* synthetic */ int e = 0;
    public hg3 a;
    public et1 b;
    public cg3 c;
    public final fs4 d;

    public gs4(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = new fs4(this);
    }

    public final void a(hg3 hg3Var) {
        ViewPager2 viewPager2;
        et1 et1Var = this.b;
        RecyclerView.Adapter adapter = (et1Var == null || (viewPager2 = et1Var.a) == null) ? null : viewPager2.getAdapter();
        wr1 wr1Var = adapter instanceof wr1 ? (wr1) adapter : null;
        if (wr1Var != null) {
            int size = wr1Var.d().size();
            hg3Var.f = size;
            hg3Var.c.d(size);
            hg3Var.a();
            hg3Var.h = hg3Var.l / 2.0f;
            int iE = wr1Var.e(wr1Var.n.a.getCurrentItem());
            hg3Var.m = iE;
            hg3Var.n = 0.0f;
            hg3Var.c.onPageSelected(iE);
            hg3Var.a(iE, 0.0f);
            invalidate();
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        Object next;
        RectF rectFA;
        super.onDraw(canvas);
        canvas.translate(getPaddingLeft(), getPaddingTop());
        hg3 hg3Var = this.a;
        if (hg3Var != null) {
            for (fg3 fg3Var : hg3Var.e.b) {
                hg3Var.b.a(canvas, fg3Var.c, hg3Var.h, fg3Var.d, hg3Var.c.b(fg3Var.a), hg3Var.c.e(fg3Var.a), hg3Var.c.c(fg3Var.a));
            }
            Iterator it = hg3Var.e.b.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!((fg3) next).b);
            fg3 fg3Var2 = (fg3) next;
            if (fg3Var2 == null || (rectFA = hg3Var.c.a(fg3Var2.c, hg3Var.h, hg3Var.k, oh6.b(hg3Var.d))) == null) {
                return;
            }
            hg3Var.b.a(canvas, rectFA);
        }
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00c2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:53:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:54:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:57:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:61:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int paddingLeft;
        int paddingRight;
        int i3;
        hg3 hg3Var;
        ViewPager2 viewPager2;
        RecyclerView.Adapter adapter;
        yf3 yf3VarB;
        yf3 yf3VarB2;
        yf3 yf3VarB3;
        yf3 yf3VarB4;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        cg3 cg3Var = this.c;
        float fB = 0.0f;
        float fA = (cg3Var == null || (yf3VarB4 = cg3Var.b.b()) == null) ? 0.0f : yf3VarB4.a();
        cg3 cg3Var2 = this.c;
        float fA2 = (cg3Var2 == null || (yf3VarB3 = cg3Var2.c.b()) == null) ? 0.0f : yf3VarB3.a();
        cg3 cg3Var3 = this.c;
        int iMax = (int) (Math.max(fA, Math.max(fA2, (cg3Var3 == null || (yf3VarB2 = cg3Var3.d.b()) == null) ? 0.0f : yf3VarB2.a())) + getPaddingTop() + getPaddingBottom());
        if (mode == Integer.MIN_VALUE) {
            size = Math.min(iMax, size);
        } else if (mode != 1073741824) {
            size = iMax;
        }
        int mode2 = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i);
        cg3 cg3Var4 = this.c;
        if (cg3Var4 != null && (yf3VarB = cg3Var4.b.b()) != null) {
            fB = yf3VarB.b();
        }
        cg3 cg3Var5 = this.c;
        vf3 vf3Var = cg3Var5 != null ? cg3Var5.e : null;
        if (!(vf3Var instanceof tf3)) {
            if (vf3Var instanceof uf3) {
                i3 = size2;
            } else if (vf3Var != null) {
                defpackage.me0.e();
                return;
            } else {
                paddingLeft = getPaddingLeft() + ((int) fB);
                paddingRight = getPaddingRight();
            }
            if (mode2 != Integer.MIN_VALUE) {
                size2 = Math.min(i3, size2);
            } else if (mode2 != 1073741824) {
                size2 = i3;
            }
            setMeasuredDimension(size2, size);
            hg3Var = this.a;
            if (hg3Var != null) {
                hg3Var.a((size2 - getPaddingLeft()) - getPaddingRight(), (size - getPaddingTop()) - getPaddingBottom());
            }
        }
        float f = ((tf3) vf3Var).a;
        et1 et1Var = this.b;
        paddingLeft = getPaddingLeft() + ((int) ((f * ((et1Var == null || (viewPager2 = et1Var.a) == null || (adapter = viewPager2.getAdapter()) == null) ? 0 : adapter.getItemCount())) + fB));
        paddingRight = getPaddingRight();
        i3 = paddingRight + paddingLeft;
        if (mode2 != Integer.MIN_VALUE) {
            size2 = Math.min(i3, size2);
        } else if (mode2 != 1073741824) {
            size2 = i3;
        }
        setMeasuredDimension(size2, size);
        hg3Var = this.a;
        if (hg3Var != null) {
            hg3Var.a((size2 - getPaddingLeft()) - getPaddingRight(), (size - getPaddingTop()) - getPaddingBottom());
        }
    }

    public final void setStyle(cg3 cg3Var) {
        gl5 kzVar;
        pf3 rc5Var;
        this.c = cg3Var;
        bg3 bg3Var = cg3Var.b;
        if (bg3Var instanceof ag3) {
            kzVar = new lb5(cg3Var);
        } else {
            if (!(bg3Var instanceof zf3)) {
                defpackage.me0.e();
                return;
            }
            kzVar = new kz(cg3Var);
        }
        int iOrdinal = cg3Var.a.ordinal();
        if (iOrdinal == 0) {
            rc5Var = new rc5(cg3Var);
        } else if (iOrdinal == 1) {
            rc5Var = new zk6(cg3Var);
        } else {
            if (iOrdinal != 2) {
                defpackage.me0.e();
                return;
            }
            rc5Var = new bn5(cg3Var);
        }
        hg3 hg3Var = new hg3(cg3Var, kzVar, rc5Var, this);
        hg3Var.a((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        a(hg3Var);
        this.a = hg3Var;
        requestLayout();
    }

    public gs4(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
    }

    public /* synthetic */ gs4(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, (i & 2) != 0 ? null : attributeSet, 0);
    }

    public gs4(Context context) {
        this(context, null, 6, 0);
    }

    public final void a(et1 et1Var) {
        et1 et1Var2 = this.b;
        if (et1Var2 != null) {
            fs4 fs4Var = this.d;
            et1Var2.d.remove(fs4Var);
            et1Var2.a.unregisterOnPageChangeCallback(fs4Var);
        }
        fs4 fs4Var2 = this.d;
        et1Var.d.add(fs4Var2);
        et1Var.a.registerOnPageChangeCallback(fs4Var2);
        if (et1Var == this.b) {
            return;
        }
        this.b = et1Var;
        if (et1Var.a.getAdapter() != null) {
            hg3 hg3Var = this.a;
            if (hg3Var != null) {
                a(hg3Var);
            }
            et1Var.setPagerOnItemsCountChange$mobileads_externalRelease(new defpackage.id(this));
            return;
        }
        defpackage.fg.c("Attached pager adapter is null!");
    }

    public static final void a(gs4 gs4Var) {
        hg3 hg3Var = gs4Var.a;
        if (hg3Var != null) {
            gs4Var.a(hg3Var);
        }
    }
}
