.class public final synthetic Lsk9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Landroidx/work/impl/model/WorkSpecDao_Impl;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Landroidx/work/impl/model/WorkSpecDao_Impl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk9;->b:Ljava/lang/String;

    iput-object p2, p0, Lsk9;->c:Ljava/util/List;

    iput-object p3, p0, Lsk9;->d:Landroidx/work/impl/model/WorkSpecDao_Impl;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lsk9;->d:Landroidx/work/impl/model/WorkSpecDao_Impl;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    iget-object v1, p0, Lsk9;->b:Ljava/lang/String;

    iget-object p0, p0, Lsk9;->c:Ljava/util/List;

    invoke-static {v1, p0, v0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->K(Ljava/lang/String;Ljava/util/List;Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
