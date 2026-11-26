package androidx.core.animation;

import android.animation.Animator;
import defpackage.j59;
import defpackage.mi;
import defpackage.ni;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class AnimatorKt {
    public static final Animator.AnimatorListener addListener(Animator animator, nl3<? super Animator, j59> nl3Var, nl3<? super Animator, j59> nl3Var2, nl3<? super Animator, j59> nl3Var3, nl3<? super Animator, j59> nl3Var4) {
        AnimatorKt$addListener$listener$1 animatorKt$addListener$listener$1 = new AnimatorKt$addListener$listener$1(nl3Var4, nl3Var, nl3Var3, nl3Var2);
        animator.addListener(animatorKt$addListener$listener$1);
        return animatorKt$addListener$listener$1;
    }

    public static /* synthetic */ Animator.AnimatorListener addListener$default(Animator animator, nl3 nl3Var, nl3 nl3Var2, nl3 nl3Var3, nl3 nl3Var4, int i, Object obj) {
        if ((i & 1) != 0) {
            nl3Var = new nl3<Animator, j59>() { // from class: androidx.core.animation.AnimatorKt.addListener.1
                @Override // defpackage.nl3
                public /* bridge */ /* synthetic */ j59 invoke(Animator animator2) {
                    invoke2(animator2);
                    return j59.a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Animator animator2) {
                }
            };
        }
        if ((i & 2) != 0) {
            nl3Var2 = new nl3<Animator, j59>() { // from class: androidx.core.animation.AnimatorKt.addListener.2
                @Override // defpackage.nl3
                public /* bridge */ /* synthetic */ j59 invoke(Animator animator2) {
                    invoke2(animator2);
                    return j59.a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Animator animator2) {
                }
            };
        }
        if ((i & 4) != 0) {
            nl3Var3 = new nl3<Animator, j59>() { // from class: androidx.core.animation.AnimatorKt.addListener.3
                @Override // defpackage.nl3
                public /* bridge */ /* synthetic */ j59 invoke(Animator animator2) {
                    invoke2(animator2);
                    return j59.a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Animator animator2) {
                }
            };
        }
        if ((i & 8) != 0) {
            nl3Var4 = new nl3<Animator, j59>() { // from class: androidx.core.animation.AnimatorKt.addListener.4
                @Override // defpackage.nl3
                public /* bridge */ /* synthetic */ j59 invoke(Animator animator2) {
                    invoke2(animator2);
                    return j59.a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Animator animator2) {
                }
            };
        }
        AnimatorKt$addListener$listener$1 animatorKt$addListener$listener$1 = new AnimatorKt$addListener$listener$1(nl3Var4, nl3Var, nl3Var3, nl3Var2);
        animator.addListener(animatorKt$addListener$listener$1);
        return animatorKt$addListener$listener$1;
    }

    public static final Animator.AnimatorPauseListener addPauseListener(Animator animator, final nl3<? super Animator, j59> nl3Var, final nl3<? super Animator, j59> nl3Var2) {
        Animator.AnimatorPauseListener animatorPauseListener = new Animator.AnimatorPauseListener() { // from class: androidx.core.animation.AnimatorKt$addPauseListener$listener$1
            @Override // android.animation.Animator.AnimatorPauseListener
            public void onAnimationPause(Animator animator2) {
                nl3Var2.invoke(animator2);
            }

            @Override // android.animation.Animator.AnimatorPauseListener
            public void onAnimationResume(Animator animator2) {
                nl3Var.invoke(animator2);
            }
        };
        animator.addPauseListener(animatorPauseListener);
        return animatorPauseListener;
    }

    public static /* synthetic */ Animator.AnimatorPauseListener addPauseListener$default(Animator animator, nl3 nl3Var, nl3 nl3Var2, int i, Object obj) {
        if ((i & 1) != 0) {
            nl3Var = new mi(1);
        }
        if ((i & 2) != 0) {
            nl3Var2 = new ni(1);
        }
        return addPauseListener(animator, nl3Var, nl3Var2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 addPauseListener$lambda$0(Animator animator) {
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 addPauseListener$lambda$1(Animator animator) {
        return j59.a;
    }

    public static final Animator.AnimatorListener doOnCancel(Animator animator, final nl3<? super Animator, j59> nl3Var) {
        Animator.AnimatorListener animatorListener = new Animator.AnimatorListener() { // from class: androidx.core.animation.AnimatorKt$doOnCancel$$inlined$addListener$default$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator2) {
                nl3Var.invoke(animator2);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator2) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator2) {
            }
        };
        animator.addListener(animatorListener);
        return animatorListener;
    }

    public static final Animator.AnimatorListener doOnEnd(Animator animator, final nl3<? super Animator, j59> nl3Var) {
        Animator.AnimatorListener animatorListener = new Animator.AnimatorListener() { // from class: androidx.core.animation.AnimatorKt$doOnEnd$$inlined$addListener$default$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator2) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                nl3Var.invoke(animator2);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator2) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator2) {
            }
        };
        animator.addListener(animatorListener);
        return animatorListener;
    }

    public static final Animator.AnimatorPauseListener doOnPause(Animator animator, nl3<? super Animator, j59> nl3Var) {
        return addPauseListener$default(animator, null, nl3Var, 1, null);
    }

    public static final Animator.AnimatorListener doOnRepeat(Animator animator, final nl3<? super Animator, j59> nl3Var) {
        Animator.AnimatorListener animatorListener = new Animator.AnimatorListener() { // from class: androidx.core.animation.AnimatorKt$doOnRepeat$$inlined$addListener$default$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator2) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator2) {
                nl3Var.invoke(animator2);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator2) {
            }
        };
        animator.addListener(animatorListener);
        return animatorListener;
    }

    public static final Animator.AnimatorPauseListener doOnResume(Animator animator, nl3<? super Animator, j59> nl3Var) {
        return addPauseListener$default(animator, nl3Var, null, 2, null);
    }

    public static final Animator.AnimatorListener doOnStart(Animator animator, final nl3<? super Animator, j59> nl3Var) {
        Animator.AnimatorListener animatorListener = new Animator.AnimatorListener() { // from class: androidx.core.animation.AnimatorKt$doOnStart$$inlined$addListener$default$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator2) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator2) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator2) {
                nl3Var.invoke(animator2);
            }
        };
        animator.addListener(animatorListener);
        return animatorListener;
    }
}
