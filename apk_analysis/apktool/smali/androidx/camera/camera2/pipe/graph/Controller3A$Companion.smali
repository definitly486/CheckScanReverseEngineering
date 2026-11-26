.class public final Landroidx/camera/camera2/pipe/graph/Controller3A$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/graph/Controller3A;
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

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/graph/Controller3A$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getParameterForAfTriggerCancel()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroidx/camera/camera2/pipe/graph/Controller3A;->access$getParameterForAfTriggerCancel$cp()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getParameterForAfTriggerStart()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroidx/camera/camera2/pipe/graph/Controller3A;->access$getParameterForAfTriggerStart$cp()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
