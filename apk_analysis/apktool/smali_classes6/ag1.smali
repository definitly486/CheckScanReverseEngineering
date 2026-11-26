.class public final synthetic Lag1;
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

    iput p1, p0, Lag1;->b:I

    iput-object p2, p0, Lag1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lag1;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lag1;->b:I

    iget-object v1, p0, Lag1;->d:Ljava/lang/Object;

    iget-object p0, p0, Lag1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/or0;

    check-cast v1, Landroid/view/View;

    check-cast p1, Lyads/jr0;

    invoke-static {p0, v1, p1}, Lyads/or0;->a(Lyads/or0;Landroid/view/View;Lyads/jr0;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/ox;

    check-cast v1, Lyads/kx;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p0, v1, p1}, Lyads/kx;->a(Lyads/ox;Lyads/kx;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lyads/s03;

    check-cast v1, Lyads/m24;

    check-cast p1, Lyads/q74;

    invoke-static {p0, v1, p1}, Lcom/monetization/ads/mediation/appopenad/c;->a(Lyads/s03;Lyads/m24;Lyads/q74;)Lcom/monetization/ads/mediation/appopenad/a;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    const-string v0, "UPDATE cheque_requests SET status = ? WHERE qrCode = ?"

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p1

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    const/4 p0, 0x2

    if-nez v1, :cond_0

    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {p1, p0, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object p0

    :goto_1
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
