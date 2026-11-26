.class public final synthetic Lwh0;
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

    iput p1, p0, Lwh0;->b:I

    iput-object p2, p0, Lwh0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lwh0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lwh0;->b:I

    iget-object v1, p0, Lwh0;->d:Ljava/lang/Object;

    iget-object p0, p0, Lwh0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/work/impl/WorkManagerImpl;

    check-cast v1, Landroidx/work/WorkRequest;

    invoke-static {p0, v1}, Landroidx/work/impl/WorkerUpdater;->c(Landroidx/work/impl/WorkManagerImpl;Landroidx/work/WorkRequest;)Landroidx/work/WorkManager$UpdateResult;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Ljava/lang/String;

    check-cast v1, Laj7;

    sget-object v0, Lba6$b;->a:Lba6$b;

    const/4 v2, 0x0

    new-array v2, v2, [Lmp7;

    new-instance v3, Lvb5;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Lvb5;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v0, v2, v3}, Lrp7;->e(Ljava/lang/String;Lsp7;[Lmp7;Lnl3;)Lop7;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Ly22;

    check-cast v1, Landroidx/compose/animation/core/Animatable;

    invoke-static {p0, v1}, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride;->e(Ly22;Landroidx/compose/animation/core/Animatable;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Ly22;

    check-cast v1, Landroidx/compose/material3/TooltipState;

    invoke-static {p0, v1}, Landroidx/compose/material3/internal/BasicTooltipKt;->c(Ly22;Landroidx/compose/material3/TooltipState;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
