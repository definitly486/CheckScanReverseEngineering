package yads;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.method.KeyListener;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.yandex.mobile.ads.R$attr;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class bn1 extends st5 implements wh1 {
    public final /* synthetic */ xh1 f;
    public final Drawable g;
    public sg3 h;
    public final ArrayList i;
    public zm1 j;
    public String k;
    public TextView.OnEditorActionListener l;
    public boolean m;

    public bn1(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f = new xh1();
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(R.attr.editTextBackground, typedValue, true);
        this.g = ContextCompat.getDrawable(context, typedValue.resourceId);
        this.i = new ArrayList();
    }

    @Override // yads.r16
    public final void a(View view) {
        this.f.b.a(view);
    }

    @Override // yads.r16
    public final void b(View view) {
        this.f.b.b(view);
    }

    @Override // yads.wh1
    public final tt c() {
        return this.f.d;
    }

    @Override // yads.s51
    public final void d() {
        this.f.d();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        l51 l51VarI = i();
        if (l51VarI == null) {
            super.draw(canvas);
            return;
        }
        if (scrollX == 0 && scrollY == 0) {
            int iSave = canvas.save();
            try {
                l51VarI.a(canvas);
                super.draw(canvas);
                l51VarI.b(canvas);
                return;
            } finally {
                canvas.restoreToCount(iSave);
            }
        }
        float f = scrollX;
        float f2 = scrollY;
        int iSave2 = canvas.save();
        try {
            canvas.translate(f, f2);
            l51VarI.a(canvas);
            canvas.translate(-f, -f2);
            super.draw(canvas);
            canvas.translate(f, f2);
            l51VarI.b(canvas);
        } finally {
            canvas.restoreToCount(iSave2);
        }
    }

    @Override // yads.s51
    public final void e() {
        this.f.e();
    }

    @Override // yads.hs2
    public final List f() {
        return this.f.e;
    }

    @Override // yads.r16
    public final boolean g() {
        return this.f.b.g();
    }

    @Override // yads.s51
    public final l51 i() {
        return this.f.a.a;
    }

    @Override // androidx.appcompat.widget.AppCompatEditText, android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        if (inputConnectionOnCreateInputConnection == null) {
            return null;
        }
        return (getInputType() & 131072) == 0 ? inputConnectionOnCreateInputConnection : new an1(inputConnectionOnCreateInputConnection, this);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        sg3 sg3Var = this.h;
        if (sg3Var != null) {
            Object tag = getTag();
            if (!sg3Var.b) {
                if (z) {
                    sg3Var.a = tag;
                    sg3.d = new WeakReference(this);
                    setSelection(length());
                } else if (!z) {
                    sg3Var.a = null;
                    sg3.d = null;
                }
            }
        }
        super.onFocusChanged(z, i, rect);
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        if ((getInputType() & 131072) != 0 && (i == 66 || i == 160)) {
            int imeOptions = getImeOptions() & 255;
            TextView.OnEditorActionListener onEditorActionListener = this.l;
            if (onEditorActionListener != null) {
                return onEditorActionListener.onEditorAction(this, imeOptions, keyEvent);
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // yads.st5, android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f.h();
    }

    @Override // yads.wh1, yads.hs2, yads.r55
    public final void release() {
        this.f.release();
    }

    public void setAccessibilityEnabled$mobileads_externalRelease(boolean z) {
        this.m = z;
        setInputHint(this.k);
    }

    @Override // yads.wh1
    public void setBindingContext(tt ttVar) {
        this.f.d = ttVar;
    }

    @Override // yads.s51
    public void setBorder(tt ttVar, f51 f51Var, View view) {
        this.f.a.setBorder(ttVar, f51Var, view);
    }

    @Override // android.view.View
    public void setContentDescription(CharSequence charSequence) {
        super.setContentDescription(charSequence);
        setInputHint(this.k);
    }

    public void setEnabled$mobileads_externalRelease(boolean z) {
        setFocusable(z);
        setFocusableInTouchMode(z);
    }

    public void setFocusTracker$mobileads_externalRelease(sg3 sg3Var) {
        this.h = sg3Var;
    }

    public void setInputHint(String str) {
        CharSequence contentDescription;
        CharSequence charSequenceSubSequence;
        this.k = str;
        CharSequence contentDescription2 = str;
        if (this.m) {
            if ((str == null || str.length() == 0) && ((contentDescription = getContentDescription()) == null || contentDescription.length() == 0)) {
                contentDescription2 = null;
            } else if (str == null || str.length() == 0) {
                contentDescription2 = getContentDescription();
            } else {
                CharSequence contentDescription3 = getContentDescription();
                if (contentDescription3 != null && contentDescription3.length() != 0) {
                    char[] cArr = {'.'};
                    int length = str.length() - 1;
                    if (length < 0) {
                        contentDescription2 = str;
                        contentDescription2 = str;
                        charSequenceSubSequence = "";
                        break;
                    }
                    while (true) {
                        contentDescription2 = str;
                        contentDescription2 = str;
                        int i = length - 1;
                        char cCharAt = str.charAt(length);
                        int i2 = 0;
                        while (true) {
                            if (i2 >= 1) {
                                i2 = -1;
                                break;
                            } else if (cCharAt == cArr[i2]) {
                                break;
                            } else {
                                i2++;
                            }
                        }
                        if (i2 < 0) {
                            charSequenceSubSequence = str.subSequence(0, length + 1);
                            break;
                        } else {
                            if (i < 0) {
                                contentDescription2 = str;
                                contentDescription2 = str;
                                charSequenceSubSequence = "";
                                break;
                            }
                            length = i;
                        }
                    }
                    contentDescription2 = charSequenceSubSequence.toString() + ". " + ((Object) getContentDescription());
                }
            }
        }
        contentDescription2 = str;
        contentDescription2 = str;
        contentDescription2 = str;
        setHint(contentDescription2);
    }

    @Override // android.widget.TextView
    public void setInputType(int i) {
        if (getInputType() == i) {
            return;
        }
        super.setInputType(i);
    }

    @Override // androidx.appcompat.widget.AppCompatEditText, android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        if (defpackage.aa4.e(getKeyListener(), keyListener)) {
            return;
        }
        super.setKeyListener(keyListener);
    }

    @Override // yads.s51
    public void setNeedClipping(boolean z) {
        this.f.a.setNeedClipping(z);
    }

    @Override // android.widget.TextView
    public void setOnEditorActionListener(TextView.OnEditorActionListener onEditorActionListener) {
        super.setOnEditorActionListener(onEditorActionListener);
        this.l = onEditorActionListener;
    }

    @Override // yads.wh1
    public void setDiv(bq0 bq0Var) {
        this.f.c = bq0Var;
    }

    @Override // yads.wh1
    public final br0 a() {
        return (bq0) this.f.c;
    }

    @Override // yads.hs2
    public final void b() throws Exception {
        this.f.b();
    }

    @Override // yads.hs2
    public final void a(tp0 tp0Var) {
        this.f.a(tp0Var);
    }

    public bn1(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
    }

    public /* synthetic */ bn1(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, (i & 2) != 0 ? null : attributeSet, R$attr.monetization_ads_divkit_divInputStyle);
    }

    public bn1(Context context) {
        this(context, null, 6, 0);
    }
}
