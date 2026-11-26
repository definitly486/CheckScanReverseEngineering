.class public final synthetic Lzb5;
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

    iput p1, p0, Lzb5;->b:I

    iput-object p2, p0, Lzb5;->c:Ljava/lang/Object;

    iput-object p3, p0, Lzb5;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lzb5;->b:I

    iget-object v1, p0, Lzb5;->d:Ljava/lang/Object;

    iget-object p0, p0, Lzb5;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/s22;

    check-cast v1, Lyads/d22;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p0, v1, v2, v3}, Lyads/d22;->a(Lyads/s22;Lyads/d22;J)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/navigation/NavDestination;

    check-cast v1, Landroidx/navigation/NavController;

    check-cast p1, Landroidx/navigation/NavOptionsBuilder;

    invoke-static {p0, v1, p1}, Landroidx/navigation/NavController;->c(Landroidx/navigation/NavDestination;Landroidx/navigation/NavController;Landroidx/navigation/NavOptionsBuilder;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Ljava/lang/String;

    check-cast v1, Lll3;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-static {p0, v1, p1}, Landroidx/compose/material3/ModalBottomSheetKt;->m(Ljava/lang/String;Lll3;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
