.class public final synthetic Lby0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lby0;->b:I

    iput-object p1, p0, Lby0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lby0;->b:I

    iget-object p0, p0, Lby0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/ig6;

    check-cast p1, Lyads/rh0;

    invoke-static {p0, p1}, Lyads/ig6;->a(Lyads/ig6;Lyads/rh0;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lll3;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/material3/SheetState;->c(Lll3;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/paging/CachedPageEventFlow;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p0, p1}, Landroidx/paging/CachedPageEventFlow;->a(Landroidx/paging/CachedPageEventFlow;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
