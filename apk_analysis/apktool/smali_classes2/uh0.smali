.class public final synthetic Luh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Luh0;->b:I

    iput-object p1, p0, Luh0;->c:Ljava/lang/Object;

    iput-object p2, p0, Luh0;->d:Ljava/lang/Object;

    iput-object p3, p0, Luh0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Luh0;->b:I

    iget-object v1, p0, Luh0;->e:Ljava/lang/Object;

    iget-object v2, p0, Luh0;->d:Ljava/lang/Object;

    iget-object p0, p0, Luh0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/yo1;

    check-cast v2, Lyads/yr2;

    check-cast v1, Lyads/fs2;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p0, v2, v1, v3, v4}, Lyads/yo1;->a(Lyads/yo1;Lyads/yr2;Lyads/fs2;J)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Ljava/lang/String;

    check-cast v2, Ly22;

    check-cast v1, Landroidx/compose/material3/TooltipState;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-static {p0, v2, v1, p1}, Landroidx/compose/material3/internal/BasicTooltipKt;->d(Ljava/lang/String;Ly22;Landroidx/compose/material3/TooltipState;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
