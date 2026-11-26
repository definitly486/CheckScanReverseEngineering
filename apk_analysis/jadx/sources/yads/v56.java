package yads;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import androidx.core.content.ContextCompat;
import androidx.transition.TransitionValues;
import com.yandex.mobile.ads.R$drawable;
import defpackage.j59;
import defpackage.kx6;
import defpackage.nl3;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import yads.v56;

/* JADX INFO: loaded from: classes6.dex */
public abstract class v56 {
    public static final k11 a = new k11(wr2.a(100L), wr2.a(Double.valueOf(0.6d)), wr2.a(j11.FADE), wr2.a(Double.valueOf(1.0d)));

    /* JADX WARN: Code duplicated, block: B:55:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:57:0x00de  */
    /* JADX WARN: Code duplicated, block: B:59:0x00e5 A[LOOP:2: B:58:0x00e3->B:59:0x00e5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:60:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:63:0x0102  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Animation a(k11 k11Var, fs2 fs2Var, boolean z, View view) {
        Float fValueOf;
        ArrayList arrayList;
        Drawable drawable;
        int numberOfLayers;
        int i;
        j11 j11Var = (j11) k11Var.e.a(fs2Var);
        int iOrdinal = j11Var.ordinal();
        Float fValueOf2 = null;
        scaleAnimation = 0;
        scaleAnimation = 0;
        scaleAnimation = 0;
        AnimationSet scaleAnimation = 0;
        if (iOrdinal == 2) {
            as2 as2Var = k11Var.h;
            Double d = as2Var != null ? (Double) as2Var.a(fs2Var) : null;
            if (d != null) {
                float fDoubleValue = (float) d.doubleValue();
                if (fDoubleValue < 0.0f) {
                    fDoubleValue = 0.0f;
                }
                fValueOf = Float.valueOf(fDoubleValue);
            } else {
                fValueOf = null;
            }
            float fFloatValue = fValueOf != null ? fValueOf.floatValue() : 1.0f;
            as2 as2Var2 = k11Var.b;
            Double d2 = as2Var2 != null ? (Double) as2Var2.a(fs2Var) : null;
            if (d2 != null) {
                float fDoubleValue2 = (float) d2.doubleValue();
                fValueOf2 = Float.valueOf(fDoubleValue2 >= 0.0f ? fDoubleValue2 : 0.0f);
            }
            float fFloatValue2 = fValueOf2 != null ? fValueOf2.floatValue() : 0.95f;
            scaleAnimation = new ScaleAnimation(fFloatValue, fFloatValue2, fFloatValue, fFloatValue2, 1, 0.5f, 1, 0.5f);
        } else if (iOrdinal != 3) {
            if (iOrdinal == 4) {
                scaleAnimation = new AnimationSet(false);
                List list = k11Var.d;
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        Animation animationA = a((k11) it.next(), fs2Var, z, view);
                        if (animationA != null) {
                            scaleAnimation.addAnimation(animationA);
                        }
                    }
                }
            } else if (iOrdinal != 5) {
                as2 as2Var3 = k11Var.h;
                Double d3 = as2Var3 != null ? (Double) as2Var3.a(fs2Var) : null;
                Float fValueOf3 = d3 != null ? Float.valueOf(kx6.d((float) d3.doubleValue(), 0.0f, 1.0f)) : null;
                float fFloatValue3 = fValueOf3 != null ? fValueOf3.floatValue() : 1.0f;
                as2 as2Var4 = k11Var.b;
                Double d4 = as2Var4 != null ? (Double) as2Var4.a(fs2Var) : null;
                Float fValueOf4 = d4 != null ? Float.valueOf(kx6.d((float) d4.doubleValue(), 0.0f, 1.0f)) : null;
                scaleAnimation = new AlphaAnimation(fFloatValue3, fValueOf4 != null ? fValueOf4.floatValue() : 0.6f);
            }
        } else if (view != null) {
            Drawable background = view.getBackground();
            LayerDrawable layerDrawable = background instanceof LayerDrawable ? (LayerDrawable) background : null;
            if (layerDrawable != null) {
                defpackage.y74 y74VarN = kx6.n(0, layerDrawable.getNumberOfLayers());
                if ((y74VarN instanceof Collection) && ((Collection) y74VarN).isEmpty()) {
                    arrayList = new ArrayList();
                    if (layerDrawable != null) {
                        numberOfLayers = layerDrawable.getNumberOfLayers();
                        for (i = 0; i < numberOfLayers; i++) {
                            arrayList.add(layerDrawable.getDrawable(i));
                        }
                    } else {
                        arrayList.add(view.getBackground());
                    }
                    drawable = ContextCompat.getDrawable(view.getContext(), R$drawable.monetization_ads_divkit_native_animation_background);
                    if (drawable != null) {
                        arrayList.add(drawable);
                    }
                    LayerDrawable layerDrawable2 = new LayerDrawable((Drawable[]) arrayList.toArray(new Drawable[0]));
                    layerDrawable2.setId(arrayList.size() - 1, R$drawable.monetization_ads_divkit_native_animation_background);
                    view.setBackground(layerDrawable2);
                } else {
                    defpackage.x74 it2 = y74VarN.iterator();
                    while (true) {
                        if (!it2.d) {
                            arrayList = new ArrayList();
                            if (layerDrawable != null) {
                                numberOfLayers = layerDrawable.getNumberOfLayers();
                                while (i < numberOfLayers) {
                                    arrayList.add(layerDrawable.getDrawable(i));
                                }
                            } else {
                                arrayList.add(view.getBackground());
                            }
                            drawable = ContextCompat.getDrawable(view.getContext(), R$drawable.monetization_ads_divkit_native_animation_background);
                            if (drawable != null) {
                                arrayList.add(drawable);
                            }
                            LayerDrawable layerDrawable3 = new LayerDrawable((Drawable[]) arrayList.toArray(new Drawable[0]));
                            layerDrawable3.setId(arrayList.size() - 1, R$drawable.monetization_ads_divkit_native_animation_background);
                            view.setBackground(layerDrawable3);
                        } else if (layerDrawable.getId(it2.nextInt()) == R$drawable.monetization_ads_divkit_native_animation_background) {
                        }
                    }
                }
            } else {
                arrayList = new ArrayList();
                if (layerDrawable != null) {
                    numberOfLayers = layerDrawable.getNumberOfLayers();
                    while (i < numberOfLayers) {
                        arrayList.add(layerDrawable.getDrawable(i));
                    }
                } else {
                    arrayList.add(view.getBackground());
                }
                drawable = ContextCompat.getDrawable(view.getContext(), R$drawable.monetization_ads_divkit_native_animation_background);
                if (drawable != null) {
                    arrayList.add(drawable);
                }
                LayerDrawable layerDrawable4 = new LayerDrawable((Drawable[]) arrayList.toArray(new Drawable[0]));
                layerDrawable4.setId(arrayList.size() - 1, R$drawable.monetization_ads_divkit_native_animation_background);
                view.setBackground(layerDrawable4);
            }
        }
        if (j11Var != j11.SET) {
            if (scaleAnimation != 0) {
                as2 as2Var5 = k11Var.c;
                scaleAnimation.setInterpolator(z ? new l95(jf2.a((o11) as2Var5.a(fs2Var))) : jf2.a((o11) as2Var5.a(fs2Var)));
            }
            if (scaleAnimation != 0) {
                scaleAnimation.setDuration(((Number) k11Var.a.a(fs2Var)).longValue());
            }
        }
        if (scaleAnimation != 0) {
            scaleAnimation.setStartOffset(((Number) k11Var.g.a(fs2Var)).longValue());
        }
        if (scaleAnimation == 0) {
            return scaleAnimation;
        }
        scaleAnimation.setFillAfter(true);
        return scaleAnimation;
    }

    public static final void a(TransitionValues transitionValues, nl3 nl3Var) {
        int[] iArr = new int[2];
        transitionValues.view.getLocationOnScreen(iArr);
        nl3Var.invoke(iArr);
    }

    public static final j59 a(Animation animation, Animation animation2, View view, MotionEvent motionEvent) {
        if (view.isEnabled() && view.isClickable() && view.hasOnClickListeners()) {
            int action = motionEvent.getAction();
            if (action != 0) {
                if ((action == 1 || action == 3) && animation2 != null) {
                    view.startAnimation(animation2);
                }
            } else if (animation != null) {
                view.startAnimation(animation);
            }
        }
        return j59.a;
    }

    public static final defpackage.bm3 a(k11 k11Var, fs2 fs2Var, View view) {
        final Animation animationA = a(k11Var, fs2Var, false, view);
        final Animation animationA2 = a(k11Var, fs2Var, true, (View) null);
        if (animationA == null && animationA2 == null) {
            return null;
        }
        return new defpackage.bm3() { // from class: gfa
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return v56.a(animationA, animationA2, (View) obj, (MotionEvent) obj2);
            }
        };
    }

    public static final View a(gr4 gr4Var, View view, ViewGroup viewGroup, TransitionValues transitionValues, String str) {
        if (defpackage.aa4.e(transitionValues.view, view) || !oh6.a(view)) {
            return view;
        }
        Object obj = transitionValues.values.get(str);
        obj.getClass();
        return ag6.a(view, viewGroup, gr4Var, (int[]) obj);
    }
}
