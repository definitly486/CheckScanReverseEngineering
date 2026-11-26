package com.warefly.checkscan.presentation.onboardingCard.view;

import androidx.fragment.app.Fragment;
import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface OnboardingCardSlidesView extends BaseView {
    void setLeftButtonVisible(boolean z);

    void setSelectedSlide(int i);

    void showFragments(List<? extends Fragment> list);
}
