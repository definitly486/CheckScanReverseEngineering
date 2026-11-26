package yads;

import android.content.Context;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.compose.ui.autofill.AutofillUtils_androidKt;
import defpackage.j59;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;

/* JADX INFO: loaded from: classes6.dex */
public final class nf6 extends rf6 {
    public final d9 c;
    public final lf6 d;
    public final wl4 e;
    public final kf6 f;
    public final il4 g;
    public jf6 h;

    public nf6(bf5 bf5Var, am4 am4Var, td6 td6Var, e4 e4Var, d9 d9Var, we3 we3Var, nl4 nl4Var, aj4 aj4Var, we4 we4Var, b05 b05Var, uj5 uj5Var, defpackage.y22 y22Var) {
        lf6 lf6Var = new lf6();
        super(am4Var);
        this.c = d9Var;
        this.d = lf6Var;
        this.e = new wl4(am4Var.getContext(), this, td6Var, e4Var, bf5Var, d9Var, we3Var, nl4Var, aj4Var, b05Var, uj5Var, y22Var);
        ((do6) bf5Var).getClass();
        this.f = new kf6(new no6());
        this.g = we4Var.a;
        we3Var.a.add(lf6Var);
    }

    @Override // yads.rf6
    public final void a(View view) {
        am4 am4Var = (am4) view;
        wl4 wl4Var = this.e;
        tl4 tl4Var = wl4Var.e;
        if (tl4Var != null) {
            yv4 yv4Var = tl4Var.m;
            if (yv4Var != null) {
                yv4Var.b.stop();
                wz3 wz3Var = am4Var.c.b;
                if (wz3Var != null) {
                    CheckBox muteControl = wz3Var.getMuteControl();
                    if (muteControl != null) {
                        muteControl.setOnClickListener(null);
                        muteControl.setVisibility(8);
                    }
                    ProgressBar videoProgress = wz3Var.getVideoProgress();
                    if (videoProgress != null) {
                        videoProgress.setProgress(0);
                        videoProgress.setVisibility(8);
                    }
                    TextView countDownProgress = wz3Var.getCountDownProgress();
                    if (countDownProgress != null) {
                        countDownProgress.setText("");
                        countDownProgress.setVisibility(8);
                    }
                }
            }
            tl4Var.h.b(am4Var);
        }
        wl4Var.e = null;
        zi4 zi4Var = wl4Var.f;
        if (zi4Var != null) {
            wl4Var.a.a.remove(zi4Var);
            wl4Var.f = null;
        }
        am4Var.setOnAttachStateChangeListener(null);
        am4Var.setVisibility(8);
        am4Var.setOnClickListener(null);
        am4Var.setOnTouchListener(null);
        am4Var.setSelected(false);
    }

