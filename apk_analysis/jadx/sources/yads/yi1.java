package yads;

import android.content.Context;
import android.graphics.Canvas;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import com.yandex.mobile.ads.R$attr;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class yi1 extends iu3 implements wh1 {
    public final /* synthetic */ xh1 m;
    public Uri n;

    public yi1(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.m = new xh1();
        super.setAdjustViewBounds(true);
        super.setCropToPadding(true);
    }

    @Override // yads.r16
    public final void a(View view) {
        this.m.b.a(view);
    }

    @Override // yads.r16
    public final void b(View view) {
        this.m.b.b(view);
    }

    @Override // yads.wh1
    public final tt c() {
        return this.m.d;
    }

    @Override // yads.s51
    public final void d() {
        this.m.d();
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
        this.m.e();
    }

    @Override // yads.hs2
    public final List f() {
        return this.m.e;
    }

    @Override // yads.r16
    public final boolean g() {
        return this.m.b.g();
    }

    @Override // yads.s51
    public final l51 i() {
        return this.m.a.a;
    }

    @Override // yads.sj, android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.m.h();
    }

    @Override // yads.iu3, yads.r55
    public final void release() {
        super.release();
        super.release();
        this.n = null;
    }

    @Override // android.widget.ImageView
    public void setAdjustViewBounds(boolean z) {
    }

    @Override // yads.wh1
    public void setBindingContext(tt ttVar) {
        this.m.d = ttVar;
    }

    @Override // yads.s51
    public void setBorder(tt ttVar, f51 f51Var, View view) {
        this.m.a.setBorder(ttVar, f51Var, view);
    }

    @Override // android.widget.ImageView
    public void setCropToPadding(boolean z) {
    }

    public final void setImageUrl$mobileads_externalRelease(Uri uri) {
        this.n = uri;
    }

    @Override // yads.s51
    public void setNeedClipping(boolean z) {
        this.m.a.setNeedClipping(z);
    }

    @Override // yads.wh1
    public void setDiv(zp0 zp0Var) {
        this.m.c = zp0Var;
    }

    @Override // yads.hs2
    public final void a(tp0 tp0Var) {
        this.m.a(tp0Var);
    }

    @Override // yads.hs2
    public final void b() throws Exception {
        this.m.b();
    }

    @Override // yads.wh1
    public final br0 a() {
        return (zp0) this.m.c;
    }

    @Override // yads.sj
    public final boolean a(int i) {
        return false;
    }

    public yi1(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
    }

    public /* synthetic */ yi1(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, (i & 2) != 0 ? null : attributeSet, R$attr.monetization_ads_divkit_divImageStyle);
    }

    public yi1(Context context) {
        this(context, null, 6, 0);
    }
}
