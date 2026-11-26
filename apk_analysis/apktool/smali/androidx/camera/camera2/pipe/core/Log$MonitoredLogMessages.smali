.class public final Landroidx/camera/camera2/pipe/core/Log$MonitoredLogMessages;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/core/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MonitoredLogMessages"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/core/Log$MonitoredLogMessages;

.field public static final REPEATING_REQUEST_STARTED_TIMEOUT:Ljava/lang/String; = "awaitStarted on last repeating request timed out"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/core/Log$MonitoredLogMessages;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/core/Log$MonitoredLogMessages;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/core/Log$MonitoredLogMessages;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log$MonitoredLogMessages;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
