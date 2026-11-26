.class public final Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper$Companion;


# instance fields
.field private final a:Lio/appmetrica/analytics/idsync/impl/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper$Companion;-><init>(Ljh2;)V

    sput-object v0, Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;->Companion:Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper$Companion;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/idsync/impl/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;->a:Lio/appmetrica/analytics/idsync/impl/c;

    return-void
.end method


# virtual methods
.method public final getConfig$id_sync_release()Lio/appmetrica/analytics/idsync/impl/c;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/idsync/internal/IdSyncConfigWrapper;->a:Lio/appmetrica/analytics/idsync/impl/c;

    return-object p0
.end method
