package androidx.window.embedding;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import androidx.webkit.ProxyConfig;
import androidx.window.R;
import defpackage.fg;
import defpackage.mz0;
import defpackage.ni0;
import defpackage.ox2;
import defpackage.ta8;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes3.dex */
public final class RuleParser {
    public static final RuleParser INSTANCE = new RuleParser();

    private RuleParser() {
    }

    private final void addRuleWithDuplicatedTagCheck(HashSet<EmbeddingRule> hashSet, EmbeddingRule embeddingRule) {
        String tag = embeddingRule.getTag();
        for (EmbeddingRule embeddingRule2 : hashSet) {
            if (tag != null && tag.equals(embeddingRule2.getTag())) {
                mz0.d("Duplicated tag: ", tag, " for ", embeddingRule, ". The tag must be unique in XML rule definition.");
                return;
            }
        }
        hashSet.add(embeddingRule);
    }

    private final ComponentName buildClassName(String str, CharSequence charSequence) {
        if (charSequence == null || charSequence.length() == 0) {
            fg.c("Activity name must not be null");
            return null;
        }
        String string = charSequence.toString();
        if (string.charAt(0) == '.') {
            return new ComponentName(str, ni0.c(str, string));
        }
        int iJ = ta8.J('/', 0, 6, string);
        if (iJ > 0) {
            str = string.substring(0, iJ);
            string = string.substring(iJ + 1);
        }
        if (string.equals(ProxyConfig.MATCH_ALL_SCHEMES) || ta8.J('.', 0, 6, string) >= 0) {
            return new ComponentName(str, string);
        }
        return new ComponentName(str, str + '.' + string);
    }

