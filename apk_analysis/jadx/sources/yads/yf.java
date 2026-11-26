package yads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import com.monetization.ads.fullscreen.template.view.ExtendedTextView;
import java.lang.reflect.Method;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class yf {
    public static final RectF j = new RectF();
    public static final ConcurrentHashMap k = new ConcurrentHashMap();
    public static final ConcurrentHashMap l = new ConcurrentHashMap();
    public int a = 0;
    public boolean b = false;
    public float c = -1.0f;
    public float d = -1.0f;
    public int[] e = new int[0];
    public TextPaint f;
    public final ExtendedTextView g;
    public final Context h;
    public final xf i;

    public yf(ExtendedTextView extendedTextView) {
        this.g = extendedTextView;
        this.h = extendedTextView.getContext();
        if (Build.VERSION.SDK_INT >= 29) {
            this.i = new wf();
        } else {
            this.i = new vf();
        }
    }

    public static Method b(String str) {
        try {
            ConcurrentHashMap concurrentHashMap = k;
            Method declaredMethod = (Method) concurrentHashMap.get(str);
            if (declaredMethod != null || (declaredMethod = TextView.class.getDeclaredMethod(str, null)) == null) {
                return declaredMethod;
            }
            declaredMethod.setAccessible(true);
            concurrentHashMap.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e);
            return null;
        }
    }

    public final int a(RectF rectF) {
        CharSequence transformation;
        int length = this.e.length;
        if (length == 0) {
            defpackage.ah.f("No available text sizes to choose from.");
            return 0;
        }
        int i = length - 1;
        int i2 = 0;
        int i3 = 1;
        while (true) {
            int[] iArr = this.e;
            if (i3 > i) {
                return iArr[i2];
            }
            int i4 = (i3 + i) / 2;
            int i5 = iArr[i4];
            CharSequence text = this.g.getText();
            TransformationMethod transformationMethod = this.g.getTransformationMethod();
            if (transformationMethod != null && (transformation = transformationMethod.getTransformation(text, this.g)) != null) {
                text = transformation;
            }
            int maxLines = this.g.getMaxLines();
            TextPaint textPaint = this.f;
            if (textPaint == null) {
                this.f = new TextPaint();
            } else {
                textPaint.reset();
            }
            this.f.set(this.g.getPaint());
            this.f.setTextSize(i5);
            Layout.Alignment alignment = (Layout.Alignment) a(this.g, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL);
            StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(text, 0, text.length(), this.f, Math.round(rectF.right));
            builderObtain.setAlignment(alignment).setLineSpacing(this.g.getLineSpacingExtra(), this.g.getLineSpacingMultiplier()).setIncludePad(this.g.getIncludeFontPadding()).setBreakStrategy(this.g.getBreakStrategy()).setHyphenationFrequency(this.g.getHyphenationFrequency()).setMaxLines(maxLines == -1 ? Integer.MAX_VALUE : maxLines);
            try {
                this.i.a(builderObtain, this.g);
            } catch (ClassCastException unused) {
                Log.w("ACTVAutoSizeHelper", "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
            }
            StaticLayout staticLayoutBuild = builderObtain.build();
            if ((maxLines == -1 || (staticLayoutBuild.getLineCount() <= maxLines && staticLayoutBuild.getLineEnd(staticLayoutBuild.getLineCount() - 1) == text.length())) && staticLayoutBuild.getHeight() <= rectF.bottom) {
                int i6 = i4 + 1;
                i2 = i3;
                i3 = i6;
            } else {
                i2 = i4 - 1;
                i = i2;
            }
        }
    }

    public final void a(int i, float f) {
        Resources resources;
        Context context = this.h;
        if (context == null) {
            resources = Resources.getSystem();
        } else {
            resources = context.getResources();
        }
        float fApplyDimension = TypedValue.applyDimension(i, f, resources.getDisplayMetrics());
        if (fApplyDimension != this.g.getPaint().getTextSize()) {
            this.g.getPaint().setTextSize(fApplyDimension);
            boolean zIsInLayout = this.g.isInLayout();
            if (this.g.getLayout() != null) {
                this.b = false;
                try {
                    Method methodB = b("nullLayouts");
                    if (methodB != null) {
                        methodB.invoke(this.g, null);
                    }
                } catch (Exception e) {
                    Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e);
                }
                ExtendedTextView extendedTextView = this.g;
                if (!zIsInLayout) {
                    extendedTextView.requestLayout();
                } else {
                    extendedTextView.forceLayout();
                }
                this.g.invalidate();
            }
        }
    }

    public static Object a(TextView textView, String str, Object obj) {
        try {
            return b(str).invoke(textView, null);
        } catch (Exception e) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e);
            return obj;
        }
    }

    public final void a() {
        ExtendedTextView extendedTextView = this.g;
        if (this.a != 0) {
            if (this.b) {
                if (extendedTextView.getMeasuredHeight() <= 0 || this.g.getMeasuredWidth() <= 0) {
                    return;
                }
                int measuredWidth = this.i.a(this.g) ? 1048576 : (this.g.getMeasuredWidth() - this.g.getTotalPaddingLeft()) - this.g.getTotalPaddingRight();
                int height = (this.g.getHeight() - this.g.getCompoundPaddingBottom()) - this.g.getCompoundPaddingTop();
                if (measuredWidth <= 0 || height <= 0) {
                    return;
                }
                RectF rectF = j;
                synchronized (rectF) {
                    try {
                        rectF.setEmpty();
                        rectF.right = measuredWidth;
                        rectF.bottom = height;
                        float fA = a(rectF);
                        if (fA != this.g.getTextSize()) {
                            a(0, fA);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            this.b = true;
        }
    }
}
