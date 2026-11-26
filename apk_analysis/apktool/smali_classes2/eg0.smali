.class public final synthetic Leg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Leg0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Leg0;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lyads/lh1;->a(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Landroidx/compose/material3/TimePickerStateImpl$Companion;->b(Ljava/util/List;)Landroidx/compose/material3/TimePickerStateImpl;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/ui/text/TextLayoutResult;

    invoke-static {p1}, Landroidx/compose/material3/TextKt;->h(Landroidx/compose/ui/text/TextLayoutResult;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;

    invoke-static {p1}, Landroidx/compose/foundation/text/input/internal/TextFieldKeyEventHandler;->b(Landroidx/compose/foundation/text/input/internal/selection/SelectionMovementDeletionContext;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Landroidx/compose/ui/text/TextLayoutResult;

    invoke-static {p1}, Landroidx/compose/foundation/text/BasicTextFieldKt;->o(Landroidx/compose/ui/text/TextLayoutResult;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
