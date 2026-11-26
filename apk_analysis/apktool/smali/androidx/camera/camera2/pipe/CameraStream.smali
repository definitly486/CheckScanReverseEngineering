.class public final Landroidx/camera/camera2/pipe/CameraStream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/CameraStream$Config;
    }
.end annotation


# instance fields
.field private final id:I

.field private final outputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/OutputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/OutputStream;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/camera2/pipe/CameraStream;->id:I

    iput-object p2, p0, Landroidx/camera/camera2/pipe/CameraStream;->outputs:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Ljh2;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/CameraStream;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getId-ptHMqGs()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/CameraStream;->id:I

    return p0
.end method

.method public final getOutputs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/OutputStream;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraStream;->outputs:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/CameraStream;->id:I

    invoke-static {p0}, Landroidx/camera/camera2/pipe/StreamId;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
