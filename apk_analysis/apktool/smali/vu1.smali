.class public final synthetic Lvu1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 7
    iput p1, p0, Lvu1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lod6;)V
    .locals 0

    const/4 p1, 0x4

    iput p1, p0, Lvu1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lvu1;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Landroidx/compose/foundation/text/selection/SelectionContainerKt;->e()Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->f()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance p0, Lce6;

    const-string v0, "PostHogReplayThread"

    invoke-direct {p0, v0}, Lce6;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->o()Lj59;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {}, Landroidx/core/backported/fixes/KnownIssue;->a()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {}, Landroidx/compose/material3/DateInputKt;->a()Landroidx/compose/runtime/MutableState;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {}, Landroidx/compose/runtime/ComputedProvidableCompositionLocal;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
