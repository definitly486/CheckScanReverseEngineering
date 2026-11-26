.class public final synthetic Lsh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lsh0;->b:I

    iput-object p2, p0, Lsh0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lsh0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lsh0;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lsh0;->c:Ljava/lang/Object;

    check-cast v0, Lyads/mv1;

    iget-object p0, p0, Lsh0;->d:Ljava/lang/Object;

    check-cast p0, Lyads/i05;

    check-cast p1, Lyads/yg2;

    invoke-static {v0, p0, p1}, Lyads/rg2;->a(Lyads/mv1;Lyads/i05;Lyads/yg2;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lsh0;->c:Ljava/lang/Object;

    check-cast v0, Ldf4;

    iget-object p0, p0, Lsh0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/savedstate/serialization/SavedStateConfiguration;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {v0, p0, p1}, Landroidx/compose/runtime/saveable/serialization/SerializableSaverKt;->a(Ldf4;Landroidx/savedstate/serialization/SavedStateConfiguration;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lsh0;->c:Ljava/lang/Object;

    check-cast v0, Ly22;

    iget-object p0, p0, Lsh0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/material3/TooltipState;

    check-cast p1, Landroidx/compose/ui/focus/FocusState;

    invoke-static {v0, p0, p1}, Landroidx/compose/material3/internal/BasicTooltipKt;->e(Ly22;Landroidx/compose/material3/TooltipState;Landroidx/compose/ui/focus/FocusState;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
