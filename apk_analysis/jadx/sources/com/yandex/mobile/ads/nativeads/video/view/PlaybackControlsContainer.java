package com.yandex.mobile.ads.nativeads.video.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.monetization.ads.nativeads.video.view.CorePlaybackControlsContainer;
import com.yandex.mobile.ads.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class PlaybackControlsContainer extends CorePlaybackControlsContainer {
    public PlaybackControlsContainer(Context context) {
        super(context);
    }

    @Override // com.monetization.ads.nativeads.video.view.CorePlaybackControlsContainer, yads.wz3
    public TextView getCountDownProgress() {
        View viewFindViewById = findViewById(R$id.video_count_down_control);
        if (viewFindViewById instanceof TextView) {
            return (TextView) viewFindViewById;
        }
        return null;
    }

    @Override // com.monetization.ads.nativeads.video.view.CorePlaybackControlsContainer, yads.wz3
    public CheckBox getMuteControl() {
        View viewFindViewById = findViewById(R$id.video_mute_control);
        if (viewFindViewById instanceof CheckBox) {
            return (CheckBox) viewFindViewById;
        }
        return null;
    }

    @Override // com.monetization.ads.nativeads.video.view.CorePlaybackControlsContainer, yads.wz3
    public ProgressBar getVideoProgress() {
        View viewFindViewById = findViewById(R$id.video_progress_control);
        if (viewFindViewById instanceof ProgressBar) {
            return (ProgressBar) viewFindViewById;
        }
        return null;
    }

    public PlaybackControlsContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PlaybackControlsContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
