package androidx.compose.animation;

import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutModifierKt;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.fm3;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class AnimatedContentKt$AnimatedContent$6$1 extends gh4 implements bm3<Composer, Integer, j59> {
    final /* synthetic */ fm3<AnimatedContentScope, S, Composer, Integer, j59> $content;
    final /* synthetic */ SnapshotStateList<S> $currentlyVisible;
    final /* synthetic */ AnimatedContentTransitionScopeImpl<S> $rootScope;
    final /* synthetic */ S $stateForContent;
    final /* synthetic */ Transition<S> $this_AnimatedContent;
    final /* synthetic */ nl3<AnimatedContentTransitionScope<S>, ContentTransform> $transitionSpec;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AnimatedContentKt$AnimatedContent$6$1(Transition<S> transition, S s, nl3<? super AnimatedContentTransitionScope<S>, ContentTransform> nl3Var, AnimatedContentTransitionScopeImpl<S> animatedContentTransitionScopeImpl, SnapshotStateList<S> snapshotStateList, fm3<? super AnimatedContentScope, ? super S, ? super Composer, ? super Integer, j59> fm3Var) {
        super(2);
        this.$this_AnimatedContent = transition;
        this.$stateForContent = s;
        this.$transitionSpec = nl3Var;
        this.$rootScope = animatedContentTransitionScopeImpl;
        this.$currentlyVisible = snapshotStateList;
        this.$content = fm3Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void invoke(Composer composer, int i) {
        if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-23915175, i, -1, "androidx.compose.animation.AnimatedContent.<anonymous>.<anonymous> (AnimatedContent.kt:818)");
        }
        nl3<AnimatedContentTransitionScope<S>, ContentTransform> nl3Var = this.$transitionSpec;
        Object obj = this.$rootScope;
        ContentTransform contentTransformRememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (contentTransformRememberedValue == companion.getEmpty()) {
            contentTransformRememberedValue = nl3Var.invoke(obj);
            composer.updateRememberedValue(contentTransformRememberedValue);
        }
        ContentTransform contentTransform = (ContentTransform) contentTransformRememberedValue;
        boolean zChanged = composer.changed(aa4.e(this.$this_AnimatedContent.getSegment().getTargetState(), this.$stateForContent));
        Transition<S> transition = this.$this_AnimatedContent;
        S s = this.$stateForContent;
        nl3<AnimatedContentTransitionScope<S>, ContentTransform> nl3Var2 = this.$transitionSpec;
        Object obj2 = this.$rootScope;
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == companion.getEmpty()) {
            objRememberedValue = aa4.e(transition.getSegment().getTargetState(), s) ? ExitTransition.Companion.getNone() : nl3Var2.invoke(obj2).getInitialContentExit();
            composer.updateRememberedValue(objRememberedValue);
        }
        ExitTransition exitTransition = (ExitTransition) objRememberedValue;
        S s2 = this.$stateForContent;
        Transition<S> transition2 = this.$this_AnimatedContent;
        Object objRememberedValue2 = composer.rememberedValue();
        if (objRememberedValue2 == companion.getEmpty()) {
            objRememberedValue2 = new AnimatedContentTransitionScopeImpl.ChildData(aa4.e(s2, transition2.getTargetState()));
            composer.updateRememberedValue(objRememberedValue2);
        }
        AnimatedContentTransitionScopeImpl.ChildData childData = (AnimatedContentTransitionScopeImpl.ChildData) objRememberedValue2;
        EnterTransition targetContentEnter = contentTransform.getTargetContentEnter();
        Modifier.Companion companion2 = Modifier.Companion;
        boolean zChangedInstance = composer.changedInstance(contentTransform);
        Object objRememberedValue3 = composer.rememberedValue();
        if (zChangedInstance || objRememberedValue3 == companion.getEmpty()) {
            objRememberedValue3 = new AnimatedContentKt$AnimatedContent$6$1$1$1(contentTransform);
            composer.updateRememberedValue(objRememberedValue3);
        }
        Modifier modifierLayout = LayoutModifierKt.layout(companion2, (dm3) objRememberedValue3);
        childData.setTarget(aa4.e(this.$stateForContent, this.$this_AnimatedContent.getTargetState()));
        Modifier modifierThen = modifierLayout.then(childData);
        Transition<S> transition3 = this.$this_AnimatedContent;
        boolean zChangedInstance2 = composer.changedInstance(this.$stateForContent);
        S s3 = this.$stateForContent;
        Object objRememberedValue4 = composer.rememberedValue();
        if (zChangedInstance2 || objRememberedValue4 == companion.getEmpty()) {
            objRememberedValue4 = new AnimatedContentKt$AnimatedContent$6$1$3$1(s3);
            composer.updateRememberedValue(objRememberedValue4);
        }
        nl3 nl3Var3 = (nl3) objRememberedValue4;
        boolean zChanged2 = composer.changed(exitTransition);
        Object objRememberedValue5 = composer.rememberedValue();
        if (zChanged2 || objRememberedValue5 == companion.getEmpty()) {
            objRememberedValue5 = new AnimatedContentKt$AnimatedContent$6$1$4$1(exitTransition);
            composer.updateRememberedValue(objRememberedValue5);
        }
        AnimatedVisibilityKt.AnimatedEnterExitImpl(transition3, nl3Var3, modifierThen, targetContentEnter, exitTransition, (bm3) objRememberedValue5, null, ComposableLambdaKt.rememberComposableLambda(-143346359, true, new AnonymousClass5(this.$currentlyVisible, this.$stateForContent, this.$rootScope, this.$content), composer, 54), composer, 12582912, 64);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.AnimatedContentKt$AnimatedContent$6$1$5, reason: invalid class name */
    public static final class AnonymousClass5 extends gh4 implements dm3<AnimatedVisibilityScope, Composer, Integer, j59> {
        final /* synthetic */ fm3<AnimatedContentScope, S, Composer, Integer, j59> $content;
        final /* synthetic */ SnapshotStateList<S> $currentlyVisible;
        final /* synthetic */ AnimatedContentTransitionScopeImpl<S> $rootScope;
        final /* synthetic */ S $stateForContent;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass5(SnapshotStateList<S> snapshotStateList, S s, AnimatedContentTransitionScopeImpl<S> animatedContentTransitionScopeImpl, fm3<? super AnimatedContentScope, ? super S, ? super Composer, ? super Integer, j59> fm3Var) {
            super(3);
            this.$currentlyVisible = snapshotStateList;
            this.$stateForContent = s;
            this.$rootScope = animatedContentTransitionScopeImpl;
            this.$content = fm3Var;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        /*  JADX ERROR: JadxRuntimeException in pass: FinishTypeInference
            jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r9v10 boolean
            	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
            	at jadx.core.dex.visitors.typeinference.FinishTypeInference.lambda$visit$0(FinishTypeInference.java:27)
            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
            	at jadx.core.dex.visitors.typeinference.FinishTypeInference.visit(FinishTypeInference.java:22)
            */
        public final void invoke(androidx.compose.animation.AnimatedVisibilityScope r7, androidx.compose.runtime.Composer r8, int r9) {
            /*
                r6 = this;
                r0 = r9 & 6
                if (r0 != 0) goto L17
                r0 = r9 & 8
                if (r0 != 0) goto Ld
                boolean r0 = r8.changed(r7)
                goto L11
            Ld:
                boolean r0 = r8.changedInstance(r7)
            L11:
                if (r0 == 0) goto L15
                r0 = 4
                goto L16
            L15:
                r0 = 2
            L16:
                r9 = r9 | r0
            L17:
                r0 = r9 & 19
                r1 = 18
                r2 = 0
                if (r0 == r1) goto L20
                r0 = 1
                goto L21
            L20:
                r0 = r2
            L21:
                r1 = r9 & 1
                boolean r0 = r8.shouldExecute(r0, r1)
                if (r0 == 0) goto Laf
                boolean r0 = androidx.compose.runtime.ComposerKt.isTraceInProgress()
                if (r0 == 0) goto L38
                r0 = -1
                java.lang.String r1 = "androidx.compose.animation.AnimatedContent.<anonymous>.<anonymous>.<anonymous> (AnimatedContent.kt:854)"
                r3 = -143346359(0xfffffffff774b549, float:-4.9632708E33)
                androidx.compose.runtime.ComposerKt.traceEventStart(r3, r9, r0, r1)
            L38:
                androidx.compose.runtime.snapshots.SnapshotStateList<S> r0 = r6.$currentlyVisible
                boolean r0 = r8.changed(r0)
                S r1 = r6.$stateForContent
                boolean r1 = r8.changedInstance(r1)
                r0 = r0 | r1
                androidx.compose.animation.AnimatedContentTransitionScopeImpl<S> r1 = r6.$rootScope
                boolean r1 = r8.changedInstance(r1)
                r0 = r0 | r1
                androidx.compose.runtime.snapshots.SnapshotStateList<S> r1 = r6.$currentlyVisible
                S r3 = r6.$stateForContent
                androidx.compose.animation.AnimatedContentTransitionScopeImpl<S> r4 = r6.$rootScope
                java.lang.Object r5 = r8.rememberedValue()
                if (r0 != 0) goto L60
                androidx.compose.runtime.Composer$Companion r0 = androidx.compose.runtime.Composer.Companion
                java.lang.Object r0 = r0.getEmpty()
                if (r5 != r0) goto L68
            L60:
                androidx.compose.animation.AnimatedContentKt$AnimatedContent$6$1$5$1$1 r5 = new androidx.compose.animation.AnimatedContentKt$AnimatedContent$6$1$5$1$1
                r5.<init>(r1, r3, r4)
                r8.updateRememberedValue(r5)
            L68:
                nl3 r5 = (defpackage.nl3) r5
                r9 = r9 & 14
                androidx.compose.runtime.EffectsKt.DisposableEffect(r7, r5, r8, r9)
                androidx.compose.animation.AnimatedContentTransitionScopeImpl<S> r9 = r6.$rootScope
                androidx.collection.MutableScatterMap r9 = r9.getTargetSizeMap$animation()
                S r0 = r6.$stateForContent
                r7.getClass()
                r1 = r7
                androidx.compose.animation.AnimatedVisibilityScopeImpl r1 = (androidx.compose.animation.AnimatedVisibilityScopeImpl) r1
                androidx.compose.runtime.MutableState r1 = r1.getTargetSize$animation()
                r9.set(r0, r1)
                java.lang.Object r9 = r8.rememberedValue()
                androidx.compose.runtime.Composer$Companion r0 = androidx.compose.runtime.Composer.Companion
                java.lang.Object r0 = r0.getEmpty()
                if (r9 != r0) goto L98
                androidx.compose.animation.AnimatedContentScopeImpl r9 = new androidx.compose.animation.AnimatedContentScopeImpl
                r9.<init>(r7)
                r8.updateRememberedValue(r9)
            L98:
                androidx.compose.animation.AnimatedContentScopeImpl r9 = (androidx.compose.animation.AnimatedContentScopeImpl) r9
                fm3<androidx.compose.animation.AnimatedContentScope, S, androidx.compose.runtime.Composer, java.lang.Integer, j59> r7 = r6.$content
                S r6 = r6.$stateForContent
                java.lang.Integer r0 = java.lang.Integer.valueOf(r2)
                r7.invoke(r9, r6, r8, r0)
                boolean r6 = androidx.compose.runtime.ComposerKt.isTraceInProgress()
                if (r6 == 0) goto Lae
                androidx.compose.runtime.ComposerKt.traceEventEnd()
            Lae:
                return
            Laf:
                r8.skipToGroupEnd()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.AnimatedContentKt$AnimatedContent$6$1.AnonymousClass5.invoke(androidx.compose.animation.AnimatedVisibilityScope, androidx.compose.runtime.Composer, int):void");
        }

        @Override // defpackage.dm3
        public /* bridge */ /* synthetic */ j59 invoke(AnimatedVisibilityScope animatedVisibilityScope, Composer composer, Integer num) {
            invoke(animatedVisibilityScope, composer, num.intValue());
            return j59.a;
        }
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
        invoke(composer, num.intValue());
        return j59.a;
    }
}
