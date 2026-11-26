.class public final Lio/appmetrica/analytics/screenshot/internal/ClientSideScreenshotConfigWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/screenshot/internal/ClientSideScreenshotConfigWrapper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/appmetrica/analytics/screenshot/internal/ClientSideScreenshotConfigWrapper$Companion;


# instance fields
.field private final a:Lio/appmetrica/analytics/screenshot/impl/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/screenshot/internal/ClientSideScreenshotConfigWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/screenshot/internal/ClientSideScreenshotConfigWrapper$Companion;-><init>(Ljh2;)V

    sput-object v0, Lio/appmetrica/analytics/screenshot/internal/ClientSideScreenshotConfigWrapper;->Companion:Lio/appmetrica/analytics/screenshot/internal/ClientSideScreenshotConfigWrapper$Companion;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/screenshot/impl/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/internal/ClientSideScreenshotConfigWrapper;->a:Lio/appmetrica/analytics/screenshot/impl/k;

    return-void
.end method


# virtual methods
.method public final getConfig$screenshot_release()Lio/appmetrica/analytics/screenshot/impl/k;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/internal/ClientSideScreenshotConfigWrapper;->a:Lio/appmetrica/analytics/screenshot/impl/k;

    return-object p0
.end method
