.class public final synthetic Lrm4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lcm3;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcm3;III)V
    .locals 0

    iput p7, p0, Lrm4;->b:I

    iput-object p1, p0, Lrm4;->e:Ljava/lang/Object;

    iput-object p2, p0, Lrm4;->f:Ljava/lang/Object;

    iput-object p3, p0, Lrm4;->g:Ljava/lang/Object;

    iput-object p4, p0, Lrm4;->h:Lcm3;

    iput p5, p0, Lrm4;->c:I

    iput p6, p0, Lrm4;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lrm4;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lrm4;->g:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroidx/lifecycle/LifecycleOwner;

    iget-object v0, p0, Lrm4;->h:Lcm3;

    move-object v4, v0

    check-cast v4, Lnl3;

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v1, p0, Lrm4;->e:Ljava/lang/Object;

    iget-object v2, p0, Lrm4;->f:Ljava/lang/Object;

    iget v5, p0, Lrm4;->c:I

    iget v6, p0, Lrm4;->d:I

    invoke-static/range {v1 .. v8}, Landroidx/lifecycle/compose/LifecycleEffectKt;->m(Ljava/lang/Object;Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Lnl3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lrm4;->e:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lll3;

    iget-object v0, p0, Lrm4;->f:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/Modifier;

    iget-object v0, p0, Lrm4;->g:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    iget-object v0, p0, Lrm4;->h:Lcm3;

    move-object v4, v0

    check-cast v4, Lbm3;

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v5, p0, Lrm4;->c:I

    iget v6, p0, Lrm4;->d:I

    invoke-static/range {v1 .. v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->c(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