    private final ActivityFilter parseActivityFilter(Context context, XmlResourceParser xmlResourceParser) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(xmlResourceParser, R.styleable.ActivityFilter, 0, 0);
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.ActivityFilter_activityName);
        String string2 = typedArrayObtainStyledAttributes.getString(R.styleable.ActivityFilter_activityAction);
        String packageName = context.getApplicationContext().getPackageName();
        packageName.getClass();
        return new ActivityFilter(buildClassName(packageName, string), string2);
    }

    private final ActivityRule parseActivityRule(Context context, XmlResourceParser xmlResourceParser) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(xmlResourceParser, R.styleable.ActivityRule, 0, 0);
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.ActivityRule_tag);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(R.styleable.ActivityRule_alwaysExpand, false);
        typedArrayObtainStyledAttributes.recycle();
        ActivityRule.Builder alwaysExpand = new ActivityRule.Builder(ox2.b).setAlwaysExpand(z);
        if (string != null) {
            alwaysExpand.setTag(string);
        }
        return alwaysExpand.build();
    }

    private final DividerAttributes parseDividerAttributes(Context context, XmlResourceParser xmlResourceParser) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(xmlResourceParser, R.styleable.DividerAttributes, 0, 0);
        int i = typedArrayObtainStyledAttributes.getInt(R.styleable.DividerAttributes_embeddingDividerType, 0);
        DividerAttributes.Companion companion = DividerAttributes.Companion;
        companion.validateXmlDividerAttributes$window_release(i, typedArrayObtainStyledAttributes.hasValue(R.styleable.DividerAttributes_dragRangeMinRatio), typedArrayObtainStyledAttributes.hasValue(R.styleable.DividerAttributes_dragRangeMaxRatio), typedArrayObtainStyledAttributes.hasValue(R.styleable.DividerAttributes_isDraggingToFullscreenAllowed));
        return companion.createDividerAttributes$window_release(i, typedArrayObtainStyledAttributes.getInt(R.styleable.DividerAttributes_embeddingDividerWidthDp, -1), typedArrayObtainStyledAttributes.getColor(R.styleable.DividerAttributes_embeddingDividerColor, -16777216), typedArrayObtainStyledAttributes.getFloat(R.styleable.DividerAttributes_dragRangeMinRatio, -1.0f), typedArrayObtainStyledAttributes.getFloat(R.styleable.DividerAttributes_dragRangeMaxRatio, -1.0f), typedArrayObtainStyledAttributes.getBoolean(R.styleable.DividerAttributes_isDraggingToFullscreenAllowed, false));
    }

    private final SplitPairFilter parseSplitPairFilter(Context context, XmlResourceParser xmlResourceParser) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(xmlResourceParser, R.styleable.SplitPairFilter, 0, 0);
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.SplitPairFilter_primaryActivityName);
        String string2 = typedArrayObtainStyledAttributes.getString(R.styleable.SplitPairFilter_secondaryActivityName);
        String string3 = typedArrayObtainStyledAttributes.getString(R.styleable.SplitPairFilter_secondaryActivityAction);
        String packageName = context.getApplicationContext().getPackageName();
        packageName.getClass();
        return new SplitPairFilter(buildClassName(packageName, string), buildClassName(packageName, string2), string3);
    }

    private final SplitPairRule parseSplitPairRule(Context context, XmlResourceParser xmlResourceParser) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(xmlResourceParser, R.styleable.SplitPairRule, 0, 0);
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.SplitPairRule_tag);
        float f = typedArrayObtainStyledAttributes.getFloat(R.styleable.SplitPairRule_splitRatio, 0.5f);
        int integer = typedArrayObtainStyledAttributes.getInteger(R.styleable.SplitPairRule_splitMinWidthDp, 600);
        int integer2 = typedArrayObtainStyledAttributes.getInteger(R.styleable.SplitPairRule_splitMinHeightDp, 600);
        int integer3 = typedArrayObtainStyledAttributes.getInteger(R.styleable.SplitPairRule_splitMinSmallestWidthDp, 600);
        float f2 = typedArrayObtainStyledAttributes.getFloat(R.styleable.SplitPairRule_splitMaxAspectRatioInPortrait, SplitRule.SPLIT_MAX_ASPECT_RATIO_PORTRAIT_DEFAULT.getValue$window_release());
        float f3 = typedArrayObtainStyledAttributes.getFloat(R.styleable.SplitPairRule_splitMaxAspectRatioInLandscape, SplitRule.SPLIT_MAX_ASPECT_RATIO_LANDSCAPE_DEFAULT.getValue$window_release());
        int i = typedArrayObtainStyledAttributes.getInt(R.styleable.SplitPairRule_splitLayoutDirection, SplitAttributes.LayoutDirection.LOCALE.getValue$window_release());
        int i2 = typedArrayObtainStyledAttributes.getInt(R.styleable.SplitPairRule_finishPrimaryWithSecondary, SplitRule.FinishBehavior.NEVER.getValue$window_release());
        int i3 = typedArrayObtainStyledAttributes.getInt(R.styleable.SplitPairRule_finishSecondaryWithPrimary, SplitRule.FinishBehavior.ALWAYS.getValue$window_release());
        boolean z = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SplitPairRule_clearTop, false);
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.SplitPairRule_animationBackgroundColor, 0);
        int i4 = R.styleable.SplitPairRule_splitOpenAnimation;
        EmbeddingAnimationParams.AnimationSpec animationSpec = EmbeddingAnimationParams.AnimationSpec.DEFAULT;
        int i5 = typedArrayObtainStyledAttributes.getInt(i4, animationSpec.getValue$window_release());
        int i6 = typedArrayObtainStyledAttributes.getInt(R.styleable.SplitPairRule_splitCloseAnimation, animationSpec.getValue$window_release());
        int i7 = typedArrayObtainStyledAttributes.getInt(R.styleable.SplitPairRule_splitChangeAnimation, animationSpec.getValue$window_release());
        typedArrayObtainStyledAttributes.recycle();
        EmbeddingAnimationParams.Builder animationBackground = new EmbeddingAnimationParams.Builder().setAnimationBackground(EmbeddingAnimationBackground.Companion.buildFromValue$window_release(color));
        EmbeddingAnimationParams.AnimationSpec.Companion companion = EmbeddingAnimationParams.AnimationSpec.Companion;
        SplitAttributes splitAttributesBuild = new SplitAttributes.Builder().setSplitType(SplitAttributes.SplitType.Companion.buildSplitTypeFromValue$window_release(f)).setLayoutDirection(SplitAttributes.LayoutDirection.Companion.getLayoutDirectionFromValue$window_release(i)).setAnimationParams(animationBackground.setOpenAnimation(companion.getAnimationSpecFromValue$window_release(i5)).setCloseAnimation(companion.getAnimationSpecFromValue$window_release(i6)).setChangeAnimation(companion.getAnimationSpecFromValue$window_release(i7)).build()).build();
        SplitPairRule.Builder minSmallestWidthDp = new SplitPairRule.Builder(ox2.b).setTag(string).setMinWidthDp(integer).setMinHeightDp(integer2).setMinSmallestWidthDp(integer3);
        EmbeddingAspectRatio.Companion companion2 = EmbeddingAspectRatio.Companion;
        SplitPairRule.Builder maxAspectRatioInLandscape = minSmallestWidthDp.setMaxAspectRatioInPortrait(companion2.buildAspectRatioFromValue$window_release(f2)).setMaxAspectRatioInLandscape(companion2.buildAspectRatioFromValue$window_release(f3));
        SplitRule.FinishBehavior.Companion companion3 = SplitRule.FinishBehavior.Companion;
        return maxAspectRatioInLandscape.setFinishPrimaryWithSecondary(companion3.getFinishBehaviorFromValue$window_release(i2)).setFinishSecondaryWithPrimary(companion3.getFinishBehaviorFromValue$window_release(i3)).setClearTop(z).setDefaultSplitAttributes(splitAttributesBuild).build();
    }

    private final SplitPlaceholderRule parseSplitPlaceholderRule(Context context, XmlResourceParser xmlResourceParser) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(xmlResourceParser, R.styleable.SplitPlaceholderRule, 0, 0);
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.SplitPlaceholderRule_tag);
        String string2 = typedArrayObtainStyledAttributes.getString(R.styleable.SplitPlaceholderRule_placeholderActivityName);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SplitPlaceholderRule_stickyPlaceholder, false);
        int i = typedArrayObtainStyledAttributes.getInt(R.styleable.SplitPlaceholderRule_finishPrimaryWithPlaceholder, SplitRule.FinishBehavior.ALWAYS.getValue$window_release());
        if (i == SplitRule.FinishBehavior.NEVER.getValue$window_release()) {
            fg.c("Never is not a valid configuration for Placeholder activities. Please use FINISH_ALWAYS or FINISH_ADJACENT instead or refer to the current API");
            return null;
        }
        float f = typedArrayObtainStyledAttributes.getFloat(R.styleable.SplitPlaceholderRule_splitRatio, 0.5f);
        int integer = typedArrayObtainStyledAttributes.getInteger(R.styleable.SplitPlaceholderRule_splitMinWidthDp, 600);
        int integer2 = typedArrayObtainStyledAttributes.getInteger(R.styleable.SplitPlaceholderRule_splitMinHeightDp, 600);
        int integer3 = typedArrayObtainStyledAttributes.getInteger(R.styleable.SplitPlaceholderRule_splitMinSmallestWidthDp, 600);
        float f2 = typedArrayObtainStyledAttributes.getFloat(R.styleable.SplitPlaceholderRule_splitMaxAspectRatioInPortrait, SplitRule.SPLIT_MAX_ASPECT_RATIO_PORTRAIT_DEFAULT.getValue$window_release());
        float f3 = typedArrayObtainStyledAttributes.getFloat(R.styleable.SplitPlaceholderRule_splitMaxAspectRatioInLandscape, SplitRule.SPLIT_MAX_ASPECT_RATIO_LANDSCAPE_DEFAULT.getValue$window_release());
        int i2 = typedArrayObtainStyledAttributes.getInt(R.styleable.SplitPlaceholderRule_splitLayoutDirection, SplitAttributes.LayoutDirection.LOCALE.getValue$window_release());
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.SplitPlaceholderRule_animationBackgroundColor, 0);
        int i3 = R.styleable.SplitPlaceholderRule_splitOpenAnimation;
        EmbeddingAnimationParams.AnimationSpec animationSpec = EmbeddingAnimationParams.AnimationSpec.DEFAULT;
        int i4 = typedArrayObtainStyledAttributes.getInt(i3, animationSpec.getValue$window_release());
        int i5 = typedArrayObtainStyledAttributes.getInt(R.styleable.SplitPlaceholderRule_splitCloseAnimation, animationSpec.getValue$window_release());
        int i6 = typedArrayObtainStyledAttributes.getInt(R.styleable.SplitPlaceholderRule_splitChangeAnimation, animationSpec.getValue$window_release());
        typedArrayObtainStyledAttributes.recycle();
        EmbeddingAnimationParams.Builder animationBackground = new EmbeddingAnimationParams.Builder().setAnimationBackground(EmbeddingAnimationBackground.Companion.buildFromValue$window_release(color));
        EmbeddingAnimationParams.AnimationSpec.Companion companion = EmbeddingAnimationParams.AnimationSpec.Companion;
        SplitAttributes splitAttributesBuild = new SplitAttributes.Builder().setSplitType(SplitAttributes.SplitType.Companion.buildSplitTypeFromValue$window_release(f)).setLayoutDirection(SplitAttributes.LayoutDirection.Companion.getLayoutDirectionFromValue$window_release(i2)).setAnimationParams(animationBackground.setOpenAnimation(companion.getAnimationSpecFromValue$window_release(i4)).setCloseAnimation(companion.getAnimationSpecFromValue$window_release(i5)).setChangeAnimation(companion.getAnimationSpecFromValue$window_release(i6)).build()).build();
        String packageName = context.getApplicationContext().getPackageName();
        RuleParser ruleParser = INSTANCE;
        packageName.getClass();
        Intent component = new Intent().setComponent(ruleParser.buildClassName(packageName, string2));
        component.getClass();
        SplitPlaceholderRule.Builder minSmallestWidthDp = new SplitPlaceholderRule.Builder(ox2.b, component).setTag(string).setMinWidthDp(integer).setMinHeightDp(integer2).setMinSmallestWidthDp(integer3);
        EmbeddingAspectRatio.Companion companion2 = EmbeddingAspectRatio.Companion;
        return minSmallestWidthDp.setMaxAspectRatioInPortrait(companion2.buildAspectRatioFromValue$window_release(f2)).setMaxAspectRatioInLandscape(companion2.buildAspectRatioFromValue$window_release(f3)).setSticky(z).setFinishPrimaryWithPlaceholder(SplitRule.FinishBehavior.Companion.getFinishBehaviorFromValue$window_release(i)).setDefaultSplitAttributes(splitAttributesBuild).build();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final Set<EmbeddingRule> parseRules$window_release(Context context, int i) throws XmlPullParserException, IOException {
        SplitPlaceholderRule splitPlaceholderRuleBuild;
        SplitPairRule splitPairRuleBuild;
        ActivityRule activityRulePlus$window_release;
        context.getClass();
        try {
            XmlResourceParser xml = context.getResources().getXml(i);
            xml.getClass();
            HashSet<EmbeddingRule> hashSet = new HashSet<>();
            int depth = xml.getDepth();
            int next = xml.next();
            SplitPairRule splitPairRule = null;
            ActivityRule activityRule = null;
            SplitPlaceholderRule splitPlaceholderRule = null;
            while (next != 1 && (next != 3 || xml.getDepth() > depth)) {
                if (xml.getEventType() != 2 || "split-config".equals(xml.getName())) {
                    next = xml.next();
                } else {
                    String name = xml.getName();
                    if (name != null) {
                        switch (name.hashCode()) {
                            case 304713008:
                                if (name.equals("DividerAttributes")) {
                                    if (splitPairRule == null && splitPlaceholderRule == null) {
                                        fg.c("Found orphaned DividerAttributes");
                                        return null;
                                    }
                                    DividerAttributes dividerAttributes = parseDividerAttributes(context, xml);
                                    if (splitPairRule != null) {
                                        hashSet.remove(splitPairRule);
                                        splitPairRuleBuild = new SplitPairRule.Builder(splitPairRule).setDefaultSplitAttributes(new SplitAttributes.Builder(splitPairRule.getDefaultSplitAttributes()).setDividerAttributes(dividerAttributes).build()).build();
                                        addRuleWithDuplicatedTagCheck(hashSet, splitPairRuleBuild);
                                        splitPairRule = splitPairRuleBuild;
                                    } else if (splitPlaceholderRule != null) {
                                        hashSet.remove(splitPlaceholderRule);
                                        splitPlaceholderRuleBuild = new SplitPlaceholderRule.Builder(splitPlaceholderRule).setDefaultSplitAttributes(new SplitAttributes.Builder(splitPlaceholderRule.getDefaultSplitAttributes()).setDividerAttributes(dividerAttributes).build()).build();
                                        addRuleWithDuplicatedTagCheck(hashSet, splitPlaceholderRuleBuild);
                                        splitPlaceholderRule = splitPlaceholderRuleBuild;
                                    }
                                }
                                break;
                            case 511422343:
                                if (name.equals("ActivityFilter")) {
                                    if (activityRule == null && splitPlaceholderRule == null) {
                                        fg.c("Found orphaned ActivityFilter");
                                        return null;
                                    }
                                    ActivityFilter activityFilter = parseActivityFilter(context, xml);
                                    if (activityRule != null) {
                                        hashSet.remove(activityRule);
                                        activityRulePlus$window_release = activityRule.plus$window_release(activityFilter);
                                        addRuleWithDuplicatedTagCheck(hashSet, activityRulePlus$window_release);
                                        activityRule = activityRulePlus$window_release;
                                    } else if (splitPlaceholderRule != null) {
                                        hashSet.remove(splitPlaceholderRule);
                                        splitPlaceholderRuleBuild = splitPlaceholderRule.plus$window_release(activityFilter);
                                        addRuleWithDuplicatedTagCheck(hashSet, splitPlaceholderRuleBuild);
                                        splitPlaceholderRule = splitPlaceholderRuleBuild;
                                    }
                                }
                                break;
                            case 520447504:
                                if (name.equals("SplitPairRule")) {
                                    splitPairRuleBuild = parseSplitPairRule(context, xml);
                                    addRuleWithDuplicatedTagCheck(hashSet, splitPairRuleBuild);
                                    activityRule = null;
                                    splitPlaceholderRule = null;
                                    splitPairRule = splitPairRuleBuild;
                                }
                                break;
                            case 1579230604:
                                if (name.equals("SplitPairFilter")) {
                                    if (splitPairRule == null) {
                                        fg.c("Found orphaned SplitPairFilter outside of SplitPairRule");
                                        return null;
                                    }
                                    SplitPairFilter splitPairFilter = parseSplitPairFilter(context, xml);
                                    hashSet.remove(splitPairRule);
                                    splitPairRuleBuild = splitPairRule.plus$window_release(splitPairFilter);
                                    addRuleWithDuplicatedTagCheck(hashSet, splitPairRuleBuild);
                                    splitPairRule = splitPairRuleBuild;
                                }
                                break;
                            case 1793077963:
                                if (name.equals("ActivityRule")) {
                                    activityRulePlus$window_release = parseActivityRule(context, xml);
                                    addRuleWithDuplicatedTagCheck(hashSet, activityRulePlus$window_release);
                                    splitPairRule = null;
                                    splitPlaceholderRule = null;
                                    activityRule = activityRulePlus$window_release;
                                }
                                break;
                            case 2050988213:
                                if (name.equals("SplitPlaceholderRule")) {
                                    splitPlaceholderRuleBuild = parseSplitPlaceholderRule(context, xml);
                                    addRuleWithDuplicatedTagCheck(hashSet, splitPlaceholderRuleBuild);
                                    splitPairRule = null;
                                    activityRule = null;
                                    splitPlaceholderRule = splitPlaceholderRuleBuild;
                                }
                                break;
                        }
                    }
                    next = xml.next();
                }
            }
            return hashSet;
        } catch (Resources.NotFoundException unused) {
            return null;
        }
    }
}
