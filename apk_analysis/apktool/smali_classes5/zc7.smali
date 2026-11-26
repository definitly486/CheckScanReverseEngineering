.class public final synthetic Lzc7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lzc7;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget p0, p0, Lzc7;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lne4;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lnq7;->a:Ltp7;

    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Liq7;->e(Ljq7;Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lvc6;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Lvc6;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, p0, v0}, Liq7;->a(Lne4;Ljava/util/ArrayList;Lll3;)Ldf4;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    check-cast p2, Landroidx/compose/ui/text/SpanStyle;

    invoke-static {p1, p2}, Landroidx/compose/ui/text/SaversKt;->j(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/ui/text/SpanStyle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
