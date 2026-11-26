.class public final synthetic Lyf1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ljg1;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljg1;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyf1;->b:Ljg1;

    iput-object p2, p0, Lyf1;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    iget-object v0, p0, Lyf1;->b:Ljg1;

    iget-object v0, v0, Ljg1;->b:Lhg1;

    iget-object p0, p0, Lyf1;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p0}, Landroidx/room/EntityInsertAdapter;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Iterable;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