    @Override // yads.rf6
    public final void b(View view, Object obj) {
        kl0 kl0Var;
        gr2 gr2Var;
        am4 am4Var = (am4) view;
        r96 r96Var = (r96) obj;
        ja6 ja6Var = (ja6) defpackage.qn1.T(r96Var.a);
        jf6 jf6VarA = this.f.a(am4Var.getContext(), ja6Var, jb6.STANDALONE);
        this.h = jf6VarA;
        this.d.a = jf6VarA;
        il4 il4Var = this.g;
        Context context = am4Var.getContext();
        d9 d9Var = this.c;
        il4Var.getClass();
        String str = ja6Var.f;
        boolean zA = yt2.a(context, xt2.FIRST_VIDEO_PRELOADING_STRATEGY);
        ql4[] ql4VarArr = ql4.b;
        if ("first_video_preloading_strategy".equals(d9Var.v) && zA) {
            ix2 ix2Var = il4Var.c;
            synchronized (ix2Var.d) {
                try {
                    al4 al4Var = ix2Var.b;
                    qk2 qk2Var = (qk2) al4Var.b.getValue();
                    if (qk2Var != null) {
                        qk2Var.c++;
                        qk2Var.a.obtainMessage(7, str).sendToTarget();
                    }
                    al4Var.c.remove(str);
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else {
            il4Var.b.a(str);
        }
        wl4 wl4Var = this.e;
        xk4 xk4Var = wl4Var.d;
        ja6 ja6Var2 = (ja6) defpackage.qn1.T(r96Var.a);
        gr2 gr2VarA = xk4Var.b.a.a(ja6Var2);
        if (gr2VarA == null || gr2VarA.j) {
            ql0 ql0Var = xk4Var.a;
            zp2 zp2Var = new zp2(ql0Var.d, ql0Var.a, ql0Var.b, ql0Var.c);
            zt3 zt3Var = zp2Var.d;
            fe5 fe5Var = zp2Var.e;
            lv4 lv4Var = fe5Var != null ? fe5Var.O0 : null;
            zt3Var.getClass();
            if (lv4Var != null) {
                Integer num = lv4Var.a;
                int iIntValue = num != null ? num.intValue() : 50000;
                Integer num2 = lv4Var.b;
                int iIntValue2 = num2 != null ? num2.intValue() : 50000;
                Integer num3 = lv4Var.c;
                int iIntValue3 = num3 != null ? num3.intValue() : 2500;
                Integer num4 = lv4Var.d;
                int iIntValue4 = num4 != null ? num4.intValue() : AutofillUtils_androidKt.MAX_AUTOFILL_TEXT_LENGTH;
                kl0.a(iIntValue3, 0, "bufferForPlaybackMs", CommonUrlParts.Values.FALSE_INTEGER);
                kl0.a(iIntValue4, 0, "bufferForPlaybackAfterRebufferMs", CommonUrlParts.Values.FALSE_INTEGER);
                kl0.a(iIntValue, iIntValue3, "minBufferMs", "bufferForPlaybackMs");
                kl0.a(iIntValue, iIntValue4, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
                kl0.a(iIntValue2, iIntValue, "maxBufferMs", "minBufferMs");
                Integer num5 = lv4Var.e;
                kl0Var = new kl0(new aj0(), iIntValue, iIntValue2, iIntValue3, iIntValue4, num5 != null ? num5.intValue() : -1, true);
            } else {
                kl0Var = null;
            }
            wp2 wp2Var = new wp2(zp2Var.f);
            zl0 zl0Var = new zl0(zp2Var.f);
            zl0Var.d = true;
            wp2 wp2VarC = wp2Var.c(zl0Var);
            if (kl0Var != null) {
                wp2VarC.b(kl0Var);
            }
            if (wp2VarC.r) {
                defpackage.ud.g();
                return;
            }
            wp2VarC.r = true;
            gr2 gr2Var2 = new gr2(new eq2(wp2VarC), new s14(zp2Var.f), new fe6(zp2Var.f, zp2Var.a, zp2Var.b, zp2Var.c));
            xk4Var.b.a.a(ja6Var2, gr2Var2);
            gr2Var = gr2Var2;
        } else {
            gr2Var = gr2VarA;
        }
        Context context2 = am4Var.getContext();
        ul4 ul4Var = wl4Var.b;
        tl4 tl4Var = new tl4(context2, ul4Var.e, ul4Var.d, gr2Var, r96Var, ul4Var.b, ul4Var.a, new cb6(ul4Var.c, ul4Var.e), jf6VarA, ul4Var.f, ul4Var.g, ul4Var.h, ul4Var.i, ul4Var.j);
        wl4Var.e = tl4Var;
        uk4 uk4Var = tl4Var.f;
        td6 td6Var = tl4Var.a;
        uk4Var.getClass();
        Double d = td6Var.d;
        uk4Var.b.a.a((float) (d != null ? d.doubleValue() : 0.0d));
        se6 se6Var = td6Var.a;
        gr2 gr2Var3 = uk4Var.a;
        if (!gr2Var3.j) {
            pe6 pe6Var = gr2Var3.e;
            pe6Var.e = se6Var;
            pe6Var.b();
        }
        tl4Var.h.a(am4Var);
        xd6 xd6Var = am4Var.a;
        a15 a15Var = tl4Var.g;
        a15Var.getClass();
        ImageView imageView = xd6Var.b;
        ProgressBar progressBar = xd6Var.a;
        if (imageView == null || a15Var.a.c == null) {
            progressBar.setVisibility(0);
        } else {
            defpackage.mb4 mb4Var = a15Var.d;
            if (mb4Var != null) {
                mb4Var.cancel(null);
            }
            a15Var.d = defpackage.av0.c(a15Var.c, null, null, new z05(a15Var, imageView, progressBar, null), 3);
        }
        tl4Var.a(tl4Var.j);
        zi4 zi4Var = new zi4(gr2Var);
        wl4Var.f = zi4Var;
        aj4 aj4Var = wl4Var.a;
        aj4Var.a.add(zi4Var);
        if (aj4Var.b) {
            gr2Var.a();
        }
        am4Var.setOnAttachStateChangeListener(new bl4(gr2Var, am4Var));
    }

    @Override // yads.rf6
    public final void a(ak akVar, vf6 vf6Var, Object obj) {
        am4 am4Var;
        r96 r96Var = (r96) obj;
        am4 am4Var2 = (am4) b();
        if (am4Var2 != null) {
            vf6Var.a(am4Var2, akVar);
            if (r96Var == null || this.h == null) {
                return;
            }
            ja6 ja6Var = (ja6) defpackage.qn1.T(r96Var.a);
            vf6Var.a(akVar, new xc6(am4Var2, ja6Var.a));
            wl4 wl4Var = this.e;
            wl4Var.c.getClass();
            ol4 ol4Var = (ol4) ja6Var.d;
            int i = ol4Var.c;
            am4Var2.setAspectRatio(i != 0 ? ol4Var.b / i : 1.7777778f);
            tl4 tl4Var = wl4Var.e;
            if (tl4Var == null || (am4Var = (am4) tl4Var.b.b()) == null) {
                return;
            }
            am4Var.setClickable(false);
        }
    }

    @Override // yads.rf6
    public final /* bridge */ /* synthetic */ boolean a(View view, Object obj) {
        return true;
    }

    @Override // yads.rf6
    public final void a() {
        jf6 jf6Var = this.h;
        if (jf6Var != null) {
            jf6Var.k();
        }
        this.d.a = null;
    }
}
