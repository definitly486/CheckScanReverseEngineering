package yads;

import android.content.Context;
import android.graphics.Canvas;
import android.text.Spanned;
import android.util.AttributeSet;
import android.view.View;
import com.yandex.mobile.ads.R$attr;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class zo1 extends nw5 implements wh1 {
    public final /* synthetic */ xh1 r;
    public lb s;
    public za2 t;
    public kt4 u;

    public /* synthetic */ zo1(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, (i & 2) != 0 ? null : attributeSet, R$attr.monetization_ads_divkit_divTextStyle);
    }

    @Override // yads.r16
    public final void a(View view) {
        this.r.b.a(view);
    }

    @Override // yads.r16
    public final void b(View view) {
        this.r.b.b(view);
    }

    @Override // yads.wh1
    public final tt c() {
        return this.r.d;
    }

    @Override // yads.s51
    public final void d() {
        this.r.d();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        l51 l51VarI = i();
        if (l51VarI == null) {
            super.draw(canvas);
            return;
        }
        int iSave = canvas.save();
        try {
            l51VarI.a(canvas);
            super.draw(canvas);
            l51VarI.b(canvas);
        } finally {
            canvas.restoreToCount(iSave);
        }
    }

    @Override // yads.s51
    public final void e() {
        this.r.e();
    }

    @Override // yads.hs2
    public final List f() {
        return this.r.e;
    }

    @Override // yads.r16
    public final boolean g() {
        return this.r.b.g();
    }

    @Override // yads.s51
    public final l51 i() {
        return this.r.a.a;
    }

    @Override // yads.an2, androidx.appcompat.widget.AppCompatTextView, android.view.View
    public final void onDetachedFromWindow() {
        kt4 kt4Var = this.u;
        if (kt4Var != null) {
            kt4Var.b();
        }
        this.u = null;
        super.onDetachedFromWindow();
    }

    @Override // yads.nw5, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        za2 za2Var;
        if ((getText() instanceof Spanned) && getLayout() != null && (za2Var = this.t) != null && (!za2Var.c.isEmpty())) {
            float totalPaddingLeft = getTotalPaddingLeft();
            float totalPaddingTop = getTotalPaddingTop();
            int iSave = canvas.save();
            canvas.translate(totalPaddingLeft, totalPaddingTop);
            try {
                za2 za2Var2 = this.t;
                if (za2Var2 != null) {
                    CharSequence text = getText();
                    text.getClass();
                    za2Var2.a(canvas, (Spanned) text, getLayout());
                }
                canvas.restoreToCount(iSave);
            } catch (Throwable th) {
                canvas.restoreToCount(iSave);
                throw th;
            }
        }
        super.onDraw(canvas);
    }

    @Override // yads.an2, android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.r.h();
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        kt4 kt4Var = this.u;
        if (i == 0) {
            if (kt4Var != null) {
                kt4Var.a();
            }
        } else if (kt4Var != null) {
            kt4Var.b();
        }
    }

    @Override // yads.wh1, yads.hs2, yads.r55
    public final void release() {
        this.r.release();
    }

    public void setAdaptiveMaxLines$mobileads_externalRelease(lb lbVar) {
        this.s = lbVar;
    }

    public void setAnimationStartDelay$mobileads_externalRelease(long j) {
    }

    @Override // yads.wh1
    public void setBindingContext(tt ttVar) {
        this.r.d = ttVar;
    }

    @Override // yads.s51
    public void setBorder(tt ttVar, f51 f51Var, View view) {
        this.r.a.setBorder(ttVar, f51Var, view);
    }

    @Override // yads.s51
    public void setNeedClipping(boolean z) {
        this.r.a.setNeedClipping(z);
    }

    public void setTextRoundedBgHelper$mobileads_externalRelease(za2 za2Var) {
        this.t = za2Var;
    }

    @Override // yads.wh1
    public void setDiv(jq0 jq0Var) {
        this.r.c = jq0Var;
    }

    @Override // yads.wh1
    public final br0 a() {
        return (jq0) this.r.c;
    }

    @Override // yads.hs2
    public final void b() throws Exception {
        this.r.b();
    }

    public zo1(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
    }

    @Override // yads.hs2
    public final void a(tp0 tp0Var) {
        this.r.a(tp0Var);
    }

    public zo1(Context context) {
        this(context, null, 6, 0);
    }

    public zo1(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.r = new xh1();
    }
}
