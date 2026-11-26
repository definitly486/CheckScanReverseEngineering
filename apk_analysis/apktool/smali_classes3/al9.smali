.class public final synthetic Lal9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/work/impl/model/WorkSpecDao_Impl;

.field public final synthetic c:Landroidx/sqlite/SQLiteConnection;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lal9;->b:Landroidx/work/impl/model/WorkSpecDao_Impl;

    iput-object p2, p0, Lal9;->c:Landroidx/sqlite/SQLiteConnection;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lal9;->c:Landroidx/sqlite/SQLiteConnection;

    check-cast p1, Landroidx/collection/ArrayMap;

    iget-object p0, p0, Lal9;->b:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {p0, v0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->n(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/sqlite/SQLiteConnection;Landroidx/collection/ArrayMap;)Lj59;

    move-result-object p0

    return-object p0
.end method
