.class public final synthetic Lx16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lx16;->b:I

    iput-object p2, p0, Lx16;->c:Ljava/lang/Object;

    iput-object p3, p0, Lx16;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lx16;->b:I

    iget-object v1, p0, Lx16;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasTransientState()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lx16;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/pager/PagerState;

    check-cast v1, Ly22;

    invoke-static {p0, v1}, Landroidx/compose/foundation/pager/PagerKt;->g(Landroidx/compose/foundation/pager/PagerState;Ly22;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
