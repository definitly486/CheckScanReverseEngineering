.class public final Lio/appmetrica/analytics/screenshot/internal/ClientSideScreenshotConfigWrapper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/screenshot/internal/ClientSideScreenshotConfigWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/screenshot/internal/ClientSideScreenshotConfigWrapper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final toWrapper$screenshot_release(Lio/appmetrica/analytics/screenshot/impl/k;)Lio/appmetrica/analytics/screenshot/internal/ClientSideScreenshotConfigWrapper;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/screenshot/internal/ClientSideScreenshotConfigWrapper;

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/screenshot/internal/ClientSideScreenshotConfigWrapper;-><init>(Lio/appmetrica/analytics/screenshot/impl/k;)V

    return-object p0
.end method
