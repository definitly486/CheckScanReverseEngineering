.class public final synthetic Lbu6;
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

    iput p1, p0, Lbu6;->b:I

    iput-object p2, p0, Lbu6;->c:Ljava/lang/Object;

    iput-object p3, p0, Lbu6;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lbu6;->b:I

    iget-object v1, p0, Lbu6;->d:Ljava/lang/Object;

    iget-object p0, p0, Lbu6;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lnl3;

    check-cast v1, Lyads/iu3;

    check-cast p1, Lyads/hd3;

    invoke-static {p0, v1, p1}, Lyads/jv1;->a(Lnl3;Lyads/fu3;Lyads/hd3;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lku6;

    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    check-cast p1, Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, v1, p1}, Lku6;->l(Landroidx/sqlite/SQLiteConnection;Landroidx/collection/LongSparseArray;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
