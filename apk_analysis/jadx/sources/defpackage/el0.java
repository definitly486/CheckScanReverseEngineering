package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface el0 {
    @z06("v1/blocks/banners/BONUS_HIDABLE/hide")
    Object a(@lk0 yv3 yv3Var, e02<? super j59> e02Var);

    @gn3("v1/blocks/main")
    Object b(@lv6("areaId") int i, e02<? super List<ak0>> e02Var);

    @gn3("v1/blocks/banners/BONUS_HIDABLE/first")
    Object c(@lv6("areaId") int i, @lv6("isFilterBannersByView") boolean z, e02<? super co0> e02Var);

    @gn3("v1/blocks/onlineShops?size=3&page=0")
    Object d(@lv6("selectionId") Integer num, @lv6("areaId") int i, e02<? super k26<tx5>> e02Var);

    @gn3("v1/blocks/banners/balanceHidable")
    Object e(@lv6("isFilterBannersByView") boolean z, e02<? super List<h10>> e02Var);

    @gn3("v1/blocks/buttons")
    Object f(@lv6("areaId") int i, e02<? super List<aw0>> e02Var);

    @gn3("v1/blocks/onlineShops/favorite/preview")
    Object g(@lv6("areaId") int i, e02<? super List<xf6>> e02Var);

    @gn3("v1/blocks/previewOnlineShops")
    Object h(@lv6("selectionId") int i, @lv6("areaId") int i2, e02<? super List<xf6>> e02Var);

    @z06("v1/blocks/banners/BALANCE_HIDABLE/hide")
    Object i(@lk0 yv3 yv3Var, e02<? super j59> e02Var);

    @gn3("v1/blocks/banners/BONUS_HIDABLE/url")
    Object j(@lv6(TtmlNode.ATTR_ID) int i, e02<? super String> e02Var);

    @a16("v1/blocks/onlineShops/favorite")
    Object k(@lk0 e63 e63Var, e02<? super a57<j59>> e02Var);

    @gn3("v1/blocks/categories/experiment")
    Object l(@lv6("areaId") int i, @lv6("page") int i2, @lv6(TJAdUnitConstants.String.SIZE) int i3, e02<? super k26<q81>> e02Var);

    @gn3("v1/blocks/banners/{bannerKind}")
    Object m(@k46("bannerKind") gc0 gc0Var, @lv6("areaId") int i, @lv6("categoryId") Integer num, @lv6("isFilterBannersByView") boolean z, e02<? super List<kc0>> e02Var);
}
