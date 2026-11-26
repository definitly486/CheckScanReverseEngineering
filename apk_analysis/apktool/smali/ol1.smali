.class public final synthetic Lol1;
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

    iput p1, p0, Lol1;->b:I

    iput-object p2, p0, Lol1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lol1;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lol1;->b:I

    iget-object v1, p0, Lol1;->d:Ljava/lang/Object;

    iget-object p0, p0, Lol1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/b76;

    check-cast v1, Lnl3;

    check-cast p1, Lyads/u66;

    invoke-static {p0, v1, p1}, Lyads/b76;->a(Lyads/b76;Lnl3;Lyads/u66;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/work/impl/model/WorkNameDao_Impl;

    check-cast v1, Landroidx/work/impl/model/WorkName;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {p0, v1, p1}, Landroidx/work/impl/model/WorkNameDao_Impl;->c(Landroidx/work/impl/model/WorkNameDao_Impl;Landroidx/work/impl/model/WorkName;Landroidx/sqlite/SQLiteConnection;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/runtime/MutableState;

    check-cast v1, Lnl3;

    check-cast p1, Landroidx/compose/ui/text/TextLayoutResult;

    invoke-static {p0, v1, p1}, Landroidx/compose/foundation/text/ClickableTextKt;->c(Landroidx/compose/runtime/MutableState;Lnl3;Landroidx/compose/ui/text/TextLayoutResult;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
