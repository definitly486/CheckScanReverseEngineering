.class public final synthetic Lgj7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lnl3;


# direct methods
.method public synthetic constructor <init>(Lnl3;I)V
    .locals 0

    iput p2, p0, Lgj7;->b:I

    iput-object p1, p0, Lgj7;->c:Lnl3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lgj7;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lgj7;->c:Lnl3;

    invoke-static {p0, v0, v1}, Landroidx/compose/animation/core/SuspendAnimationKt;->e(Lnl3;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lgj7;->c:Lnl3;

    check-cast p1, Landroidx/compose/ui/focus/FocusState;

    invoke-static {p0, p1}, Landroidx/compose/material3/SearchBarDefaults;->l(Lnl3;Landroidx/compose/ui/focus/FocusState;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
