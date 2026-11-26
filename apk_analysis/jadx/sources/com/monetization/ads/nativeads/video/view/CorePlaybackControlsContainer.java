package com.monetization.ads.nativeads.video.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.yandex.mobile.ads.R$id;
import yads.wz3;

/* JADX INFO: loaded from: classes6.dex */
public class CorePlaybackControlsContainer extends FrameLayout implements wz3 {
    public CorePlaybackControlsContainer(Context context) {
        super(context);
    }

    @Override // yads.wz3
    public TextView getCountDownProgress() {
        return (TextView) findViewById(R$id.video_count_down_control);
    }

    @Override // yads.wz3
    public CheckBox getMuteControl() {
        return (CheckBox) findViewById(R$id.video_mute_control);
    }

    @Override // yads.wz3
    public ProgressBar getVideoProgress() {
        return (ProgressBar) findViewById(R$id.video_progress_control);
    }

    public CorePlaybackControlsContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CorePlaybackControlsContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
