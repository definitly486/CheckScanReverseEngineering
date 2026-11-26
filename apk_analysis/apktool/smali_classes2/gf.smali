.class public final synthetic Lgf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lgf;->b:I

    iput-object p1, p0, Lgf;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lgf;->b:I

    iget-object p0, p0, Lgf;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->f0(Lyads/nq0;)Lyads/pu5;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/runtime/MutableState;

    invoke-static {p0}, Landroidx/compose/material3/WideNavigationRailKt;->l(Landroidx/compose/runtime/MutableState;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/material3/TimePickerState;

    invoke-static {p0}, Landroidx/compose/material3/TimePickerKt;->j(Landroidx/compose/material3/TimePickerState;)Landroidx/compose/runtime/MutableState;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/animation/core/Animatable;

    invoke-static {p0}, Landroidx/compose/material3/SearchBarKt;->d(Landroidx/compose/animation/core/Animatable;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/activity/ComponentDialog;

    invoke-static {p0}, Landroidx/activity/ComponentDialog;->d(Landroidx/activity/ComponentDialog;)Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/compose/material3/internal/AnchoredDraggableState;

    invoke-static {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->f(Landroidx/compose/material3/internal/AnchoredDraggableState;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
