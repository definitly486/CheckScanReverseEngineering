.class public final synthetic Lof;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Lnl3;Lll3;Lnl3;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lof;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lof;->c:Ljava/lang/Object;

    iput-object p4, p0, Lof;->e:Ljava/lang/Object;

    iput-object p1, p0, Lof;->f:Ljava/lang/Object;

    iput-object p2, p0, Lof;->g:Ljava/lang/Object;

    iput-object p5, p0, Lof;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lyads/jk1;Lyads/bn1;Lyads/as2;Lyads/fs2;Lyads/as2;)V
    .locals 1

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lof;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lof;->c:Ljava/lang/Object;

    iput-object p2, p0, Lof;->d:Ljava/lang/Object;

    iput-object p3, p0, Lof;->e:Ljava/lang/Object;

    iput-object p4, p0, Lof;->f:Ljava/lang/Object;

    iput-object p5, p0, Lof;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lof;->b:I

    iget-object v1, p0, Lof;->g:Ljava/lang/Object;

    iget-object v2, p0, Lof;->f:Ljava/lang/Object;

    iget-object v3, p0, Lof;->e:Ljava/lang/Object;

    iget-object v4, p0, Lof;->d:Ljava/lang/Object;

    iget-object p0, p0, Lof;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v5, p0

    check-cast v5, Lyads/jk1;

    move-object v6, v4

    check-cast v6, Lyads/bn1;

    move-object v7, v3

    check-cast v7, Lyads/as2;

    move-object v8, v2

    check-cast v8, Lyads/fs2;

    move-object v9, v1

    check-cast v9, Lyads/as2;

    move-object v10, p1

    invoke-static/range {v5 .. v10}, Lyads/jk1;->a(Lyads/jk1;Lyads/bn1;Lyads/as2;Lyads/fs2;Lyads/as2;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    move-object v5, p1

    move-object v0, p0

    check-cast v0, Lnl3;

    check-cast v3, Lll3;

    check-cast v2, Landroidx/compose/animation/core/AnimationSpec;

    check-cast v1, Landroidx/compose/animation/core/DecayAnimationSpec;

    check-cast v4, Lnl3;

    move-object v11, v3

    move-object v3, v1

    move-object v1, v11

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/AnchoredDraggableState$Companion;->h(Lnl3;Lll3;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Lnl3;Ljava/lang/Object;)Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
