.class public final synthetic Ln62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ln62;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Ln62;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    invoke-static {p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->c(Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;)Landroidx/compose/ui/text/input/EditCommand;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/material3/SheetValue;

    invoke-static {p1}, Landroidx/compose/material3/SheetDefaultsKt;->b(Landroidx/compose/material3/SheetValue;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->c(J)Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1}, Landroidx/compose/ui/text/SaversKt;->h(Ljava/lang/Object;)Landroidx/compose/ui/text/style/TextAlign;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    invoke-static {p1}, Landroidx/lifecycle/viewmodel/CreationExtrasKt;->a(Landroidx/lifecycle/viewmodel/MutableCreationExtras;)Lj59;

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
