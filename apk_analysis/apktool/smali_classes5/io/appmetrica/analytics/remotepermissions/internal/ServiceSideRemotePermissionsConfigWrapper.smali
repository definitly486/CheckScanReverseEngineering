.class public final Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper$Companion;


# instance fields
.field private final a:Lio/appmetrica/analytics/remotepermissions/impl/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper$Companion;-><init>(Ljh2;)V

    sput-object v0, Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper;->Companion:Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper$Companion;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/remotepermissions/impl/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper;->a:Lio/appmetrica/analytics/remotepermissions/impl/e;

    return-void
.end method


# virtual methods
.method public final getConfig$remote_permissions_release()Lio/appmetrica/analytics/remotepermissions/impl/e;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/remotepermissions/internal/ServiceSideRemotePermissionsConfigWrapper;->a:Lio/appmetrica/analytics/remotepermissions/impl/e;

    return-object p0
.end method
