package yads;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.yandex.mobile.ads.R$string;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class rm5 extends ExploreByTouchHelper {
    public final kn5 a;
    public final Rect b;

    public rm5(kn5 kn5Var) {
        super(kn5Var);
        this.a = kn5Var;
        this.b = new Rect();
        ViewCompat.setAccessibilityDelegate(kn5Var, this);
        kn5Var.setAccessibilityLiveRegion(1);
    }

    public final float a(int i) {
        Float f;
        kn5 kn5Var = this.a;
        if (i != 0 && (f = kn5Var.v) != null) {
            return f.floatValue();
        }
        return kn5Var.s;
    }

    @Override // androidx.customview.widget.ExploreByTouchHelper
    public final int getVirtualViewAt(float f, float f2) {
        jn5 jn5Var;
        if (f < this.a.getPaddingLeft()) {
            return 0;
        }
        kn5 kn5Var = this.a;
        int i = (int) f;
        if (kn5Var.j()) {
            int iAbs = Math.abs(i - kn5Var.a(kn5Var.getWidth(), kn5Var.s));
            Float f3 = kn5Var.v;
            f3.getClass();
            jn5Var = iAbs < Math.abs(i - kn5Var.a(kn5Var.getWidth(), f3.floatValue())) ? jn5.THUMB : jn5.THUMB_SECONDARY;
        } else {
            jn5Var = jn5.THUMB;
        }
        int iOrdinal = jn5Var.ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal == 1) {
                return 1;
            }
            defpackage.me0.e();
        }
        return 0;
    }

    @Override // androidx.customview.widget.ExploreByTouchHelper
    public final void getVisibleVirtualViews(List list) {
        list.add(0);
        if (this.a.v != null) {
            list.add(1);
        }
    }

    @Override // androidx.customview.widget.ExploreByTouchHelper, androidx.core.view.AccessibilityDelegateCompat
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
    }

    @Override // androidx.customview.widget.ExploreByTouchHelper
    public final boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
        float fMax;
        if (i2 == 4096) {
            float fA = a(i);
            kn5 kn5Var = this.a;
            fMax = fA + Math.max(defpackage.w65.a(((double) (kn5Var.n - kn5Var.m)) * 0.05d), 1);
        } else if (i2 == 8192) {
            float fA2 = a(i);
            kn5 kn5Var2 = this.a;
            fMax = fA2 - Math.max(defpackage.w65.a(((double) (kn5Var2.n - kn5Var2.m)) * 0.05d), 1);
        } else {
            if (i2 != 16908349 || bundle == null || !bundle.containsKey(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_PROGRESS_VALUE)) {
                return false;
            }
            fMax = bundle.getFloat(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_PROGRESS_VALUE);
        }
        kn5 kn5Var3 = this.a;
        jn5 jn5Var = (i == 0 || kn5Var3.v == null) ? jn5.THUMB : jn5.THUMB_SECONDARY;
        kn5Var3.setValueToAccessibilityThumb$mobileads_externalRelease(jn5Var, fMax);
        sendEventForVirtualView(i, 4);
        invalidateVirtualView(i);
        return true;
    }

    @Override // androidx.customview.widget.ExploreByTouchHelper
    public final void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        int iB;
        int iA;
        accessibilityNodeInfoCompat.setClassName("android.widget.SeekBar");
        kn5 kn5Var = this.a;
        accessibilityNodeInfoCompat.setRangeInfo(AccessibilityNodeInfoCompat.RangeInfoCompat.obtain(0, kn5Var.m, kn5Var.n, a(i)));
        StringBuilder sb = new StringBuilder();
        CharSequence contentDescription = this.a.getContentDescription();
        if (contentDescription != null) {
            sb.append(contentDescription);
            sb.append(StringUtils.COMMA);
        }
        kn5 kn5Var2 = this.a;
        String string = "";
        if (kn5Var2.v != null) {
            if (i == 0) {
                string = kn5Var2.getContext().getString(R$string.monetization_ads_divkit_div_slider_range_start);
            } else if (i == 1) {
                string = kn5Var2.getContext().getString(R$string.monetization_ads_divkit_div_slider_range_end);
            }
        }
        sb.append(string);
        accessibilityNodeInfoCompat.setContentDescription(sb.toString());
        accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
        accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
        if (i == 1) {
            int i2 = kn5.H;
            iB = hn5.b(this.a.x);
            iA = hn5.a(this.a.x);
        } else {
            int i3 = kn5.H;
            iB = hn5.b(this.a.t);
            iA = hn5.a(this.a.t);
        }
        kn5 kn5Var3 = this.a;
        float fA = a(i);
        kn5Var3.getClass();
        int paddingLeft = kn5Var3.getPaddingLeft() + kn5Var3.a(kn5Var3.getWidth(), fA);
        Rect rect = this.b;
        rect.left = paddingLeft;
        rect.right = paddingLeft + iB;
        rect.top = (((this.a.getPaddingTop() + this.a.getHeight()) - this.a.getPaddingBottom()) - iA) / 2;
        rect.bottom = (((this.a.getPaddingTop() + this.a.getHeight()) - this.a.getPaddingBottom()) + iA) / 2;
        accessibilityNodeInfoCompat.setBoundsInParent(this.b);
    }
}
