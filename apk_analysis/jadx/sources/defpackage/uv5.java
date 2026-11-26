package defpackage;

import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.warefly.checkscan.presentation.onboardingCard.view.OnBoardingCardSlidesFragment;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class uv5 extends FragmentStateAdapter {
    public final ArrayList i;

    public uv5(OnBoardingCardSlidesFragment onBoardingCardSlidesFragment) {
        super(onBoardingCardSlidesFragment);
        this.i = new ArrayList();
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter
    public final Fragment createFragment(int i) {
        return (Fragment) this.i.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.i.size();
    }
}
