package com.my.target.instreamads.qrcta.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.my.target.instreamads.qrcta.view.QrCtaView;
import defpackage.a4;
import defpackage.h14;
import defpackage.kc2;
import defpackage.pp9;
import defpackage.s0a;
import defpackage.w4a;
import defpackage.xu6;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes4.dex */
public class QrCtaView extends FrameLayout {
    public static final /* synthetic */ int i = 0;
    public final ImageView b;
    public final ImageView c;
    public final FrameLayout d;
    public final TextView e;
    public final TextView f;
    public final ImageView g;
    public final LinearLayout h;

    public static class a {
        public static final int[] a = {-1, -1};
        public static final int[] b = {-9187073, -12547358, -13405953};
        public static final int[] c = {-7674395, -15551822};
        public static final int[] d = {-9643650, -15551982};
        public static final int[] e = {-10929, -1595134};
        public static final int[] f = {-35453, -1757632};
        public static final int[] g = {-32555, -1751631};
        public static final int[] h = {-2906369, -7389216};
    }

    public QrCtaView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        ImageView imageView = new ImageView(context);
        this.b = imageView;
        ImageView imageView2 = new ImageView(context);
        this.c = imageView2;
        FrameLayout frameLayout = new FrameLayout(context);
        this.d = frameLayout;
        TextView textView = new TextView(context);
        this.e = textView;
        TextView textView2 = new TextView(context);
        this.f = textView2;
        ImageView imageView3 = new ImageView(context);
        this.g = imageView3;
        LinearLayout linearLayout = new LinearLayout(context);
        this.h = linearLayout;
        frameLayout.addView(imageView);
        frameLayout.addView(imageView2);
        textView.setTextSize(2, 24.0f);
        textView.setGravity(17);
        textView2.setTextSize(2, 18.0f);
        textView2.setGravity(17);
        linearLayout.setOrientation(1);
        linearLayout.addView(imageView3);
        linearLayout.addView(textView);
        linearLayout.addView(frameLayout);
        linearLayout.addView(textView2);
        addView(linearLayout);
    }

    public final void a(final h14 h14Var, ImageView imageView, final int i2, final int i3) {
        final WeakReference weakReference = new WeakReference(imageView);
        WeakHashMap weakHashMap = s0a.c;
        pp9 pp9Var = pp9.d;
        ArrayList arrayList = new ArrayList();
        arrayList.add(h14Var);
        s0a s0aVarA = s0a.a(arrayList, pp9Var);
        s0aVarA.b = new s0a.b(this) { // from class: yu6
            @Override // s0a.b
            public final void a() {
                int i4 = QrCtaView.i;
                Bitmap bitmap = (Bitmap) h14Var.d;
                if (bitmap != null) {
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(bitmapCreateBitmap);
                    Paint paint = new Paint();
                    paint.setAntiAlias(true);
                    Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                    paint.setShader(new BitmapShader(bitmap, tileMode, tileMode));
                    Path path = new Path();
                    RectF rectF = new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight());
                    float f = i2;
                    float f2 = i3;
                    path.addRoundRect(rectF, new float[]{f, f, f, f, f2, f2, f2, f2}, Path.Direction.CW);
                    canvas.drawPath(path, paint);
                    ImageView imageView2 = (ImageView) weakReference.get();
                    if (imageView2 != null) {
                        imageView2.setImageBitmap(bitmapCreateBitmap);
                    }
                }
            }
        };
        if (!s0aVarA.a.isEmpty()) {
            s0aVarA.b(new a4(s0aVarA));
        } else {
            if (s0aVarA.b == null) {
                return;
            }
            w4a.c(new kc2(s0aVarA, 4));
        }
    }

    public void setQrCta(xu6 xu6Var) {
        int[] iArr;
        xu6Var.getClass();
        char c = 0;
        switch (c) {
            case 1:
                iArr = a.b;
                break;
            case 2:
                iArr = a.c;
                break;
            case 3:
                iArr = a.d;
                break;
            case 4:
                iArr = a.e;
                break;
            case 5:
                iArr = a.f;
                break;
            case 6:
                iArr = a.g;
                break;
            case 7:
                iArr = a.h;
                break;
            default:
                iArr = a.a;
                break;
        }
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TL_BR, iArr);
        gradientDrawable.setCornerRadius(32.0f);
        this.h.setBackground(gradientDrawable);
        ImageView imageView = this.g;
        imageView.setVisibility(8);
        TextView textView = this.e;
        textView.setText((CharSequence) null);
        textView.setTextColor(-16777216);
        int i2 = (imageView.getVisibility() == 0 ? (char) 1 : (char) 0) != 0 ? 12 : 40;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) textView.getLayoutParams();
        marginLayoutParams.setMargins(36, i2, 36, 20);
        textView.setLayoutParams(marginLayoutParams);
        throw null;
    }

    public void setQrCtaAdditionalTextStyle(int i2) {
        this.f.setTextAppearance(i2);
    }

    public void setQrCtaTitleTextStyle(int i2) {
        this.e.setTextAppearance(i2);
    }

    public QrCtaView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public QrCtaView(Context context) {
        this(context, null);
    }
}
