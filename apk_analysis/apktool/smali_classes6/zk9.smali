.class public final synthetic Lzk9;
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

    iput p1, p0, Lzk9;->b:I

    iput-object p2, p0, Lzk9;->c:Ljava/lang/Object;

    iput-object p3, p0, Lzk9;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lzk9;->b:I

    iget-object v1, p0, Lzk9;->d:Ljava/lang/Object;

    iget-object p0, p0, Lzk9;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/ii1;

    check-cast v1, Lyads/yi1;

    check-cast p1, Lyads/vi1;

    invoke-static {p0, v1, p1}, Lyads/ii1;->a(Lyads/ii1;Lyads/yi1;Lyads/vi1;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Ljava/lang/String;

    check-cast v1, Landroidx/work/impl/model/WorkSpecDao_Impl;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {p0, v1, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->Q(Ljava/lang/String;Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
