.class public final synthetic Lfu3;
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

    iput p1, p0, Lfu3;->b:I

    iput-object p2, p0, Lfu3;->c:Ljava/lang/Object;

    iput-object p3, p0, Lfu3;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lfu3;->b:I

    iget-object v1, p0, Lfu3;->d:Ljava/lang/Object;

    iget-object p0, p0, Lfu3;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/jj2;

    check-cast v1, Landroid/util/DisplayMetrics;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p0, v1, v2, v3}, Lyads/a91;->a(Lyads/jj2;Landroid/util/DisplayMetrics;J)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/foundation/text/TextLinkScope;

    check-cast v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    invoke-static {p0, v1, p1}, Landroidx/compose/foundation/text/TextLinkScope;->d(Landroidx/compose/foundation/text/TextLinkScope;Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/graphics/GraphicsLayerScope;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lku6;

    check-cast v1, Ltt6;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    iget-object p0, p0, Lku6;->e:Liu6;

    invoke-virtual {p0, p1, v1}, Landroidx/room/EntityInsertAdapter;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_2
    check-cast p0, Lgu3;

    check-cast v1, Leu3;

    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, Lgu3;->c:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
