package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.warefly.checkscan.presentation.onboardingOneSlide.imageSlides.ImageSlideFragment;
import com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.view.OnboardingOneSlideFragment;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class k24 extends FragmentStateAdapter {
    public final List<String> i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k24(OnboardingOneSlideFragment onboardingOneSlideFragment, List list) {
        super(onboardingOneSlideFragment);
        list.getClass();
        this.i = list;
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter
    public final Fragment createFragment(int i) {
        ImageSlideFragment.a aVar = ImageSlideFragment.h;
        String str = this.i.get(i);
        aVar.getClass();
        str.getClass();
        ImageSlideFragment imageSlideFragment = new ImageSlideFragment();
        imageSlideFragment.setArguments(BundleKt.bundleOf(new b36("IMAGE_SLIDE_URL_KEY", str)));
        return imageSlideFragment;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.i.size();
    }
}
