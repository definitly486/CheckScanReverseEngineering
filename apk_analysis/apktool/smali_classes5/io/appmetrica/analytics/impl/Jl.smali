.class public final Lio/appmetrica/analytics/impl/Jl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/M6;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/l7;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/l7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Jl;->a:Lio/appmetrica/analytics/impl/l7;

    return-void
.end method


# virtual methods
.method public final a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Jl;->a:Lio/appmetrica/analytics/impl/l7;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/l7;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 9
    return-void
.end method
