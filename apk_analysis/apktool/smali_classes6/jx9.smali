.class public final synthetic Ljx9;
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

    iput p1, p0, Ljx9;->b:I

    iput-object p2, p0, Ljx9;->c:Ljava/lang/Object;

    iput-object p3, p0, Ljx9;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Ljx9;->b:I

    iget-object v1, p0, Ljx9;->d:Ljava/lang/Object;

    iget-object p0, p0, Ljx9;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/v41;

    check-cast v1, Landroid/view/View;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {p0, v1, v2, v3}, Lyads/v41;->a(Lyads/v41;Landroid/view/View;D)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/hk1;

    check-cast v1, Lnl3;

    check-cast p1, Landroid/text/Editable;

    invoke-static {p0, v1, p1}, Lyads/hk1;->a(Lyads/hk1;Lnl3;Landroid/text/Editable;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
