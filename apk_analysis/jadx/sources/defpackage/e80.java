package defpackage;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import androidx.core.view.ViewCompat;
import androidx.core.widget.ImageViewCompat;
import com.skydoves.balloon.databinding.BalloonLayoutBodyBinding;
import com.skydoves.balloon.radius.RadiusLayout;
import com.skydoves.balloon.vectortext.VectorTextView;
import com.warefly.checkscan.R;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class e80 implements Runnable {
    public final /* synthetic */ i80 b;
    public final /* synthetic */ View c;
    public final /* synthetic */ v80 d;

    public /* synthetic */ e80(i80 i80Var, View view, v80 v80Var) {
        this.b = i80Var;
        this.c = view;
        this.d = v80Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        int iMakeMeasureSpec;
        b36 b36Var;
        final i80 i80Var = this.b;
        final View view = this.c;
        boolean zB = i80Var.b(view);
        PopupWindow popupWindow = i80Var.e;
        BalloonLayoutBodyBinding balloonLayoutBodyBinding = i80Var.d;
        i80.a aVar = i80Var.c;
        Boolean boolValueOf = Boolean.valueOf(zB);
        if (!zB) {
            boolValueOf = null;
        }
        if (boolValueOf != null) {
            int i = aVar.x;
            int i2 = 1;
            i80Var.g = true;
            VectorTextView vectorTextView = balloonLayoutBodyBinding.balloonText;
            vectorTextView.getClass();
            RadiusLayout radiusLayout = balloonLayoutBodyBinding.balloonCard;
            radiusLayout.getClass();
            i80Var.i(vectorTextView, radiusLayout);
            int i3 = new Point(Resources.getSystem().getDisplayMetrics().widthPixels, Resources.getSystem().getDisplayMetrics().heightPixels).x;
            int i4 = aVar.a;
            if (i4 != Integer.MIN_VALUE) {
                if (i4 <= i3) {
                    i3 = i4;
                }
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
            } else {
                int i5 = aVar.b;
                if (i5 <= i3) {
                    i3 = i5;
                }
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
            }
            int i6 = new Point(Resources.getSystem().getDisplayMetrics().widthPixels, Resources.getSystem().getDisplayMetrics().heightPixels).y;
            int i7 = aVar.c;
            balloonLayoutBodyBinding.getRoot().measure(iMakeMeasureSpec, i7 != Integer.MIN_VALUE ? View.MeasureSpec.makeMeasureSpec(i7, 1073741824) : View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE));
            popupWindow.setWidth(i80Var.g());
            popupWindow.setHeight(i80Var.f());
            balloonLayoutBodyBinding.balloonText.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            final ImageView imageView = balloonLayoutBodyBinding.balloonArrow;
            int i8 = aVar.h;
            imageView.setLayoutParams(new FrameLayout.LayoutParams(i8, i8));
            imageView.setAlpha(1.0f);
            imageView.setPadding(0, 0, 0, 0);
            ImageViewCompat.setImageTintList(imageView, ColorStateList.valueOf(aVar.l));
            imageView.setOutlineProvider(ViewOutlineProvider.BOUNDS);
            balloonLayoutBodyBinding.balloonCard.post(new Runnable() { // from class: z70
                @Override // java.lang.Runnable
                public final void run() {
                    i80 i80Var2 = i80Var;
                    i80.a aVar2 = i80Var2.c;
                    as asVar = aVar2.j;
                    as asVar2 = as.ALIGN_FIXED;
                    View view2 = view;
                    if (asVar != asVar2) {
                        Rect rect = new Rect();
                        view2.getGlobalVisibleRect(rect);
                        int[] iArr = {0, 0};
                        i80Var2.e.getContentView().getLocationOnScreen(iArr);
                        zr zrVar = aVar2.k;
                        zr zrVar2 = zr.TOP;
                        if (zrVar == zrVar2 && iArr[1] < rect.bottom) {
                            zrVar = zr.BOTTOM;
                            zrVar.getClass();
                            aVar2.k = zrVar;
                        } else if (zrVar == zr.BOTTOM && iArr[1] > rect.top) {
                            zrVar2.getClass();
                            aVar2.k = zrVar2;
                            zrVar = zrVar2;
                        }
                        zr zrVar3 = zr.START;
                        if (zrVar == zrVar3 && iArr[0] < rect.right) {
                            zr zrVar4 = zr.END;
                            zrVar4.getClass();
                            aVar2.k = zrVar4;
                        } else if (zrVar == zr.END && iArr[0] > rect.left) {
                            zrVar3.getClass();
                            aVar2.k = zrVar3;
                        }
                        i80Var2.h();
                    }
                    BalloonLayoutBodyBinding balloonLayoutBodyBinding2 = i80Var2.d;
                    ImageView imageView2 = balloonLayoutBodyBinding2.balloonArrow;
                    zr.a aVar3 = zr.Companion;
                    zr zrVar5 = aVar2.k;
                    boolean z = aVar2.w;
                    aVar3.getClass();
                    zrVar5.getClass();
                    if (z) {
                        int i9 = zr.a.C0374a.a[zrVar5.ordinal()];
                        if (i9 == 1) {
                            zrVar5 = zr.END;
                        } else if (i9 == 2) {
                            zrVar5 = zr.START;
                        }
                    }
                    int i10 = i80.b.a[zrVar5.ordinal()];
                    if (i10 == 1) {
                        imageView2.setRotation(180.0f);
                        imageView2.setX(i80Var2.d(view2));
                        imageView2.setY((balloonLayoutBodyBinding2.balloonCard.getY() + balloonLayoutBodyBinding2.balloonCard.getHeight()) - 1.0f);
                        ViewCompat.setElevation(imageView2, 0.0f);
                        imageView2.getX();
                        balloonLayoutBodyBinding2.balloonCard.getHeight();
                        imageView2.setForeground(null);
                    } else if (i10 == 2) {
                        imageView2.setRotation(0.0f);
                        imageView2.setX(i80Var2.d(view2));
                        imageView2.setY((balloonLayoutBodyBinding2.balloonCard.getY() - aVar2.h) + 1.0f);
                        imageView2.getX();
                        imageView2.setForeground(null);
                    } else if (i10 == 3) {
                        imageView2.setRotation(-90.0f);
                        imageView2.setX((balloonLayoutBodyBinding2.balloonCard.getX() - aVar2.h) + 1.0f);
                        imageView2.setY(i80Var2.e(view2));
                        imageView2.getY();
                        imageView2.setForeground(null);
                    } else {
                        if (i10 != 4) {
                            me0.e();
                            return;
                        }
                        imageView2.setRotation(90.0f);
                        imageView2.setX((balloonLayoutBodyBinding2.balloonCard.getX() + balloonLayoutBodyBinding2.balloonCard.getWidth()) - 1.0f);
                        imageView2.setY(i80Var2.e(view2));
                        balloonLayoutBodyBinding2.balloonCard.getWidth();
                        imageView2.getY();
                        imageView2.setForeground(null);
                    }
                    ImageView imageView3 = imageView;
                    imageView3.getClass();
                    imageView3.setVisibility(0);
                }
            });
            i80Var.h();
            PopupWindow popupWindow2 = i80Var.f;
            if (i80.b.d[aVar.u.ordinal()] == 1) {
                popupWindow2.setAnimationStyle(R.style.Balloon_Fade_Anim);
            } else {
                popupWindow2.setAnimationStyle(R.style.Balloon_Normal_Anim);
            }
            int i9 = i80.b.c[aVar.t.ordinal()];
            if (i9 == 1) {
                popupWindow.setAnimationStyle(R.style.Balloon_Elastic_Anim);
            } else if (i9 == 2) {
                View contentView = popupWindow.getContentView();
                contentView.getClass();
                contentView.setVisibility(4);
                contentView.post(new h51(contentView, 3));
                popupWindow.setAnimationStyle(R.style.Balloon_Normal_Dispose_Anim);
            } else if (i9 == 3) {
                popupWindow.setAnimationStyle(R.style.Balloon_Fade_Anim);
            } else if (i9 == 4) {
                popupWindow.setAnimationStyle(R.style.Balloon_Overshoot_Anim);
            } else {
                if (i9 != 5) {
                    me0.e();
                    return;
                }
                popupWindow.setAnimationStyle(R.style.Balloon_None_Anim);
            }
            balloonLayoutBodyBinding.balloon.post(new u8(i80Var, i2));
            v80 v80Var = this.d;
            t86 t86Var = v80Var.d;
            k80 k80Var = v80Var.c;
            View view2 = v80Var.a;
            int i10 = i80.b.f[t86Var.ordinal()];
            if (i10 == 1) {
                b36Var = new b36(0, 0);
            } else if (i10 == 2) {
                int iB = w65.b(view2.getMeasuredWidth() * 0.5f);
                int iB2 = w65.b(view2.getMeasuredHeight() * 0.5f);
                int iB3 = w65.b(i80Var.g() * 0.5f);
                int iB4 = w65.b(i80Var.f() * 0.5f);
                int i11 = i80.b.g[k80Var.ordinal()];
                if (i11 == 1) {
                    b36Var = new b36(Integer.valueOf((iB - iB3) * i), Integer.valueOf(-(view2.getMeasuredHeight() + i80Var.f())));
                } else if (i11 == 2) {
                    b36Var = new b36(Integer.valueOf((iB - iB3) * i), 0);
                } else if (i11 == 3) {
                    b36Var = new b36(Integer.valueOf((-i80Var.g()) * i), Integer.valueOf(-(iB4 + iB2)));
                } else {
                    if (i11 != 4) {
                        me0.e();
                        return;
                    }
                    b36Var = new b36(Integer.valueOf(view2.getMeasuredWidth() * i), Integer.valueOf(-(iB4 + iB2)));
                }
            } else {
                if (i10 != 3) {
                    me0.e();
                    return;
                }
                int iB5 = w65.b(view2.getMeasuredWidth() * 0.5f);
                int iB6 = w65.b(view2.getMeasuredHeight() * 0.5f);
                int iB7 = w65.b(i80Var.g() * 0.5f);
                int iB8 = w65.b(i80Var.f() * 0.5f);
                int i12 = i80.b.g[k80Var.ordinal()];
                if (i12 == 1) {
                    b36Var = new b36(Integer.valueOf((iB5 - iB7) * i), Integer.valueOf(-(i80Var.f() + iB6)));
                } else if (i12 == 2) {
                    b36Var = new b36(Integer.valueOf((iB5 - iB7) * i), Integer.valueOf(-iB6));
                } else if (i12 == 3) {
                    b36Var = new b36(Integer.valueOf((iB5 - i80Var.g()) * i), Integer.valueOf((-iB8) - iB6));
                } else {
                    if (i12 != 4) {
                        me0.e();
                        return;
                    }
                    b36Var = new b36(Integer.valueOf(iB5 * i), Integer.valueOf((-iB8) - iB6));
                }
            }
            popupWindow.showAsDropDown(view, ((Number) b36Var.b).intValue() + ((int) view.getTranslationX()), ((Number) b36Var.c).intValue() + ((int) view.getTranslationY()));
        }
    }
}
