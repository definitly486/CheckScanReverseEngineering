package com.warefly.checkscan.subscription.presentation.badge;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.drawable.DrawableKt;
import androidx.core.graphics.drawable.RoundedBitmapDrawable;
import androidx.core.graphics.drawable.RoundedBitmapDrawableFactory;
import com.warefly.checkscan.R;
import defpackage.aa4;
import defpackage.ad2;
import defpackage.dh;
import defpackage.ej0;
import defpackage.gg;
import defpackage.h37;
import defpackage.is7;
import defpackage.j59;
import defpackage.j72;
import defpackage.jn;
import defpackage.k29;
import defpackage.ln;
import defpackage.me0;
import defpackage.pl2;
import defpackage.qw6;
import defpackage.vk6;
import defpackage.zd3;
import defpackage.zg;

/* JADX INFO: loaded from: classes5.dex */
public final class ProfileBadgeView extends View {
    public b b;
    public RoundedBitmapDrawable c;
    public final ShapeDrawable d;
    public final Paint e;
    public final TextPaint f;
    public final RectF g;
    public final Paint h;
    public final Rect i;
    public int j;
    public final Rect k;
    public final Rect l;
    public Drawable m;
    public final Drawable n;
    public final Rect o;

    public static final class a {
        public final float a;
        public final float b;
        public final float c;
        public final float d;

        public a(float f, float f2, float f3, float f4) {
            this.a = f;
            this.b = f2;
            this.c = f3;
            this.d = f4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Float.compare(this.a, aVar.a) == 0 && Float.compare(this.b, aVar.b) == 0 && Float.compare(this.c, aVar.c) == 0 && Float.compare(this.d, aVar.d) == 0;
        }

        public final int hashCode() {
            return Float.hashCode(this.d) + jn.b(this.c, jn.b(this.b, Float.hashCode(this.a) * 31, 31), 31);
        }

        public final String toString() {
            return "ProfilePicCoordinates(top=" + this.a + ", bottom=" + this.b + ", left=" + this.c + ", right=" + this.d + ")";
        }
    }

    public static abstract class b {

        public static final class a extends b {
            public final int a;
            public final int b;

            public a(int i, int i2) {
                this.a = i;
                this.b = i2;
            }

            @Override // com.warefly.checkscan.subscription.presentation.badge.ProfileBadgeView.b
            public final int c() {
                return this.b;
            }

            @Override // com.warefly.checkscan.subscription.presentation.badge.ProfileBadgeView.b
            public final int d() {
                return this.a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof a)) {
                    return false;
                }
                a aVar = (a) obj;
                return this.a == aVar.a && this.b == aVar.b;
            }

            public final int hashCode() {
                return Integer.hashCode(this.b) + ej0.b(this.a, ej0.b(-1, 803033117, 31), 31);
            }

