package androidx.window.embedding;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import android.util.Pair;
import android.view.WindowMetrics;
import androidx.window.WindowSdkExtensions;
import androidx.window.core.Bounds;
import androidx.window.core.PredicateAdapter;
import androidx.window.embedding.EmbeddingAdapter;
import androidx.window.extensions.embedding.AnimationBackground;
import androidx.window.extensions.embedding.AnimationParams;
import androidx.window.extensions.embedding.SplitAttributesCalculatorParams;
import androidx.window.extensions.embedding.WindowAttributes;
import androidx.window.extensions.layout.WindowLayoutInfo;
import androidx.window.layout.WindowMetricsCalculator;
import androidx.window.layout.adapter.extensions.ExtensionsWindowLayoutInfoAdapter;
import androidx.window.layout.util.DensityCompatHelper;
import androidx.window.reflection.JFunction2;
import androidx.window.reflection.Predicate2;
import defpackage.aa4;
import defpackage.ah;
import defpackage.b36;
import defpackage.bm3;
import defpackage.e2;
import defpackage.fg;
import defpackage.jh;
import defpackage.jh2;
import defpackage.kn1;
import defpackage.nl3;
import defpackage.ox2;
import defpackage.qa8;
import defpackage.qn1;
import defpackage.r01;
import defpackage.ta8;
import defpackage.x07;
import defpackage.yq;
import defpackage.yr;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class EmbeddingAdapter {
    private final VendorApiLevel1Impl api1Impl;
    private final VendorApiLevel2Impl api2Impl;
    private final VendorApiLevel3Impl api3Impl;
    private EmbeddingConfiguration embeddingConfiguration;
    private final PredicateAdapter predicateAdapter;
    public static final Companion Companion = new Companion(null);
    private static final String TAG = x07.a(EmbeddingAdapter.class).f();
    private static final String RULE_TAG_PREFIX = "ae-gen:";
    private static final Binder INVALID_SPLIT_INFO_TOKEN = new Binder();

    public final class VendorApiLevel2Impl {
        public VendorApiLevel2Impl() {
        }

        public final SplitInfo translateCompat(androidx.window.extensions.embedding.SplitInfo splitInfo) {
            splitInfo.getClass();
            VendorApiLevel1Impl vendorApiLevel1Impl = EmbeddingAdapter.this.api1Impl;
            androidx.window.extensions.embedding.ActivityStack primaryActivityStack = splitInfo.getPrimaryActivityStack();
            primaryActivityStack.getClass();
            ActivityStack activityStackTranslateCompat = vendorApiLevel1Impl.translateCompat(primaryActivityStack);
            VendorApiLevel1Impl vendorApiLevel1Impl2 = EmbeddingAdapter.this.api1Impl;
            androidx.window.extensions.embedding.ActivityStack secondaryActivityStack = splitInfo.getSecondaryActivityStack();
            secondaryActivityStack.getClass();
            ActivityStack activityStackTranslateCompat2 = vendorApiLevel1Impl2.translateCompat(secondaryActivityStack);
            EmbeddingAdapter embeddingAdapter = EmbeddingAdapter.this;
            androidx.window.extensions.embedding.SplitAttributes splitAttributes = splitInfo.getSplitAttributes();
            splitAttributes.getClass();
            return new SplitInfo(activityStackTranslateCompat, activityStackTranslateCompat2, embeddingAdapter.translate$window_release(splitAttributes));
        }
    }

    public final class VendorApiLevel3Impl {
        public VendorApiLevel3Impl() {
        }

        public final SplitInfo translateCompat(androidx.window.extensions.embedding.SplitInfo splitInfo) {
            splitInfo.getClass();
            VendorApiLevel1Impl vendorApiLevel1Impl = EmbeddingAdapter.this.api1Impl;
            androidx.window.extensions.embedding.ActivityStack primaryActivityStack = splitInfo.getPrimaryActivityStack();
            primaryActivityStack.getClass();
            ActivityStack activityStackTranslateCompat = vendorApiLevel1Impl.translateCompat(primaryActivityStack);
            VendorApiLevel1Impl vendorApiLevel1Impl2 = EmbeddingAdapter.this.api1Impl;
            androidx.window.extensions.embedding.ActivityStack secondaryActivityStack = splitInfo.getSecondaryActivityStack();
            secondaryActivityStack.getClass();
            ActivityStack activityStackTranslateCompat2 = vendorApiLevel1Impl2.translateCompat(secondaryActivityStack);
            EmbeddingAdapter embeddingAdapter = EmbeddingAdapter.this;
            androidx.window.extensions.embedding.SplitAttributes splitAttributes = splitInfo.getSplitAttributes();
            splitAttributes.getClass();
            SplitAttributes splitAttributesTranslate$window_release = embeddingAdapter.translate$window_release(splitAttributes);
            IBinder token = splitInfo.getToken();
            token.getClass();
            return new SplitInfo(activityStackTranslateCompat, activityStackTranslateCompat2, splitAttributesTranslate$window_release, token);
        }
    }

    public EmbeddingAdapter(PredicateAdapter predicateAdapter) {
        predicateAdapter.getClass();
        this.predicateAdapter = predicateAdapter;
        this.api1Impl = new VendorApiLevel1Impl(this, predicateAdapter);
        this.api2Impl = new VendorApiLevel2Impl();
        this.api3Impl = new VendorApiLevel3Impl();
    }

    public static /* synthetic */ void getEmbeddingConfiguration$annotations() {
    }

    private final int getExtensionVersion() {
        return WindowSdkExtensions.Companion.getInstance().getExtensionVersion();
    }

    private final androidx.window.extensions.embedding.ActivityRule translateActivityRule(final ActivityRule activityRule, Class<?> cls) {
        if (getExtensionVersion() < 2) {
            return this.api1Impl.translateActivityRuleCompat(activityRule, cls);
        }
        androidx.window.extensions.embedding.ActivityRule.Builder shouldAlwaysExpand = new androidx.window.extensions.embedding.ActivityRule.Builder(new Predicate2() { // from class: tw2
            @Override // androidx.window.reflection.Predicate2
            public final boolean test(Object obj) {
                return EmbeddingAdapter.translateActivityRule$lambda$16(activityRule, (Activity) obj);
            }
        }, new Predicate2() { // from class: uw2
            @Override // androidx.window.reflection.Predicate2
            public final boolean test(Object obj) {
                return EmbeddingAdapter.translateActivityRule$lambda$18(activityRule, (Intent) obj);
            }
        }).setShouldAlwaysExpand(activityRule.getAlwaysExpand());
        shouldAlwaysExpand.getClass();
        String tag = activityRule.getTag();
        if (tag == null) {
            tag = Companion.generateTag(activityRule);
        }
        shouldAlwaysExpand.setTag(tag);
        androidx.window.extensions.embedding.ActivityRule activityRuleBuild = shouldAlwaysExpand.build();
        activityRuleBuild.getClass();
        return activityRuleBuild;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean translateActivityRule$lambda$16(ActivityRule activityRule, Activity activity) {
        activity.getClass();
        Set<ActivityFilter> filters = activityRule.getFilters();
        if ((filters instanceof Collection) && filters.isEmpty()) {
            return false;
        }
        Iterator<T> it = filters.iterator();
        while (it.hasNext()) {
            if (((ActivityFilter) it.next()).matchesActivity(activity)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean translateActivityRule$lambda$18(ActivityRule activityRule, Intent intent) {
        intent.getClass();
        Set<ActivityFilter> filters = activityRule.getFilters();
        if ((filters instanceof Collection) && filters.isEmpty()) {
            return false;
        }
        Iterator<T> it = filters.iterator();
        while (it.hasNext()) {
            if (((ActivityFilter) it.next()).matchesIntent(intent)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.window.extensions.embedding.SplitAttributes translateSplitAttributesCalculator$lambda$1(EmbeddingAdapter embeddingAdapter, nl3 nl3Var, androidx.window.extensions.embedding.SplitAttributesCalculatorParams splitAttributesCalculatorParams) {
        splitAttributesCalculatorParams.getClass();
        return embeddingAdapter.translateSplitAttributes((SplitAttributes) nl3Var.invoke(embeddingAdapter.translate(splitAttributesCalculatorParams)));
    }

    private final androidx.window.extensions.embedding.SplitPairRule translateSplitPairRule(final Context context, final SplitPairRule splitPairRule, Class<?> cls) {
        if (getExtensionVersion() < 2) {
            return this.api1Impl.translateSplitPairRuleCompat(context, splitPairRule, cls);
        }
        Predicate2 predicate2 = new Predicate2() { // from class: qw2
            @Override // androidx.window.reflection.Predicate2
            public final boolean test(Object obj) {
                return EmbeddingAdapter.translateSplitPairRule$lambda$4(splitPairRule, (Pair) obj);
            }
        };
        Predicate2 predicate3 = new Predicate2() { // from class: rw2
            @Override // androidx.window.reflection.Predicate2
            public final boolean test(Object obj) {
                return EmbeddingAdapter.translateSplitPairRule$lambda$6(splitPairRule, (Pair) obj);
            }
        };
        Predicate2 predicate4 = new Predicate2() { // from class: sw2
            @Override // androidx.window.reflection.Predicate2
            public final boolean test(Object obj) {
                return EmbeddingAdapter.translateSplitPairRule$lambda$7(splitPairRule, context, (WindowMetrics) obj);
            }
        };
        String tag = splitPairRule.getTag();
        androidx.window.extensions.embedding.SplitPairRule.Builder shouldClearTop = new androidx.window.extensions.embedding.SplitPairRule.Builder(predicate2, predicate3, predicate4).setDefaultSplitAttributes(translateSplitAttributes(splitPairRule.getDefaultSplitAttributes())).setFinishPrimaryWithSecondary(translateFinishBehavior(splitPairRule.getFinishPrimaryWithSecondary())).setFinishSecondaryWithPrimary(translateFinishBehavior(splitPairRule.getFinishSecondaryWithPrimary())).setShouldClearTop(splitPairRule.getClearTop());
        shouldClearTop.getClass();
        if (tag == null) {
            tag = Companion.generateTag(splitPairRule);
        }
        shouldClearTop.setTag(tag);
        androidx.window.extensions.embedding.SplitPairRule splitPairRuleBuild = shouldClearTop.build();
        splitPairRuleBuild.getClass();
        return splitPairRuleBuild;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean translateSplitPairRule$lambda$4(SplitPairRule splitPairRule, Pair pair) {
        pair.getClass();
        Set<SplitPairFilter> filters = splitPairRule.getFilters();
        if ((filters instanceof Collection) && filters.isEmpty()) {
            return false;
        }
        for (SplitPairFilter splitPairFilter : filters) {
            Object obj = pair.first;
            obj.getClass();
            Object obj2 = pair.second;
            obj2.getClass();
            if (splitPairFilter.matchesActivityPair((Activity) obj, (Activity) obj2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean translateSplitPairRule$lambda$6(SplitPairRule splitPairRule, Pair pair) {
        pair.getClass();
        Set<SplitPairFilter> filters = splitPairRule.getFilters();
        if ((filters instanceof Collection) && filters.isEmpty()) {
            return false;
        }
        for (SplitPairFilter splitPairFilter : filters) {
            Object obj = pair.first;
            obj.getClass();
            Object obj2 = pair.second;
            obj2.getClass();
            if (splitPairFilter.matchesActivityIntentPair((Activity) obj, (Intent) obj2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean translateSplitPairRule$lambda$7(SplitPairRule splitPairRule, Context context, WindowMetrics windowMetrics) {
        windowMetrics.getClass();
        return splitPairRule.checkParentMetrics$window_release(context, windowMetrics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean translateSplitPinRule$lambda$8(SplitPinRule splitPinRule, Context context, WindowMetrics windowMetrics) {
        windowMetrics.getClass();
        return splitPinRule.checkParentMetrics$window_release(context, windowMetrics);
    }

    private final androidx.window.extensions.embedding.SplitPlaceholderRule translateSplitPlaceholderRule(final Context context, final SplitPlaceholderRule splitPlaceholderRule, Class<?> cls) {
        if (getExtensionVersion() < 2) {
            return this.api1Impl.translateSplitPlaceholderRuleCompat(context, splitPlaceholderRule, cls);
        }
        Predicate2 predicate2 = new Predicate2() { // from class: nw2
            @Override // androidx.window.reflection.Predicate2
            public final boolean test(Object obj) {
                return EmbeddingAdapter.translateSplitPlaceholderRule$lambda$11(splitPlaceholderRule, (Activity) obj);
            }
        };
        Predicate2 predicate3 = new Predicate2() { // from class: ow2
            @Override // androidx.window.reflection.Predicate2
            public final boolean test(Object obj) {
                return EmbeddingAdapter.translateSplitPlaceholderRule$lambda$13(splitPlaceholderRule, (Intent) obj);
            }
        };
        Predicate2 predicate4 = new Predicate2() { // from class: pw2
            @Override // androidx.window.reflection.Predicate2
            public final boolean test(Object obj) {
                return EmbeddingAdapter.translateSplitPlaceholderRule$lambda$14(splitPlaceholderRule, context, (WindowMetrics) obj);
            }
        };
        String tag = splitPlaceholderRule.getTag();
        androidx.window.extensions.embedding.SplitPlaceholderRule.Builder finishPrimaryWithPlaceholder = new androidx.window.extensions.embedding.SplitPlaceholderRule.Builder(splitPlaceholderRule.getPlaceholderIntent(), predicate2, predicate3, predicate4).setSticky(splitPlaceholderRule.isSticky()).setDefaultSplitAttributes(translateSplitAttributes(splitPlaceholderRule.getDefaultSplitAttributes())).setFinishPrimaryWithPlaceholder(translateFinishBehavior(splitPlaceholderRule.getFinishPrimaryWithPlaceholder()));
        finishPrimaryWithPlaceholder.getClass();
        if (tag == null) {
            tag = Companion.generateTag(splitPlaceholderRule);
        }
        finishPrimaryWithPlaceholder.setTag(tag);
        androidx.window.extensions.embedding.SplitPlaceholderRule splitPlaceholderRuleBuild = finishPrimaryWithPlaceholder.build();
        splitPlaceholderRuleBuild.getClass();
        return splitPlaceholderRuleBuild;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean translateSplitPlaceholderRule$lambda$11(SplitPlaceholderRule splitPlaceholderRule, Activity activity) {
        activity.getClass();
        Set<ActivityFilter> filters = splitPlaceholderRule.getFilters();
        if ((filters instanceof Collection) && filters.isEmpty()) {
            return false;
        }
        Iterator<T> it = filters.iterator();
        while (it.hasNext()) {
            if (((ActivityFilter) it.next()).matchesActivity(activity)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean translateSplitPlaceholderRule$lambda$13(SplitPlaceholderRule splitPlaceholderRule, Intent intent) {
        intent.getClass();
        Set<ActivityFilter> filters = splitPlaceholderRule.getFilters();
        if ((filters instanceof Collection) && filters.isEmpty()) {
            return false;
        }
        Iterator<T> it = filters.iterator();
        while (it.hasNext()) {
            if (((ActivityFilter) it.next()).matchesIntent(intent)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean translateSplitPlaceholderRule$lambda$14(SplitPlaceholderRule splitPlaceholderRule, Context context, WindowMetrics windowMetrics) {
        windowMetrics.getClass();
        return splitPlaceholderRule.checkParentMetrics$window_release(context, windowMetrics);
    }

    private final androidx.window.extensions.embedding.SplitAttributes.SplitType translateSplitType(SplitAttributes.SplitType splitType) {
        if (getExtensionVersion() < 2) {
            fg.c("Failed requirement.");
            return null;
        }
        if (aa4.e(splitType, SplitAttributes.SplitType.SPLIT_TYPE_HINGE)) {
            return new androidx.window.extensions.embedding.SplitAttributes.SplitType.HingeSplitType(translateSplitType(SplitAttributes.SplitType.SPLIT_TYPE_EQUAL));
        }
        if (aa4.e(splitType, SplitAttributes.SplitType.SPLIT_TYPE_EXPAND)) {
            return new androidx.window.extensions.embedding.SplitAttributes.SplitType.ExpandContainersSplitType();
        }
        float value$window_release = splitType.getValue$window_release();
        double d = value$window_release;
        if (d > 0.0d && d < 1.0d) {
            return new androidx.window.extensions.embedding.SplitAttributes.SplitType.RatioSplitType(value$window_release);
        }
        StringBuilder sb = new StringBuilder("Unsupported SplitType: ");
        sb.append(splitType);
        float value$window_release2 = splitType.getValue$window_release();
        sb.append(" with value: ");
        sb.append(value$window_release2);
        throw new IllegalArgumentException(sb.toString());
    }

    private final EmbeddingAnimationBackground translateToJetpackAnimationBackground(AnimationBackground animationBackground) {
        WindowSdkExtensions.Companion.getInstance().requireExtensionVersion$window_release(5);
        return animationBackground instanceof AnimationBackground.ColorBackground ? EmbeddingAnimationBackground.Companion.createColorBackground(((AnimationBackground.ColorBackground) animationBackground).getColor()) : EmbeddingAnimationBackground.DEFAULT;
    }

    private final EmbeddingAnimationParams.AnimationSpec translateToJetpackAnimationSpec(int i) {
        WindowSdkExtensions.Companion.getInstance().requireExtensionVersion$window_release(7);
        return i == 0 ? EmbeddingAnimationParams.AnimationSpec.JUMP_CUT : EmbeddingAnimationParams.AnimationSpec.DEFAULT;
    }

    private final AnimationBackground translateToOemAnimationBackground(EmbeddingAnimationBackground embeddingAnimationBackground) {
        WindowSdkExtensions.Companion.getInstance().requireExtensionVersion$window_release(5);
        if (embeddingAnimationBackground instanceof EmbeddingAnimationBackground.ColorBackground) {
            AnimationBackground animationBackgroundCreateColorBackground = AnimationBackground.createColorBackground(((EmbeddingAnimationBackground.ColorBackground) embeddingAnimationBackground).getColor());
            animationBackgroundCreateColorBackground.getClass();
            return animationBackgroundCreateColorBackground;
        }
        AnimationBackground animationBackground = AnimationBackground.ANIMATION_BACKGROUND_DEFAULT;
        animationBackground.getClass();
        return animationBackground;
    }

    private final int translateToOemAnimationResId(EmbeddingAnimationParams.AnimationSpec animationSpec) {
        WindowSdkExtensions.Companion.getInstance().requireExtensionVersion$window_release(7);
        return aa4.e(animationSpec, EmbeddingAnimationParams.AnimationSpec.JUMP_CUT) ? 0 : -1;
    }

    public final EmbeddingConfiguration getEmbeddingConfiguration() {
        return this.embeddingConfiguration;
    }

    public final void setEmbeddingConfiguration(EmbeddingConfiguration embeddingConfiguration) {
        this.embeddingConfiguration = embeddingConfiguration;
    }

    public final Set<androidx.window.extensions.embedding.EmbeddingRule> translate(Context context, Set<? extends EmbeddingRule> set) {
        androidx.window.extensions.embedding.SplitPairRule splitPairRuleTranslateActivityRule;
        context.getClass();
        set.getClass();
        Class<?> clsPredicateClassOrNull$window_release = this.predicateAdapter.predicateClassOrNull$window_release();
        if (clsPredicateClassOrNull$window_release == null) {
            return ox2.b;
        }
        Set<? extends EmbeddingRule> set2 = set;
        ArrayList arrayList = new ArrayList(kn1.q(set2, 10));
        for (EmbeddingRule embeddingRule : set2) {
            if (embeddingRule instanceof SplitPairRule) {
                splitPairRuleTranslateActivityRule = translateSplitPairRule(context, (SplitPairRule) embeddingRule, clsPredicateClassOrNull$window_release);
            } else if (embeddingRule instanceof SplitPlaceholderRule) {
                splitPairRuleTranslateActivityRule = translateSplitPlaceholderRule(context, (SplitPlaceholderRule) embeddingRule, clsPredicateClassOrNull$window_release);
            } else {
                if (!(embeddingRule instanceof ActivityRule)) {
                    fg.c("Unsupported rule type");
                    return null;
                }
                splitPairRuleTranslateActivityRule = translateActivityRule((ActivityRule) embeddingRule, clsPredicateClassOrNull$window_release);
            }
            arrayList.add((androidx.window.extensions.embedding.EmbeddingRule) splitPairRuleTranslateActivityRule);
        }
        return qn1.y0(arrayList);
    }

    public final SplitAttributes translate$window_release(androidx.window.extensions.embedding.SplitAttributes splitAttributes) {
        SplitAttributes.SplitType splitTypeRatio;
        SplitAttributes.LayoutDirection layoutDirection;
        splitAttributes.getClass();
        SplitAttributes.Builder builder = new SplitAttributes.Builder();
        androidx.window.extensions.embedding.SplitAttributes.SplitType.RatioSplitType splitType = splitAttributes.getSplitType();
        splitType.getClass();
        if (splitType instanceof androidx.window.extensions.embedding.SplitAttributes.SplitType.HingeSplitType) {
            splitTypeRatio = SplitAttributes.SplitType.SPLIT_TYPE_HINGE;
        } else if (splitType instanceof androidx.window.extensions.embedding.SplitAttributes.SplitType.ExpandContainersSplitType) {
            splitTypeRatio = SplitAttributes.SplitType.SPLIT_TYPE_EXPAND;
        } else {
            if (!(splitType instanceof androidx.window.extensions.embedding.SplitAttributes.SplitType.RatioSplitType)) {
                r01.e(splitType, "Unknown split type: ");
                return null;
            }
            splitTypeRatio = SplitAttributes.SplitType.Companion.ratio(splitType.getRatio());
        }
        SplitAttributes.Builder splitType2 = builder.setSplitType(splitTypeRatio);
        int layoutDirection2 = splitAttributes.getLayoutDirection();
        if (layoutDirection2 == 0) {
            layoutDirection = SplitAttributes.LayoutDirection.LEFT_TO_RIGHT;
        } else if (layoutDirection2 == 1) {
            layoutDirection = SplitAttributes.LayoutDirection.RIGHT_TO_LEFT;
        } else if (layoutDirection2 == 3) {
            layoutDirection = SplitAttributes.LayoutDirection.LOCALE;
        } else if (layoutDirection2 == 4) {
            layoutDirection = SplitAttributes.LayoutDirection.TOP_TO_BOTTOM;
        } else {
            if (layoutDirection2 != 5) {
                fg.c(jh.b(layoutDirection2, "Unknown layout direction: "));
                return null;
            }
            layoutDirection = SplitAttributes.LayoutDirection.BOTTOM_TO_TOP;
        }
        SplitAttributes.Builder layoutDirection3 = splitType2.setLayoutDirection(layoutDirection);
        int extensionVersion = getExtensionVersion();
        if (5 <= extensionVersion && extensionVersion < 7) {
            EmbeddingAnimationParams.Builder builder2 = new EmbeddingAnimationParams.Builder();
            AnimationBackground animationBackground = splitAttributes.getAnimationBackground();
            animationBackground.getClass();
            layoutDirection3.setAnimationParams(builder2.setAnimationBackground(translateToJetpackAnimationBackground(animationBackground)).build());
        }
        if (getExtensionVersion() >= 7) {
            EmbeddingAnimationParams.Builder builder3 = new EmbeddingAnimationParams.Builder();
            AnimationBackground animationBackground2 = splitAttributes.getAnimationParams().getAnimationBackground();
            animationBackground2.getClass();
            layoutDirection3.setAnimationParams(builder3.setAnimationBackground(translateToJetpackAnimationBackground(animationBackground2)).setOpenAnimation(translateToJetpackAnimationSpec(splitAttributes.getAnimationParams().getOpenAnimationResId())).setCloseAnimation(translateToJetpackAnimationSpec(splitAttributes.getAnimationParams().getCloseAnimationResId())).setChangeAnimation(translateToJetpackAnimationSpec(splitAttributes.getAnimationParams().getChangeAnimationResId())).build());
        }
        if (getExtensionVersion() >= 6) {
            layoutDirection3.setDividerAttributes(translateToJetpackDividerAttributes(splitAttributes.getDividerAttributes()));
        }
        return layoutDirection3.build();
    }

    public final int translateFinishBehavior(SplitRule.FinishBehavior finishBehavior) {
        finishBehavior.getClass();
        if (finishBehavior == SplitRule.FinishBehavior.NEVER) {
            return 0;
        }
        if (finishBehavior == SplitRule.FinishBehavior.ALWAYS) {
            return 1;
        }
        if (finishBehavior == SplitRule.FinishBehavior.ADJACENT) {
            return 2;
        }
        r01.e(finishBehavior, "Unknown finish behavior:");
        return 0;
    }

    public final androidx.window.extensions.embedding.SplitAttributes translateSplitAttributes(SplitAttributes splitAttributes) {
        int i;
        splitAttributes.getClass();
        if (getExtensionVersion() < 2) {
            fg.c("Failed requirement.");
            return null;
        }
        androidx.window.extensions.embedding.SplitAttributes.Builder splitType = new androidx.window.extensions.embedding.SplitAttributes.Builder().setSplitType(translateSplitType(splitAttributes.getSplitType()));
        SplitAttributes.LayoutDirection layoutDirection = splitAttributes.getLayoutDirection();
        if (aa4.e(layoutDirection, SplitAttributes.LayoutDirection.LOCALE)) {
            i = 3;
        } else if (aa4.e(layoutDirection, SplitAttributes.LayoutDirection.LEFT_TO_RIGHT)) {
            i = 0;
        } else if (aa4.e(layoutDirection, SplitAttributes.LayoutDirection.RIGHT_TO_LEFT)) {
            i = 1;
        } else if (aa4.e(layoutDirection, SplitAttributes.LayoutDirection.TOP_TO_BOTTOM)) {
            i = 4;
        } else {
            if (!aa4.e(layoutDirection, SplitAttributes.LayoutDirection.BOTTOM_TO_TOP)) {
                yq.c(splitAttributes, "Unsupported layoutDirection:", ".layoutDirection");
                return null;
            }
            i = 5;
        }
        androidx.window.extensions.embedding.SplitAttributes.Builder layoutDirection2 = splitType.setLayoutDirection(i);
        layoutDirection2.getClass();
        if (getExtensionVersion() >= 5) {
            layoutDirection2.setWindowAttributes(translateWindowAttributes$window_release());
        }
        int extensionVersion = getExtensionVersion();
        if (5 <= extensionVersion && extensionVersion < 7) {
            layoutDirection2.setAnimationBackground(translateToOemAnimationBackground(splitAttributes.getAnimationParams().getAnimationBackground()));
        }
        if (getExtensionVersion() >= 7) {
            AnimationParams animationParamsBuild = new AnimationParams.Builder().setAnimationBackground(translateToOemAnimationBackground(splitAttributes.getAnimationParams().getAnimationBackground())).setOpenAnimationResId(translateToOemAnimationResId(splitAttributes.getAnimationParams().getOpenAnimation())).setCloseAnimationResId(translateToOemAnimationResId(splitAttributes.getAnimationParams().getCloseAnimation())).setChangeAnimationResId(translateToOemAnimationResId(splitAttributes.getAnimationParams().getChangeAnimation())).build();
            animationParamsBuild.getClass();
            layoutDirection2.setAnimationParams(animationParamsBuild);
        }
        if (getExtensionVersion() >= 6) {
            layoutDirection2.setDividerAttributes(translateToOemDividerAttributes(splitAttributes.getDividerAttributes()));
        }
        androidx.window.extensions.embedding.SplitAttributes splitAttributesBuild = layoutDirection2.build();
        splitAttributesBuild.getClass();
        return splitAttributesBuild;
    }

    public final JFunction2<androidx.window.extensions.embedding.SplitAttributesCalculatorParams, androidx.window.extensions.embedding.SplitAttributes> translateSplitAttributesCalculator(final nl3<? super SplitAttributesCalculatorParams, SplitAttributes> nl3Var) {
        nl3Var.getClass();
        return new JFunction2() { // from class: mw2
            @Override // androidx.window.reflection.JFunction2
            public final Object apply(Object obj) {
                return EmbeddingAdapter.translateSplitAttributesCalculator$lambda$1(this.a, nl3Var, (SplitAttributesCalculatorParams) obj);
            }
        };
    }

    public final androidx.window.extensions.embedding.SplitPinRule translateSplitPinRule(final Context context, final SplitPinRule splitPinRule) {
        context.getClass();
        splitPinRule.getClass();
        WindowSdkExtensions.Companion.getInstance().requireExtensionVersion$window_release(5);
        androidx.window.extensions.embedding.SplitPinRule.Builder builder = new androidx.window.extensions.embedding.SplitPinRule.Builder(translateSplitAttributes(splitPinRule.getDefaultSplitAttributes()), new Predicate2() { // from class: lw2
            @Override // androidx.window.reflection.Predicate2
            public final boolean test(Object obj) {
                return EmbeddingAdapter.translateSplitPinRule$lambda$8(splitPinRule, context, (WindowMetrics) obj);
            }
        });
        builder.setSticky(splitPinRule.isSticky());
        String tag = splitPinRule.getTag();
        if (tag == null) {
            tag = Companion.generateTag(splitPinRule);
        }
        builder.setTag(tag);
        androidx.window.extensions.embedding.SplitPinRule splitPinRuleBuild = builder.build();
        splitPinRuleBuild.getClass();
        return splitPinRuleBuild;
    }

    public final DividerAttributes translateToJetpackDividerAttributes(androidx.window.extensions.embedding.DividerAttributes dividerAttributes) {
        WindowSdkExtensions.Companion.getInstance().requireExtensionVersion$window_release(6);
        if (dividerAttributes == null) {
            return DividerAttributes.NO_DIVIDER;
        }
        int dividerType = dividerAttributes.getDividerType();
        if (dividerType == 1) {
            return new DividerAttributes.FixedDividerAttributes.Builder().setWidthDp(dividerAttributes.getWidthDp()).setColor(dividerAttributes.getDividerColor()).build();
        }
        if (dividerType == 2) {
            return new DividerAttributes.DraggableDividerAttributes.Builder().setWidthDp(dividerAttributes.getWidthDp()).setColor(dividerAttributes.getDividerColor()).setDragRange((dividerAttributes.getPrimaryMinRatio() == -1.0f && dividerAttributes.getPrimaryMaxRatio() == -1.0f) ? DividerAttributes.DragRange.DRAG_RANGE_SYSTEM_DEFAULT : new DividerAttributes.DragRange.SplitRatioDragRange(dividerAttributes.getPrimaryMinRatio(), dividerAttributes.getPrimaryMaxRatio())).setDraggingToFullscreenAllowed(getExtensionVersion() >= 7 && dividerAttributes.isDraggingToFullscreenAllowed()).build();
        }
        Log.w(TAG, "Unknown divider type " + dividerAttributes + ".dividerType, default to fixed divider type");
        return new DividerAttributes.FixedDividerAttributes.Builder().setWidthDp(dividerAttributes.getWidthDp()).setColor(dividerAttributes.getDividerColor()).build();
    }

    public final androidx.window.extensions.embedding.DividerAttributes translateToOemDividerAttributes(DividerAttributes dividerAttributes) {
        int i;
        dividerAttributes.getClass();
        WindowSdkExtensions.Companion.getInstance().requireExtensionVersion$window_release(6);
        if (dividerAttributes == DividerAttributes.NO_DIVIDER) {
            return null;
        }
        if (dividerAttributes instanceof DividerAttributes.FixedDividerAttributes) {
            i = 1;
        } else {
            if (!(dividerAttributes instanceof DividerAttributes.DraggableDividerAttributes)) {
                r01.e(dividerAttributes, "Unknown divider attributes ");
                return null;
            }
            i = 2;
        }
        androidx.window.extensions.embedding.DividerAttributes.Builder widthDp = new androidx.window.extensions.embedding.DividerAttributes.Builder(i).setDividerColor(dividerAttributes.getColor()).setWidthDp(dividerAttributes.getWidthDp());
        widthDp.getClass();
        if (dividerAttributes instanceof DividerAttributes.DraggableDividerAttributes) {
            DividerAttributes.DraggableDividerAttributes draggableDividerAttributes = (DividerAttributes.DraggableDividerAttributes) dividerAttributes;
            if (draggableDividerAttributes.getDragRange() instanceof DividerAttributes.DragRange.SplitRatioDragRange) {
                widthDp.setPrimaryMinRatio(((DividerAttributes.DragRange.SplitRatioDragRange) draggableDividerAttributes.getDragRange()).getMinRatio()).setPrimaryMaxRatio(((DividerAttributes.DragRange.SplitRatioDragRange) draggableDividerAttributes.getDragRange()).getMaxRatio());
            }
            if (getExtensionVersion() >= 7) {
                widthDp.setDraggingToFullscreenAllowed(draggableDividerAttributes.isDraggingToFullscreenAllowed());
            }
        }
        if (getExtensionVersion() == 7 && dividerAttributes.getWidthDp() == 0) {
            widthDp.setWidthDp(1);
        }
        return widthDp.build();
    }

    public final WindowAttributes translateWindowAttributes$window_release() {
        WindowSdkExtensions.Companion.getInstance().requireExtensionVersion$window_release(5);
        EmbeddingConfiguration embeddingConfiguration = this.embeddingConfiguration;
        return new WindowAttributes(aa4.e(embeddingConfiguration != null ? embeddingConfiguration.getDimAreaBehavior() : null, EmbeddingConfiguration.DimAreaBehavior.ON_ACTIVITY_STACK) ? 1 : 2);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final String generateTag(EmbeddingRule embeddingRule) {
            embeddingRule.getClass();
            return getRULE_TAG_PREFIX() + Integer.toHexString(embeddingRule.hashCode());
        }

        public final Binder getINVALID_SPLIT_INFO_TOKEN() {
            return EmbeddingAdapter.INVALID_SPLIT_INFO_TOKEN;
        }

        public final String getRULE_TAG_PREFIX() {
            return EmbeddingAdapter.RULE_TAG_PREFIX;
        }

        public final boolean isTagGenerated(String str) {
            str.getClass();
            String strT = ta8.T(str, getRULE_TAG_PREFIX());
            return (strT.equals(str) || qa8.o(16, strT) == null) ? false : true;
        }

        private Companion() {
        }
    }

    public final class VendorApiLevel1Impl {
        private final PredicateAdapter predicateAdapter;
        final /* synthetic */ EmbeddingAdapter this$0;

        public VendorApiLevel1Impl(EmbeddingAdapter embeddingAdapter, PredicateAdapter predicateAdapter) {
            predicateAdapter.getClass();
            this.this$0 = embeddingAdapter;
            this.predicateAdapter = predicateAdapter;
        }

        private final boolean isSplitAttributesSupported(SplitAttributes splitAttributes) {
            double value$window_release = splitAttributes.getSplitType().getValue$window_release();
            return 0.0d <= value$window_release && value$window_release <= 1.0d && splitAttributes.getSplitType().getValue$window_release() != 1.0f && yr.E(new SplitAttributes.LayoutDirection[]{SplitAttributes.LayoutDirection.LEFT_TO_RIGHT, SplitAttributes.LayoutDirection.RIGHT_TO_LEFT, SplitAttributes.LayoutDirection.LOCALE}, splitAttributes.getLayoutDirection());
        }

        private final androidx.window.extensions.embedding.SplitPlaceholderRule.Builder setDefaultSplitAttributesCompat(androidx.window.extensions.embedding.SplitPlaceholderRule.Builder builder, SplitAttributes splitAttributes) {
            b36<Float, Integer> b36VarTranslateSplitAttributesCompatInternal = translateSplitAttributesCompatInternal(splitAttributes);
            float fFloatValue = b36VarTranslateSplitAttributesCompatInternal.b.floatValue();
            int iIntValue = b36VarTranslateSplitAttributesCompatInternal.c.intValue();
            builder.setSplitRatio(fFloatValue);
            builder.setLayoutDirection(iIntValue);
            return builder;
        }

        private final Object translateActivityIntentPredicates(final Set<SplitPairFilter> set) {
            return this.predicateAdapter.buildPairPredicate(x07.a(Activity.class), x07.a(Intent.class), new bm3() { // from class: androidx.window.embedding.e
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    return Boolean.valueOf(EmbeddingAdapter.VendorApiLevel1Impl.translateActivityIntentPredicates$lambda$4(set, (Activity) obj, (Intent) obj2));
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean translateActivityIntentPredicates$lambda$4(Set set, Activity activity, Intent intent) {
            activity.getClass();
            intent.getClass();
            Set set2 = set;
            if ((set2 instanceof Collection) && set2.isEmpty()) {
                return false;
            }
            Iterator it = set2.iterator();
            while (it.hasNext()) {
                if (((SplitPairFilter) it.next()).matchesActivityIntentPair(activity, intent)) {
                    return true;
                }
            }
            return false;
        }

        private final Object translateActivityPairPredicates(final Set<SplitPairFilter> set) {
            return this.predicateAdapter.buildPairPredicate(x07.a(Activity.class), x07.a(Activity.class), new bm3() { // from class: androidx.window.embedding.f
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    return Boolean.valueOf(EmbeddingAdapter.VendorApiLevel1Impl.translateActivityPairPredicates$lambda$2(set, (Activity) obj, (Activity) obj2));
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean translateActivityPairPredicates$lambda$2(Set set, Activity activity, Activity activity2) {
            activity.getClass();
            activity2.getClass();
            Set set2 = set;
            if ((set2 instanceof Collection) && set2.isEmpty()) {
                return false;
            }
            Iterator it = set2.iterator();
            while (it.hasNext()) {
                if (((SplitPairFilter) it.next()).matchesActivityPair(activity, activity2)) {
                    return true;
                }
            }
            return false;
        }

        private final Object translateActivityPredicates(final Set<ActivityFilter> set) {
            return this.predicateAdapter.buildPredicate(x07.a(Activity.class), new nl3() { // from class: androidx.window.embedding.g
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(EmbeddingAdapter.VendorApiLevel1Impl.translateActivityPredicates$lambda$7(set, (Activity) obj));
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean translateActivityPredicates$lambda$7(Set set, Activity activity) {
            activity.getClass();
            Set set2 = set;
            if ((set2 instanceof Collection) && set2.isEmpty()) {
                return false;
            }
            Iterator it = set2.iterator();
            while (it.hasNext()) {
                if (((ActivityFilter) it.next()).matchesActivity(activity)) {
                    return true;
                }
            }
            return false;
        }

        private final Object translateIntentPredicates(final Set<ActivityFilter> set) {
            return this.predicateAdapter.buildPredicate(x07.a(Intent.class), new nl3() { // from class: androidx.window.embedding.c
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(EmbeddingAdapter.VendorApiLevel1Impl.translateIntentPredicates$lambda$9(set, (Intent) obj));
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean translateIntentPredicates$lambda$9(Set set, Intent intent) {
            intent.getClass();
            Set set2 = set;
            if ((set2 instanceof Collection) && set2.isEmpty()) {
                return false;
            }
            Iterator it = set2.iterator();
            while (it.hasNext()) {
                if (((ActivityFilter) it.next()).matchesIntent(intent)) {
                    return true;
                }
            }
            return false;
        }

        private final Object translateParentMetricsPredicate(final Context context, final SplitRule splitRule) {
            return this.predicateAdapter.buildPredicate(x07.a(e2.d()), new nl3() { // from class: androidx.window.embedding.d
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(EmbeddingAdapter.VendorApiLevel1Impl.translateParentMetricsPredicate$lambda$10(splitRule, context, (WindowMetrics) obj));
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean translateParentMetricsPredicate$lambda$10(SplitRule splitRule, Context context, WindowMetrics windowMetrics) {
            windowMetrics.getClass();
            return splitRule.checkParentMetrics$window_release(context, windowMetrics);
        }

        private final b36<Float, Integer> translateSplitAttributesCompatInternal(SplitAttributes splitAttributes) {
            int i = 3;
            if (!isSplitAttributesSupported(splitAttributes)) {
                return new b36<>(Float.valueOf(0.0f), 3);
            }
            Float fValueOf = Float.valueOf(splitAttributes.getSplitType().getValue$window_release());
            SplitAttributes.LayoutDirection layoutDirection = splitAttributes.getLayoutDirection();
            if (!aa4.e(layoutDirection, SplitAttributes.LayoutDirection.LOCALE)) {
                if (aa4.e(layoutDirection, SplitAttributes.LayoutDirection.LEFT_TO_RIGHT)) {
                    i = 0;
                } else {
                    if (!aa4.e(layoutDirection, SplitAttributes.LayoutDirection.RIGHT_TO_LEFT)) {
                        ah.f("Unsupported layout direction must be covered in @isSplitAttributesSupported!");
                        return null;
                    }
                    i = 1;
                }
            }
            return new b36<>(fValueOf, Integer.valueOf(i));
        }

        public final PredicateAdapter getPredicateAdapter() {
            return this.predicateAdapter;
        }

        public final SplitAttributes getSplitAttributesCompat(androidx.window.extensions.embedding.SplitInfo splitInfo) {
            splitInfo.getClass();
            return new SplitAttributes.Builder().setSplitType(SplitAttributes.SplitType.Companion.buildSplitTypeFromValue$window_release(splitInfo.getSplitRatio())).setLayoutDirection(SplitAttributes.LayoutDirection.LOCALE).build();
        }

        public final androidx.window.extensions.embedding.ActivityRule translateActivityRuleCompat(ActivityRule activityRule, Class<?> cls) {
            activityRule.getClass();
            cls.getClass();
            androidx.window.extensions.embedding.ActivityRule activityRuleBuild = ((androidx.window.extensions.embedding.ActivityRule.Builder) androidx.window.extensions.embedding.ActivityRule.Builder.class.getConstructor(cls, cls).newInstance(translateActivityPredicates(activityRule.getFilters()), translateIntentPredicates(activityRule.getFilters()))).setShouldAlwaysExpand(activityRule.getAlwaysExpand()).build();
            activityRuleBuild.getClass();
            return activityRuleBuild;
        }

        public final SplitInfo translateCompat(androidx.window.extensions.embedding.SplitInfo splitInfo) {
            splitInfo.getClass();
            androidx.window.extensions.embedding.ActivityStack primaryActivityStack = splitInfo.getPrimaryActivityStack();
            primaryActivityStack.getClass();
            ActivityStack activityStackTranslateCompat = translateCompat(primaryActivityStack);
            androidx.window.extensions.embedding.ActivityStack secondaryActivityStack = splitInfo.getSecondaryActivityStack();
            secondaryActivityStack.getClass();
            return new SplitInfo(activityStackTranslateCompat, translateCompat(secondaryActivityStack), getSplitAttributesCompat(splitInfo));
        }

        public final androidx.window.extensions.embedding.SplitPairRule translateSplitPairRuleCompat(Context context, SplitPairRule splitPairRule, Class<?> cls) throws IllegalAccessException, InstantiationException, InvocationTargetException {
            context.getClass();
            splitPairRule.getClass();
            cls.getClass();
            Object objNewInstance = androidx.window.extensions.embedding.SplitPairRule.Builder.class.getConstructor(cls, cls, cls).newInstance(translateActivityPairPredicates(splitPairRule.getFilters()), translateActivityIntentPredicates(splitPairRule.getFilters()), translateParentMetricsPredicate(context, splitPairRule));
            objNewInstance.getClass();
            androidx.window.extensions.embedding.SplitPairRule splitPairRuleBuild = setDefaultSplitAttributesCompat((androidx.window.extensions.embedding.SplitPairRule.Builder) objNewInstance, splitPairRule.getDefaultSplitAttributes()).setShouldClearTop(splitPairRule.getClearTop()).setFinishPrimaryWithSecondary(this.this$0.translateFinishBehavior(splitPairRule.getFinishPrimaryWithSecondary())).setFinishSecondaryWithPrimary(this.this$0.translateFinishBehavior(splitPairRule.getFinishSecondaryWithPrimary())).build();
            splitPairRuleBuild.getClass();
            return splitPairRuleBuild;
        }

        public final androidx.window.extensions.embedding.SplitPlaceholderRule translateSplitPlaceholderRuleCompat(Context context, SplitPlaceholderRule splitPlaceholderRule, Class<?> cls) {
            context.getClass();
            splitPlaceholderRule.getClass();
            cls.getClass();
            androidx.window.extensions.embedding.SplitPlaceholderRule.Builder finishPrimaryWithSecondary = ((androidx.window.extensions.embedding.SplitPlaceholderRule.Builder) androidx.window.extensions.embedding.SplitPlaceholderRule.Builder.class.getConstructor(Intent.class, cls, cls, cls).newInstance(splitPlaceholderRule.getPlaceholderIntent(), translateActivityPredicates(splitPlaceholderRule.getFilters()), translateIntentPredicates(splitPlaceholderRule.getFilters()), translateParentMetricsPredicate(context, splitPlaceholderRule))).setSticky(splitPlaceholderRule.isSticky()).setFinishPrimaryWithSecondary(this.this$0.translateFinishBehavior(splitPlaceholderRule.getFinishPrimaryWithPlaceholder()));
            finishPrimaryWithSecondary.getClass();
            androidx.window.extensions.embedding.SplitPlaceholderRule splitPlaceholderRuleBuild = setDefaultSplitAttributesCompat(finishPrimaryWithSecondary, splitPlaceholderRule.getDefaultSplitAttributes()).build();
            splitPlaceholderRuleBuild.getClass();
            return splitPlaceholderRuleBuild;
        }

        private final androidx.window.extensions.embedding.SplitPairRule.Builder setDefaultSplitAttributesCompat(androidx.window.extensions.embedding.SplitPairRule.Builder builder, SplitAttributes splitAttributes) {
            b36<Float, Integer> b36VarTranslateSplitAttributesCompatInternal = translateSplitAttributesCompatInternal(splitAttributes);
            float fFloatValue = b36VarTranslateSplitAttributesCompatInternal.b.floatValue();
            int iIntValue = b36VarTranslateSplitAttributesCompatInternal.c.intValue();
            builder.setSplitRatio(fFloatValue);
            builder.setLayoutDirection(iIntValue);
            return builder;
        }

        public final ActivityStack translateCompat(androidx.window.extensions.embedding.ActivityStack activityStack) {
            activityStack.getClass();
            List activities = activityStack.getActivities();
            activities.getClass();
            return new ActivityStack(activities, activityStack.isEmpty());
        }
    }

    private final SplitInfo translate(androidx.window.extensions.embedding.SplitInfo splitInfo) {
        int extensionVersion = getExtensionVersion();
        if (extensionVersion == 1) {
            return this.api1Impl.translateCompat(splitInfo);
        }
        if (extensionVersion == 2) {
            return this.api2Impl.translateCompat(splitInfo);
        }
        if (3 <= extensionVersion && extensionVersion < 5) {
            return this.api3Impl.translateCompat(splitInfo);
        }
        androidx.window.extensions.embedding.ActivityStack primaryActivityStack = splitInfo.getPrimaryActivityStack();
        primaryActivityStack.getClass();
        ActivityStack activityStackTranslate$window_release = translate$window_release(primaryActivityStack);
        androidx.window.extensions.embedding.ActivityStack secondaryActivityStack = splitInfo.getSecondaryActivityStack();
        secondaryActivityStack.getClass();
        ActivityStack activityStackTranslate$window_release2 = translate$window_release(secondaryActivityStack);
        androidx.window.extensions.embedding.SplitAttributes splitAttributes = splitInfo.getSplitAttributes();
        splitAttributes.getClass();
        SplitAttributes splitAttributesTranslate$window_release = translate$window_release(splitAttributes);
        androidx.window.extensions.embedding.SplitInfo.Token splitInfoToken = splitInfo.getSplitInfoToken();
        splitInfoToken.getClass();
        return new SplitInfo(activityStackTranslate$window_release, activityStackTranslate$window_release2, splitAttributesTranslate$window_release, splitInfoToken);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x003f  */
    public final SplitAttributesCalculatorParams translate(androidx.window.extensions.embedding.SplitAttributesCalculatorParams splitAttributesCalculatorParams) {
        String splitRuleTag;
        splitAttributesCalculatorParams.getClass();
        WindowMetrics parentWindowMetrics = splitAttributesCalculatorParams.getParentWindowMetrics();
        parentWindowMetrics.getClass();
        Configuration parentConfiguration = splitAttributesCalculatorParams.getParentConfiguration();
        parentConfiguration.getClass();
        WindowLayoutInfo parentWindowLayoutInfo = splitAttributesCalculatorParams.getParentWindowLayoutInfo();
        parentWindowLayoutInfo.getClass();
        androidx.window.extensions.embedding.SplitAttributes defaultSplitAttributes = splitAttributesCalculatorParams.getDefaultSplitAttributes();
        defaultSplitAttributes.getClass();
        boolean zAreDefaultConstraintsSatisfied = splitAttributesCalculatorParams.areDefaultConstraintsSatisfied();
        if (splitAttributesCalculatorParams.getSplitRuleTag() != null) {
            Companion companion = Companion;
            String splitRuleTag2 = splitAttributesCalculatorParams.getSplitRuleTag();
            splitRuleTag2.getClass();
            if (companion.isTagGenerated(splitRuleTag2)) {
                splitRuleTag = null;
            } else {
                splitRuleTag = splitAttributesCalculatorParams.getSplitRuleTag();
            }
        } else {
            splitRuleTag = null;
        }
        String str = splitRuleTag;
        androidx.window.layout.WindowMetrics windowMetricsTranslateWindowMetrics$window_release = WindowMetricsCalculator.Companion.translateWindowMetrics$window_release(parentWindowMetrics, DensityCompatHelper.Companion.getInstance().density(parentConfiguration, parentWindowMetrics));
        return new SplitAttributesCalculatorParams(windowMetricsTranslateWindowMetrics$window_release, parentConfiguration, ExtensionsWindowLayoutInfoAdapter.INSTANCE.translate$window_release(windowMetricsTranslateWindowMetrics$window_release, parentWindowLayoutInfo), translate$window_release(defaultSplitAttributes), zAreDefaultConstraintsSatisfied, str);
    }

    public final List<SplitInfo> translate(List<? extends androidx.window.extensions.embedding.SplitInfo> list) {
        list.getClass();
        List<? extends androidx.window.extensions.embedding.SplitInfo> list2 = list;
        ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(translate((androidx.window.extensions.embedding.SplitInfo) it.next()));
        }
        return arrayList;
    }

    public final List<ActivityStack> translate$window_release(List<? extends androidx.window.extensions.embedding.ActivityStack> list) {
        list.getClass();
        List<? extends androidx.window.extensions.embedding.ActivityStack> list2 = list;
        ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(translate$window_release((androidx.window.extensions.embedding.ActivityStack) it.next()));
        }
        return arrayList;
    }

    public final ActivityStack translate$window_release(androidx.window.extensions.embedding.ActivityStack activityStack) {
        activityStack.getClass();
        int extensionVersion = getExtensionVersion();
        if (1 <= extensionVersion && extensionVersion < 5) {
            return this.api1Impl.translateCompat(activityStack);
        }
        List activities = activityStack.getActivities();
        activities.getClass();
        return new ActivityStack(activities, activityStack.isEmpty(), activityStack.getActivityStackToken());
    }

    public final ParentContainerInfo translate$window_release(androidx.window.extensions.embedding.ParentContainerInfo parentContainerInfo) {
        parentContainerInfo.getClass();
        Configuration configuration = parentContainerInfo.getConfiguration();
        configuration.getClass();
        DensityCompatHelper companion = DensityCompatHelper.Companion.getInstance();
        Configuration configuration2 = parentContainerInfo.getConfiguration();
        configuration2.getClass();
        WindowMetrics windowMetrics = parentContainerInfo.getWindowMetrics();
        windowMetrics.getClass();
        float fDensity = companion.density(configuration2, windowMetrics);
        WindowMetricsCalculator.Companion companion2 = WindowMetricsCalculator.Companion;
        WindowMetrics windowMetrics2 = parentContainerInfo.getWindowMetrics();
        windowMetrics2.getClass();
        androidx.window.layout.WindowMetrics windowMetricsTranslateWindowMetrics$window_release = companion2.translateWindowMetrics$window_release(windowMetrics2, fDensity);
        Bounds bounds = new Bounds(windowMetricsTranslateWindowMetrics$window_release.getBounds());
        ExtensionsWindowLayoutInfoAdapter extensionsWindowLayoutInfoAdapter = ExtensionsWindowLayoutInfoAdapter.INSTANCE;
        WindowLayoutInfo windowLayoutInfo = parentContainerInfo.getWindowLayoutInfo();
        windowLayoutInfo.getClass();
        return new ParentContainerInfo(bounds, extensionsWindowLayoutInfoAdapter.translate$window_release(windowMetricsTranslateWindowMetrics$window_release, windowLayoutInfo), configuration, fDensity);
    }
}
