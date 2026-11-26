package yads;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.monetization.ads.nativeads.CustomizableMediaView;
import com.yandex.mobile.ads.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class wd4 implements vd4 {
    @Override // yads.vd4
    public final TextView a(View view) {
        return (TextView) view.findViewById(R$id.monetization_ads_body);
    }

    @Override // yads.vd4
    public final CheckBox b(View view) {
        return null;
    }

    @Override // yads.vd4
    public final CustomizableMediaView c(View view) {
        return (CustomizableMediaView) view.findViewById(R$id.monetization_ads_media);
    }

    @Override // yads.vd4
    public final TextView d(View view) {
        return (TextView) view.findViewById(R$id.monetization_ads_price);
    }

    @Override // yads.vd4
    public final TextView e(View view) {
        return (TextView) view.findViewById(R$id.monetization_ads_call_to_action);
    }

    @Override // yads.vd4
    public final TextView f(View view) {
        return (TextView) view.findViewById(R$id.monetization_ads_warning);
    }

    @Override // yads.vd4
    public final ImageView g(View view) {
        return (ImageView) view.findViewById(R$id.monetization_ads_favicon);
    }

    @Override // yads.vd4
    public final TextView h(View view) {
        return (TextView) view.findViewById(R$id.monetization_ads_age);
    }

    @Override // yads.vd4
    public final View i(View view) {
        return view.findViewById(R$id.monetization_ads_rating);
    }

    @Override // yads.vd4
    public final TextView j(View view) {
        return (TextView) view.findViewById(R$id.monetization_ads_title);
    }

    @Override // yads.vd4
    public final ProgressBar k(View view) {
        return null;
    }

    @Override // yads.vd4
    public final ImageView l(View view) {
        return (ImageView) view.findViewById(R$id.monetization_ads_feedback);
    }

    @Override // yads.vd4
    public final TextView m(View view) {
        return (TextView) view.findViewById(R$id.monetization_ads_sponsored);
    }

    @Override // yads.vd4
    public final TextView n(View view) {
        return (TextView) view.findViewById(R$id.monetization_ads_domain);
    }

    @Override // yads.vd4
    public final ImageView o(View view) {
        return (ImageView) view.findViewById(R$id.monetization_ads_icon);
    }

    @Override // yads.vd4
    public final TextView p(View view) {
        return (TextView) view.findViewById(R$id.monetization_ads_review_count);
    }

    @Override // yads.vd4
    public final View a(View view, String str) {
        return null;
    }
}
