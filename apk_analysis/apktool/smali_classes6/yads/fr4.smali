.class public final Lyads/fr4;
.super Landroidx/transition/TransitionListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lyads/gr4;

.field public final synthetic b:Lyads/r16;

.field public final synthetic c:Landroidx/transition/TransitionValues;


# direct methods
.method public constructor <init>(Lyads/gr4;Lyads/r16;Landroidx/transition/TransitionValues;)V
    .locals 0

    iput-object p1, p0, Lyads/fr4;->a:Lyads/gr4;

    iput-object p2, p0, Lyads/fr4;->b:Lyads/r16;

    iput-object p3, p0, Lyads/fr4;->c:Landroidx/transition/TransitionValues;

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 1

    iget-object p1, p0, Lyads/fr4;->b:Lyads/r16;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lyads/fr4;->c:Landroidx/transition/TransitionValues;

    iget-object v0, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-interface {p1, v0}, Lyads/r16;->a(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lyads/fr4;->a:Lyads/gr4;

    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method