            public final String toString() {
                return ln.c(this.a, this.b, "Anon(title=Войти, titleColor=-1, startGradientColor=", ", endGradientColor=", ")");
            }
        }

        /* JADX INFO: renamed from: com.warefly.checkscan.subscription.presentation.badge.ProfileBadgeView$b$b, reason: collision with other inner class name */
        public static final class C0175b extends b {
            public final String a;
            public final String b;
            public final int c;
            public final int d;

            public C0175b(String str, String str2, int i, int i2) {
                str.getClass();
                this.a = str;
                this.b = str2;
                this.c = i;
                this.d = i2;
            }

            @Override // com.warefly.checkscan.subscription.presentation.badge.ProfileBadgeView.b
            public final String b() {
                return this.b;
            }

            @Override // com.warefly.checkscan.subscription.presentation.badge.ProfileBadgeView.b
            public final int c() {
                return this.d;
            }

            @Override // com.warefly.checkscan.subscription.presentation.badge.ProfileBadgeView.b
            public final int d() {
                return this.c;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C0175b)) {
                    return false;
                }
                C0175b c0175b = (C0175b) obj;
                return aa4.e(this.a, c0175b.a) && aa4.e(this.b, c0175b.b) && this.c == c0175b.c && this.d == c0175b.d;
            }

            public final int hashCode() {
                int iHashCode = this.a.hashCode() * 31;
                String str = this.b;
                return Integer.hashCode(this.d) + ej0.b(this.c, (iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31);
            }

            public final String toString() {
                StringBuilder sbD = ad2.d("ImageSubscription(startImage=", this.a, ", avatarUrl=", this.b, ", startGradientColor=");
                sbD.append(this.c);
                sbD.append(", endGradientColor=");
                sbD.append(this.d);
                sbD.append(")");
                return sbD.toString();
            }
        }

        public static final class c extends b {
            public static final c a = new c();
        }

        public static final class d extends b {
            public final String a;

            public d(String str) {
                this.a = str;
            }

            @Override // com.warefly.checkscan.subscription.presentation.badge.ProfileBadgeView.b
            public final String b() {
                return this.a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof d) && aa4.e(this.a, ((d) obj).a);
            }

            public final int hashCode() {
                String str = this.a;
                if (str == null) {
                    return 0;
                }
                return str.hashCode();
            }

            public final String toString() {
                return me0.c("OnlyProfilePic(avatarUrl=", this.a, ")");
            }
        }

        public static final class e extends b {
            public final String a;
            public final String b;
            public final int c;
            public final int d;
            public final int e;
            public final Integer f;
            public final boolean g;

            public e(String str, String str2, int i, int i2, int i3, Integer num, boolean z) {
                str2.getClass();
                this.a = str;
                this.b = str2;
                this.c = i;
                this.d = i2;
                this.e = i3;
                this.f = num;
                this.g = z;
            }

            @Override // com.warefly.checkscan.subscription.presentation.badge.ProfileBadgeView.b
            public final String b() {
                return this.a;
            }

            @Override // com.warefly.checkscan.subscription.presentation.badge.ProfileBadgeView.b
            public final int c() {
                return this.e;
            }

            @Override // com.warefly.checkscan.subscription.presentation.badge.ProfileBadgeView.b
            public final int d() {
                return this.d;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof e)) {
                    return false;
                }
                e eVar = (e) obj;
                return aa4.e(this.a, eVar.a) && aa4.e(this.b, eVar.b) && this.c == eVar.c && this.d == eVar.d && this.e == eVar.e && aa4.e(this.f, eVar.f) && this.g == eVar.g;
            }

            public final int hashCode() {
                String str = this.a;
                int iB = ej0.b(this.e, ej0.b(this.d, ej0.b(this.c, zg.b((str == null ? 0 : str.hashCode()) * 31, 31, this.b), 31), 31), 31);
                Integer num = this.f;
                return Boolean.hashCode(this.g) + ((iB + (num != null ? num.hashCode() : 0)) * 31);
            }

            public final String toString() {
                StringBuilder sbD = ad2.d("Subscription(avatarUrl=", this.a, ", title=", this.b, ", titleColor=");
                gg.e(sbD, this.c, ", startGradientColor=", this.d, ", endGradientColor=");
                sbD.append(this.e);
                sbD.append(", strokeColor=");
                sbD.append(this.f);
                sbD.append(", isStrikeThruText=");
                return dh.e(sbD, this.g, ")");
            }
        }

        public static String a(String str) {
            str.getClass();
            return str.length() > 10 ? str.substring(0, 10).concat("...") : str;
        }

        public String b() {
            return null;
        }

        public int c() {
            return 0;
        }

        public int d() {
            return 0;
        }
    }

    public static final class c extends j72<Drawable> {
        public c() {
        }

        @Override // defpackage.wk8
        public final void onLoadCleared(Drawable drawable) {
        }

        @Override // defpackage.j72, defpackage.wk8
        public final void onLoadFailed(Drawable drawable) {
            super.onLoadFailed(drawable);
            ProfileBadgeView.this.invalidate();
        }

        @Override // defpackage.wk8
        public final void onResourceReady(Object obj, k29 k29Var) {
            Drawable drawable = (Drawable) obj;
            ProfileBadgeView profileBadgeView = ProfileBadgeView.this;
            Resources resources = profileBadgeView.getResources();
            resources.getClass();
            RoundedBitmapDrawable roundedBitmapDrawableCreate = RoundedBitmapDrawableFactory.create(resources, DrawableKt.toBitmap$default(drawable, 0, 0, null, 7, null));
            roundedBitmapDrawableCreate.setCircular(true);
            profileBadgeView.c = roundedBitmapDrawableCreate;
            profileBadgeView.invalidate();
            profileBadgeView.requestLayout();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProfileBadgeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, R.style.BaseProfileBadge);
        context.getClass();
        RoundedBitmapDrawable roundedBitmapDrawableCreate = null;
        this.b = new b.d(null);
        this.d = is7.a(ContextCompat.getColor(getContext(), R.color.almostThereMoon));
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        this.e = paint;
        TextPaint textPaint = new TextPaint();
        textPaint.setTextSize(pl2.d(16.0f));
        textPaint.setAntiAlias(true);
        textPaint.setTypeface(ResourcesCompat.getFont(getContext(), R.font.roboto_medium));
        this.f = textPaint;
        this.g = new RectF();
        Paint paint2 = new Paint();
        paint2.setAntiAlias(true);
        this.h = paint2;
        this.i = new Rect();
        this.k = new Rect();
        this.l = new Rect();
        this.n = ContextCompat.getDrawable(getContext(), R.drawable.ic_triangle_warning);
        this.o = new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, qw6.a, R.attr.profileBadgeStyle, R.style.BaseProfileBadge);
        Drawable drawableE = zd3.e(typedArrayObtainStyledAttributes, 1);
        if (drawableE != null) {
            Resources resources = typedArrayObtainStyledAttributes.getResources();
            resources.getClass();
            roundedBitmapDrawableCreate = RoundedBitmapDrawableFactory.create(resources, DrawableKt.toBitmap$default(drawableE, 0, 0, null, 7, null));
            roundedBitmapDrawableCreate.setCircular(true);
        }
        this.c = roundedBitmapDrawableCreate;
        paint2.setShader(a());
        typedArrayObtainStyledAttributes.recycle();
    }

    private final a getOnlyProfilePicCoordinates() {
        return new a(0.0f, pl2.e(40), 0.0f, pl2.e(40));
    }

    private final a getProfilePicCoordinates() {
        b bVar = this.b;
        if (bVar instanceof b.a) {
            return new a(0.0f, 0.0f, 0.0f, 0.0f);
        }
        if (bVar instanceof b.e) {
            return getProfilePicSubscriptionCoordinates();
        }
        if (!(bVar instanceof b.d) && !aa4.e(bVar, b.c.a)) {
            if (bVar instanceof b.C0175b) {
                return getProfilePicImageSubscriptionCoordinates();
            }
            me0.e();
            return null;
        }
        return getOnlyProfilePicCoordinates();
    }

    private final a getProfilePicImageSubscriptionCoordinates() {
        float fE = (pl2.e(40) / 2.0f) - (pl2.e(32) / 2.0f);
        float fE2 = pl2.e(32) + fE;
        int iE = pl2.e(8) + pl2.e(24) + pl2.e(12);
        return new a(fE, fE2, iE, pl2.e(32) + iE);
    }

    private final a getProfilePicSubscriptionCoordinates() {
        float fE = (pl2.e(40) / 2.0f) - (pl2.e(32) / 2.0f);
        float fE2 = pl2.e(32) + fE;
        float fD = pl2.d(12.0f) + this.j + pl2.e(8);
        return new a(fE, fE2, fD, pl2.e(32) + fD);
    }

    public final LinearGradient a() {
        b bVar = this.b;
        if ((bVar instanceof b.d) || (bVar instanceof b.c)) {
            return null;
        }
        return new LinearGradient(0.0f, 0.0f, e() / 2.0f, 0.0f, this.b.d(), this.b.c(), Shader.TileMode.CLAMP);
    }

    public final void b(Canvas canvas) {
        RectF rectF = this.g;
        rectF.left = 0.0f;
        rectF.top = 0.0f;
        rectF.right = e();
        rectF.bottom = pl2.e(40);
        canvas.drawRoundRect(rectF, pl2.d(32.0f), pl2.d(32.0f), this.h);
    }

    public final void c(Canvas canvas) {
        a profilePicCoordinates = getProfilePicCoordinates();
        int i = (int) profilePicCoordinates.c;
        Rect rect = this.k;
        rect.left = i;
        rect.right = (int) profilePicCoordinates.d;
        rect.top = (int) profilePicCoordinates.a;
        rect.bottom = (int) profilePicCoordinates.b;
        RoundedBitmapDrawable roundedBitmapDrawable = this.c;
        if (roundedBitmapDrawable != null) {
            roundedBitmapDrawable.setBounds(rect);
        }
        RoundedBitmapDrawable roundedBitmapDrawable2 = this.c;
        if (roundedBitmapDrawable2 != null) {
            roundedBitmapDrawable2.draw(canvas);
        }
    }

    public final void d(Canvas canvas, String str, int i, boolean z) {
        Rect rect = this.i;
        canvas.getClipBounds(rect);
        int iHeight = rect.height();
        Paint.Align align = Paint.Align.LEFT;
        TextPaint textPaint = this.f;
        textPaint.setTextAlign(align);
        textPaint.getTextBounds(str, 0, str.length(), rect);
        float fHeight = ((rect.height() / 2.0f) + (iHeight / 2.0f)) - rect.bottom;
        float fD = pl2.d(12.0f);
        textPaint.setColor(i);
        textPaint.setStrikeThruText(z);
        j59 j59Var = j59.a;
        canvas.drawText(str, fD, fHeight, textPaint);
    }

    public final int e() {
        int iE;
        int iE2;
        int iE3;
        b bVar = this.b;
        boolean z = bVar instanceof b.a;
        Rect rect = this.i;
        TextPaint textPaint = this.f;
        if (!z) {
            if (bVar instanceof b.e) {
                b.e eVar = (b.e) bVar;
                String str = eVar.b;
                textPaint.getTextBounds(b.a(str), 0, b.a(str).length(), rect);
                this.j = rect.width();
                return ((int) pl2.d(12.0f)) + this.j + pl2.e(32) + pl2.e(8) + (eVar.f == null ? pl2.e(2) : pl2.e(4));
            }
            if (!(bVar instanceof b.d) && !aa4.e(bVar, b.c.a)) {
                if (!(bVar instanceof b.C0175b)) {
                    me0.e();
                    return 0;
                }
                iE = pl2.e(12);
                iE2 = pl2.e(24);
                iE3 = pl2.e(4) + pl2.e(32) + pl2.e(8);
            }
            return pl2.e(40);
        }
        textPaint.getTextBounds(b.a("Войти"), 0, b.a("Войти").length(), rect);
        iE = (int) pl2.d(12.0f);
        iE2 = rect.width();
        iE3 = pl2.e(12);
        return iE + iE2 + iE3;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        canvas.getClass();
        super.onDraw(canvas);
        b bVar = this.b;
        if (bVar instanceof b.a) {
            b(canvas);
            d(canvas, b.a("Войти"), -1, false);
            return;
        }
        if (bVar instanceof b.e) {
            b(canvas);
            b.e eVar = (b.e) bVar;
            d(canvas, b.a(eVar.b), eVar.c, eVar.g);
            Integer num = eVar.f;
            if (num != null) {
                int iIntValue = num.intValue();
                a profilePicCoordinates = getProfilePicCoordinates();
                Paint paint = this.e;
                paint.setColor(iIntValue);
                canvas.drawCircle((profilePicCoordinates.c + profilePicCoordinates.d) / 2.0f, pl2.e(40) / 2.0f, (pl2.e(2) + pl2.e(32)) / 2.0f, paint);
            }
            c(canvas);
            return;
        }
        if (bVar instanceof b.d) {
            c(canvas);
            return;
        }
        if (!(bVar instanceof b.C0175b)) {
            if (aa4.e(bVar, b.c.a)) {
                a profilePicCoordinates2 = getProfilePicCoordinates();
                int i = (int) profilePicCoordinates2.c;
                Rect rect = this.o;
                rect.left = i;
                rect.right = (int) profilePicCoordinates2.d;
                rect.top = (int) profilePicCoordinates2.a;
                rect.bottom = (int) profilePicCoordinates2.b;
                ShapeDrawable shapeDrawable = this.d;
                shapeDrawable.setBounds(rect);
                shapeDrawable.draw(canvas);
                return;
            }
            return;
        }
        b(canvas);
        Drawable drawable = this.m;
        if (drawable == null) {
            drawable = this.n;
        }
        if (drawable != null) {
            int iE = (int) ((pl2.e(40) / 2.0f) - (pl2.e(24) / 2.0f));
            Rect rect2 = this.l;
            rect2.top = iE;
            rect2.bottom = pl2.e(24) + iE;
            int iE2 = pl2.e(12);
            rect2.left = iE2;
            rect2.right = pl2.e(24) + iE2;
            drawable.setBounds(rect2);
            drawable.draw(canvas);
        }
        c(canvas);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        setMeasuredDimension(e(), pl2.e(40));
    }

    public final void setBadgeType(b bVar) {
        bVar.getClass();
        this.b = bVar;
        this.c = null;
        this.m = null;
        if (bVar instanceof b.d ? true : bVar instanceof b.e ? true : bVar instanceof b.C0175b) {
            Object objB = bVar.b();
            if (objB == null) {
                objB = Integer.valueOf(R.drawable.ic_default_subscription_avatar);
            }
            setProfilePic(objB);
        }
        b bVar2 = this.b;
        b.C0175b c0175b = bVar2 instanceof b.C0175b ? (b.C0175b) bVar2 : null;
        if (c0175b != null) {
            h37 h37VarH = com.bumptech.glide.a.d(getContext()).a(Drawable.class).N(c0175b.a).h(R.drawable.ic_triangle_warning);
            h37VarH.K(new vk6(this), h37VarH);
        }
        this.h.setShader(a());
        invalidate();
        requestLayout();
    }

    public final void setProfilePic(Object obj) {
        obj.getClass();
        if (this.b instanceof b.a) {
            return;
        }
        h37 h37VarH = com.bumptech.glide.a.d(getContext()).a(Drawable.class).N(obj).h(R.drawable.ic_default_subscription_avatar);
        h37VarH.K(new c(), h37VarH);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProfileBadgeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.profileBadgeStyle);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProfileBadgeView(Context context) {
        this(context, null);
        context.getClass();
    }
}
