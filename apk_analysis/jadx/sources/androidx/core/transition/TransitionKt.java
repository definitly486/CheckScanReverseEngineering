package androidx.core.transition;

import android.transition.Transition;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class TransitionKt {
    public static final Transition.TransitionListener addListener(Transition transition, nl3<? super Transition, j59> nl3Var, nl3<? super Transition, j59> nl3Var2, nl3<? super Transition, j59> nl3Var3, nl3<? super Transition, j59> nl3Var4, nl3<? super Transition, j59> nl3Var5) {
        TransitionKt$addListener$listener$1 transitionKt$addListener$listener$1 = new TransitionKt$addListener$listener$1(nl3Var, nl3Var4, nl3Var5, nl3Var3, nl3Var2);
        transition.addListener(transitionKt$addListener$listener$1);
        return transitionKt$addListener$listener$1;
    }

    public static /* synthetic */ Transition.TransitionListener addListener$default(Transition transition, nl3 nl3Var, nl3 nl3Var2, nl3 nl3Var3, nl3 nl3Var4, nl3 nl3Var5, int i, Object obj) {
        if ((i & 1) != 0) {
            nl3Var = new nl3<Transition, j59>() { // from class: androidx.core.transition.TransitionKt.addListener.1
                @Override // defpackage.nl3
                public /* bridge */ /* synthetic */ j59 invoke(Transition transition2) {
                    invoke2(transition2);
                    return j59.a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Transition transition2) {
                }
            };
        }
        if ((i & 2) != 0) {
            nl3Var2 = new nl3<Transition, j59>() { // from class: androidx.core.transition.TransitionKt.addListener.2
                @Override // defpackage.nl3
                public /* bridge */ /* synthetic */ j59 invoke(Transition transition2) {
                    invoke2(transition2);
                    return j59.a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Transition transition2) {
                }
            };
        }
        nl3 nl3Var6 = nl3Var2;
        if ((i & 4) != 0) {
            nl3Var3 = new nl3<Transition, j59>() { // from class: androidx.core.transition.TransitionKt.addListener.3
                @Override // defpackage.nl3
                public /* bridge */ /* synthetic */ j59 invoke(Transition transition2) {
                    invoke2(transition2);
                    return j59.a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Transition transition2) {
                }
            };
        }
        if ((i & 8) != 0) {
            nl3Var4 = new nl3<Transition, j59>() { // from class: androidx.core.transition.TransitionKt.addListener.4
                @Override // defpackage.nl3
                public /* bridge */ /* synthetic */ j59 invoke(Transition transition2) {
                    invoke2(transition2);
                    return j59.a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Transition transition2) {
                }
            };
        }
        if ((i & 16) != 0) {
            nl3Var5 = new nl3<Transition, j59>() { // from class: androidx.core.transition.TransitionKt.addListener.5
                @Override // defpackage.nl3
                public /* bridge */ /* synthetic */ j59 invoke(Transition transition2) {
                    invoke2(transition2);
                    return j59.a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Transition transition2) {
                }
            };
        }
        TransitionKt$addListener$listener$1 transitionKt$addListener$listener$1 = new TransitionKt$addListener$listener$1(nl3Var, nl3Var4, nl3Var5, nl3Var3, nl3Var6);
        transition.addListener(transitionKt$addListener$listener$1);
        return transitionKt$addListener$listener$1;
    }

    public static final Transition.TransitionListener doOnCancel(Transition transition, final nl3<? super Transition, j59> nl3Var) {
        Transition.TransitionListener transitionListener = new Transition.TransitionListener() { // from class: androidx.core.transition.TransitionKt$doOnCancel$$inlined$addListener$default$1
            @Override // android.transition.Transition.TransitionListener
            public void onTransitionCancel(Transition transition2) {
                nl3Var.invoke(transition2);
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionEnd(Transition transition2) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionPause(Transition transition2) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionResume(Transition transition2) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionStart(Transition transition2) {
            }
        };
        transition.addListener(transitionListener);
        return transitionListener;
    }

    public static final Transition.TransitionListener doOnEnd(Transition transition, final nl3<? super Transition, j59> nl3Var) {
        Transition.TransitionListener transitionListener = new Transition.TransitionListener() { // from class: androidx.core.transition.TransitionKt$doOnEnd$$inlined$addListener$default$1
            @Override // android.transition.Transition.TransitionListener
            public void onTransitionCancel(Transition transition2) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionEnd(Transition transition2) {
                nl3Var.invoke(transition2);
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionPause(Transition transition2) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionResume(Transition transition2) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionStart(Transition transition2) {
            }
        };
        transition.addListener(transitionListener);
        return transitionListener;
    }

    public static final Transition.TransitionListener doOnPause(Transition transition, final nl3<? super Transition, j59> nl3Var) {
        Transition.TransitionListener transitionListener = new Transition.TransitionListener() { // from class: androidx.core.transition.TransitionKt$doOnPause$$inlined$addListener$default$1
            @Override // android.transition.Transition.TransitionListener
            public void onTransitionCancel(Transition transition2) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionEnd(Transition transition2) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionPause(Transition transition2) {
                nl3Var.invoke(transition2);
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionResume(Transition transition2) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionStart(Transition transition2) {
            }
        };
        transition.addListener(transitionListener);
        return transitionListener;
    }

    public static final Transition.TransitionListener doOnResume(Transition transition, final nl3<? super Transition, j59> nl3Var) {
        Transition.TransitionListener transitionListener = new Transition.TransitionListener() { // from class: androidx.core.transition.TransitionKt$doOnResume$$inlined$addListener$default$1
            @Override // android.transition.Transition.TransitionListener
            public void onTransitionCancel(Transition transition2) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionEnd(Transition transition2) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionPause(Transition transition2) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionResume(Transition transition2) {
                nl3Var.invoke(transition2);
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionStart(Transition transition2) {
            }
        };
        transition.addListener(transitionListener);
        return transitionListener;
    }

    public static final Transition.TransitionListener doOnStart(Transition transition, final nl3<? super Transition, j59> nl3Var) {
        Transition.TransitionListener transitionListener = new Transition.TransitionListener() { // from class: androidx.core.transition.TransitionKt$doOnStart$$inlined$addListener$default$1
            @Override // android.transition.Transition.TransitionListener
            public void onTransitionCancel(Transition transition2) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionEnd(Transition transition2) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionPause(Transition transition2) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionResume(Transition transition2) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionStart(Transition transition2) {
                nl3Var.invoke(transition2);
            }
        };
        transition.addListener(transitionListener);
        return transitionListener;
    }
}
