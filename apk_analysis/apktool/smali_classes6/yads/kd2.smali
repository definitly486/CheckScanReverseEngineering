.class public final Lyads/kd2;
.super Landroidx/transition/TransitionListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/transition/TransitionSet;

.field public final synthetic b:Lyads/ld2;


# direct methods
.method public constructor <init>(Landroidx/transition/TransitionSet;Lyads/ld2;)V
    .locals 0

    iput-object p1, p0, Lyads/kd2;->a:Landroidx/transition/TransitionSet;

    iput-object p2, p0, Lyads/kd2;->b:Lyads/ld2;

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 0

    iget-object p1, p0, Lyads/kd2;->b:Lyads/ld2;

    iget-object p1, p1, Lyads/ld2;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lyads/kd2;->a:Landroidx/transition/TransitionSet;

    invoke-virtual {p1, p0}, Landroidx/transition/TransitionSet;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method
