.class public final synthetic Lxk9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Landroidx/work/impl/model/WorkSpecDao_Impl;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lxk9;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxk9;->c:Ljava/lang/String;

    iput-object p2, p0, Lxk9;->d:Ljava/lang/Object;

    iput-object p3, p0, Lxk9;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lyads/pp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lxk9;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxk9;->d:Ljava/lang/Object;

    iput-object p2, p0, Lxk9;->c:Ljava/lang/String;

    iput-object p3, p0, Lxk9;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lxk9;->b:I

    iget-object v1, p0, Lxk9;->e:Ljava/lang/Object;

    iget-object v2, p0, Lxk9;->c:Ljava/lang/String;

    iget-object p0, p0, Lxk9;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/pp;

    check-cast v1, Ljava/lang/String;

    check-cast p1, Lyads/ds;

    invoke-static {p0, v2, v1, p1}, Lyads/pp;->a(Lyads/pp;Ljava/lang/String;Ljava/lang/String;Lyads/ds;)Lyads/cp;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Ljava/util/List;

    check-cast v1, Landroidx/work/impl/model/WorkSpecDao_Impl;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {v2, p0, v1, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->L(Ljava/lang/String;Ljava/util/List;Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
