package yads;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import defpackage.j59;
import defpackage.ku8;
import defpackage.nl3;
import yads.yt5;

/* JADX INFO: loaded from: classes6.dex */
public class yt5 extends FrameLayout {
    public static final int[][] d = {new int[]{-16842910}, new int[]{R.attr.state_checked}, new int[0]};
    public final SwitchCompat a;
    public final int[] b;
    public final int[] c;

    public yt5(Context context) {
        super(context);
        SwitchCompat switchCompat = new SwitchCompat(context);
        this.a = switchCompat;
        int[] iArr = {Color.argb(25, Color.red(iA), Color.green(iA), Color.blue(iA)), Color.argb((int) (Color.alpha(iA) * 0.3f), Color.red(iA), Color.green(iA), Color.blue(iA)), Color.argb(76, Color.red(iA), Color.green(iA), Color.blue(iA))};
        this.b = iArr;
        int[] iArr2 = {ColorUtils.blendARGB(iA, -1, 0.5f), iA, iA};
        this.c = iArr2;
        switchCompat.setShowText(false);
        switchCompat.setBackground(eo4.a);
        addView(switchCompat, new FrameLayout.LayoutParams(-2, -2, 17));
        setOnClickListener(new ku8(this, 1));
        TypedValue typedValue = new TypedValue();
        int iA = a(R.attr.colorForeground, typedValue, false);
        int iA2 = a(R.attr.colorControlActivated, typedValue, false);
        int iA3 = a(androidx.appcompat.R.attr.colorSwitchThumbNormal, typedValue, true);
        int[][] iArr3 = d;
        switchCompat.setTrackTintList(new ColorStateList(iArr3, iArr));
        switchCompat.setThumbTintList(new ColorStateList(iArr3, iArr2));
    }

    public final int a(int i, TypedValue typedValue, boolean z) {
        if (getContext().getTheme().resolveAttribute(i, typedValue, true)) {
            return (!z || typedValue.resourceId == 0) ? typedValue.data : ContextCompat.getColor(getContext(), typedValue.resourceId);
        }
        return 0;
    }

    @Override // android.view.View
    public final boolean isEnabled() {
        return this.a.isEnabled();
    }

    public final void setChecked(boolean z) {
        this.a.setChecked(z);
    }

    public final void setColorOn(Integer num) {
        if (num != null) {
            int iIntValue = num.intValue();
            this.c[1] = iIntValue;
            this.b[1] = Color.argb((int) (Color.alpha(iIntValue) * 0.3f), Color.red(iIntValue), Color.green(iIntValue), Color.blue(iIntValue));
            SwitchCompat switchCompat = this.a;
            int[][] iArr = d;
            switchCompat.setTrackTintList(new ColorStateList(iArr, this.b));
            this.a.setThumbTintList(new ColorStateList(iArr, this.c));
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        this.a.setEnabled(z);
    }

    public final void setOnCheckedChangeListener(final nl3<? super Boolean, j59> nl3Var) {
        this.a.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cia
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                yt5.a(nl3Var, compoundButton, z);
            }
        });
    }

    public static final void a(nl3 nl3Var, CompoundButton compoundButton, boolean z) {
        nl3Var.invoke(Boolean.valueOf(z));
    }

    public static final void a(yt5 yt5Var, View view) {
        if (yt5Var.a.isEnabled()) {
            yt5Var.a.performClick();
        }
    }
}
