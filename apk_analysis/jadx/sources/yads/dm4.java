package yads;

import android.content.Context;
import android.util.TypedValue;
import android.view.TextureView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.monetization.ads.nativeads.video.view.CorePlaybackControlsContainer;
import com.yandex.mobile.ads.R$drawable;

/* JADX INFO: loaded from: classes6.dex */
public final class dm4 {
    public final b1 a;
    public final yd6 b;
    public final qw5 c;

    public dm4() {
        b1 b1Var = new b1();
        yd6 yd6Var = new yd6();
        qw5 qw5Var = new qw5();
        this.a = b1Var;
        this.b = yd6Var;
        this.c = qw5Var;
    }

    public final am4 a(Context context, td6 td6Var, tj6 tj6Var, r96 r96Var, int i) {
        this.c.getClass();
        TextureView textureView = new TextureView(context);
        textureView.setVisibility(8);
        b1 b1Var = this.a;
        uz3 uz3Var = b1Var.b.a;
        ImageView imageView = null;
        wz3 fc0Var = (tj6Var.getMuteControl() == null && tj6Var.getVideoProgress() == null) ? (wz3) dc5.a(context, CorePlaybackControlsContainer.class, i, null) : new fc0(tj6Var.getMuteControl(), tj6Var.getVideoProgress(), null);
        Button buttonA = b1Var.a.a.a(context);
        buttonA.setTag(bh6.a("replay_button"));
        buttonA.setVisibility(8);
        v65 v65Var = new v65(context, buttonA);
        v65Var.addView(buttonA);
        sk4 sk4Var = new sk4(context, v65Var, fc0Var);
        b1Var.c.getClass();
        wz3 wz3Var = sk4Var.b;
        sk4Var.a.setVisibility(8);
        CheckBox muteControl = wz3Var != null ? wz3Var.getMuteControl() : null;
        if (muteControl != null) {
            muteControl.setVisibility(8);
        }
        ProgressBar videoProgress = wz3Var != null ? wz3Var.getVideoProgress() : null;
        if (videoProgress != null) {
            videoProgress.setVisibility(8);
        }
        TextView countDownProgress = wz3Var != null ? wz3Var.getCountDownProgress() : null;
        if (countDownProgress != null) {
            countDownProgress.setVisibility(8);
        }
        CheckBox muteControl2 = wz3Var != null ? wz3Var.getMuteControl() : null;
        if (muteControl2 != null) {
            Double d = td6Var.d;
            muteControl2.setChecked((d != null && d.doubleValue() == 0.0d) || td6Var.d == null);
        }
        sk4Var.setVisibility(8);
        yd6 yd6Var = this.b;
        yd6Var.b.getClass();
        if ((r96Var != null ? r96Var.c : null) != null) {
            imageView = new ImageView(context);
            imageView.setAdjustViewBounds(true);
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        }
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        yd6Var.a.getClass();
        ProgressBar progressBar = new ProgressBar(context);
        progressBar.setIndeterminateDrawable(ContextCompat.getDrawable(context, R$drawable.monetization_ads_video_progress_bar_background));
        int iB = defpackage.w65.b(TypedValue.applyDimension(1, 45.0f, context.getResources().getDisplayMetrics()));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iB, iB);
        layoutParams.gravity = 17;
        progressBar.setLayoutParams(layoutParams);
        progressBar.setVisibility(8);
        progressBar.setTag(bh6.a("video_placeholder_spinner"));
        xd6 xd6Var = new xd6(context, progressBar, imageView);
        xd6Var.addView(progressBar);
        if (imageView != null) {
            xd6Var.addView(imageView);
        }
        xd6Var.setBackgroundColor(-16777216);
        xd6Var.setVisibility(8);
        am4 am4Var = new am4(context, xd6Var, textureView, sk4Var);
        am4Var.addView(xd6Var);
        am4Var.addView(textureView);
        am4Var.addView(sk4Var);
        am4Var.setTag(bh6.a("native_video_view"));
        return am4Var;
    }
}
