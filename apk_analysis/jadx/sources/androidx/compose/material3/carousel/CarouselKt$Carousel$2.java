package androidx.compose.material3.carousel;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.pager.PagerScope;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.fm3;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class CarouselKt$Carousel$2 implements fm3<PagerScope, Integer, Composer, Integer, j59> {
    final /* synthetic */ fm3<CarouselItemScope, Integer, Composer, Integer, j59> $content;
    final /* synthetic */ CarouselPageSize $pageSize;
    final /* synthetic */ CarouselState $state;

    /* JADX WARN: Multi-variable type inference failed */
    public CarouselKt$Carousel$2(CarouselState carouselState, CarouselPageSize carouselPageSize, fm3<? super CarouselItemScope, ? super Integer, ? super Composer, ? super Integer, j59> fm3Var) {
        this.$state = carouselState;
        this.$pageSize = carouselPageSize;
        this.$content = fm3Var;
    }

    public final void invoke(PagerScope pagerScope, int i, Composer composer, int i2) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1817116752, i2, -1, "androidx.compose.material3.carousel.Carousel.<anonymous> (Carousel.kt:401)");
        }
        Object objRememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (objRememberedValue == companion.getEmpty()) {
            objRememberedValue = new CarouselItemDrawInfoImpl();
            composer.updateRememberedValue(objRememberedValue);
        }
        final CarouselItemDrawInfoImpl carouselItemDrawInfoImpl = (CarouselItemDrawInfoImpl) objRememberedValue;
        Object objRememberedValue2 = composer.rememberedValue();
        if (objRememberedValue2 == companion.getEmpty()) {
            objRememberedValue2 = new CarouselItemScopeImpl(carouselItemDrawInfoImpl);
            composer.updateRememberedValue(objRememberedValue2);
        }
        CarouselItemScopeImpl carouselItemScopeImpl = (CarouselItemScopeImpl) objRememberedValue2;
        Object objRememberedValue3 = composer.rememberedValue();
        if (objRememberedValue3 == companion.getEmpty()) {
            objRememberedValue3 = new Shape() { // from class: androidx.compose.material3.carousel.CarouselKt$Carousel$2$clipShape$1$1
                @Override // androidx.compose.ui.graphics.Shape
                /* JADX INFO: renamed from: createOutline-Pq9zytI */
                public Outline mo1345createOutlinePq9zytI(long j, LayoutDirection layoutDirection, Density density) {
                    return new Outline.Rectangle(carouselItemDrawInfoImpl.getMaskRect());
                }
            };
            composer.updateRememberedValue(objRememberedValue3);
        }
        CarouselKt$Carousel$2$clipShape$1$1 carouselKt$Carousel$2$clipShape$1$1 = (CarouselKt$Carousel$2$clipShape$1$1) objRememberedValue3;
        Modifier.Companion companion2 = Modifier.Companion;
        CarouselState carouselState = this.$state;
        boolean zChanged = composer.changed(this.$pageSize);
        final CarouselPageSize carouselPageSize = this.$pageSize;
        Object objRememberedValue4 = composer.rememberedValue();
        if (zChanged || objRememberedValue4 == companion.getEmpty()) {
            objRememberedValue4 = new ll3() { // from class: androidx.compose.material3.carousel.a
                @Override // defpackage.ll3
                public final Object invoke() {
                    return carouselPageSize.getStrategy();
                }
            };
            composer.updateRememberedValue(objRememberedValue4);
        }
        Modifier modifierCarouselItem = CarouselKt.carouselItem(companion2, i, carouselState, (ll3) objRememberedValue4, carouselItemDrawInfoImpl, carouselKt$Carousel$2$clipShape$1$1);
        fm3<CarouselItemScope, Integer, Composer, Integer, j59> fm3Var = this.$content;
        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
        CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifierCarouselItem);
        ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
        ll3<ComposeUiNode> constructor = companion3.getConstructor();
        if (composer.getApplier() == null) {
            ComposablesKt.invalidApplier();
        }
        composer.startReusableNode();
        if (composer.getInserting()) {
            composer.createNode(constructor);
        } else {
            composer.useNode();
        }
        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer);
        bm3 bm3VarB = cc.b(companion3, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
        }
        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion3.getSetModifier());
        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
        fm3Var.invoke(carouselItemScopeImpl, Integer.valueOf(i), composer, Integer.valueOf(i2 & 112));
        composer.endNode();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    @Override // defpackage.fm3
    public /* bridge */ /* synthetic */ j59 invoke(PagerScope pagerScope, Integer num, Composer composer, Integer num2) {
        invoke(pagerScope, num.intValue(), composer, num2.intValue());
        return j59.a;
    }
}
