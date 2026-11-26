package defpackage;

import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.view.OnboardingHowGetCashFragment;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class er0 extends FragmentStateAdapter {
    public final ArrayList i;

    public er0(ArrayList arrayList, OnboardingHowGetCashFragment onboardingHowGetCashFragment) {
        super(onboardingHowGetCashFragment);
        this.i = arrayList;
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
