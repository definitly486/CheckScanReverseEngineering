.class public final Lyads/we;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ue;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILyads/c42;Lyads/d42;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/we;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyads/we;->c:Ljava/util/HashMap;

    new-instance v1, Lyads/se;

    move-object v6, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lyads/se;-><init>(Landroid/content/Context;Ljava/lang/String;ILyads/c42;Lyads/we;Lyads/d42;)V

    new-instance p0, Lyads/ue;

    invoke-direct {p0, v1}, Lyads/ue;-><init>(Lyads/se;)V

    iput-object p0, v6, Lyads/we;->a:Lyads/ue;

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)Lyads/te;
    .locals 4

    new-instance v0, Lyads/te;

    iget-object v1, p0, Lyads/we;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lyads/we;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/ve;

    if-nez v2, :cond_0

    new-instance v2, Lyads/ve;

    invoke-direct {v2}, Lyads/ve;-><init>()V

    iget-object v3, p0, Lyads/we;->c:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    invoke-direct {v0, p0, p1}, Lyads/te;-><init>(Lyads/we;Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0

    :goto_1
    monitor-exit v1

    throw p0
.end method
