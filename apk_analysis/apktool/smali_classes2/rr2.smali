.class public final synthetic Lrr2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/runtime/State;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/DragHandleColors;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lrr2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrr2;->d:Ljava/lang/Object;

    iput-object p2, p0, Lrr2;->c:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lrr2;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;Landroidx/compose/runtime/State;)V
    .locals 1

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lrr2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrr2;->d:Ljava/lang/Object;

    iput-object p2, p0, Lrr2;->e:Ljava/lang/Object;

    iput-object p3, p0, Lrr2;->c:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lrr2;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lrr2;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    iget-object v1, p0, Lrr2;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/Lifecycle$Event;

    iget-object p0, p0, Lrr2;->c:Landroidx/compose/runtime/State;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-static {v0, v1, p0, p1}, Landroidx/lifecycle/compose/LifecycleEffectKt;->o(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;Landroidx/compose/runtime/State;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lrr2;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/material3/DragHandleColors;

    iget-object v1, p0, Lrr2;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    iget-object p0, p0, Lrr2;->c:Landroidx/compose/runtime/State;

    invoke-static {v0, p0, v1, p1}, Landroidx/compose/material3/DragHandleKt;->a(Landroidx/compose/material3/DragHandleColors;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
