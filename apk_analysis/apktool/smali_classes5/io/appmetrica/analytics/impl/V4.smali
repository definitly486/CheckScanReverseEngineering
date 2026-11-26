.class public final Lio/appmetrica/analytics/impl/V4;
.super Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/U4;

.field public final b:Lio/appmetrica/analytics/impl/T4;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/U4;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/U4;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/V4;->a:Lio/appmetrica/analytics/impl/U4;

    new-instance v0, Lio/appmetrica/analytics/impl/T4;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/T4;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/V4;->b:Lio/appmetrica/analytics/impl/T4;

    return-void
.end method


# virtual methods
.method public final runScript(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/V4;->a:Lio/appmetrica/analytics/impl/U4;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/U4;->runScript(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/V4;->b:Lio/appmetrica/analytics/impl/T4;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/T4;->runScript(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
