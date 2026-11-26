package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.viewpager.widget.PagerAdapter;
import com.bumptech.glide.a;
import com.warefly.checkscan.R;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class il3 extends PagerAdapter {
    public final List<String> c;

    public il3(List<String> list) {
        this.c = list;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        viewGroup.getClass();
        obj.getClass();
        viewGroup.removeView((View) obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final int getCount() {
        return this.c.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final Object instantiateItem(ViewGroup viewGroup, int i) {
        viewGroup.getClass();
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.rv_fullscreen_photo, viewGroup, false);
        viewInflate.getClass();
        ImageView imageView = (ImageView) viewInflate;
        a.d(viewGroup.getContext()).h(this.c.get(i)).P(qs2.h()).L(imageView);
        viewGroup.addView(imageView);
        return imageView;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final boolean isViewFromObject(View view, Object obj) {
        view.getClass();
        obj.getClass();
        return view.equals(obj);
    }
}
