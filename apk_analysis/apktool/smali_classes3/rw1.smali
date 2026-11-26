.class public final synthetic Lrw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lrw1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrw1;->d:Ljava/lang/Object;

    iput-object p2, p0, Lrw1;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lrq5;)V
    .locals 1

    .line 11
    const/4 v0, 0x1

    iput v0, p0, Lrw1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrw1;->c:Ljava/lang/String;

    iput-object p2, p0, Lrw1;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lrw1;->b:I

    iget-object v1, p0, Lrw1;->d:Ljava/lang/Object;

    iget-object p0, p0, Lrw1;->c:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lrq5;

    sget-object v0, Leb8$d;->a:Leb8$d;

    const/4 v2, 0x0

    new-array v3, v2, [Lmp7;

    new-instance v4, Lqq5;

    invoke-direct {v4, v1, v2}, Lqq5;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v0, v3, v4}, Lrp7;->e(Ljava/lang/String;Lsp7;[Lmp7;Lnl3;)Lop7;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast v1, Landroidx/sqlite/SQLiteDriver;

    invoke-static {v1, p0}, Landroidx/room/coroutines/ConnectionPoolImpl;->f(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
