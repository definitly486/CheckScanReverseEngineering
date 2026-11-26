.class final Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/internal/OutputDistributor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StartedOutput"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final cameraFrameNumber:J

.field private final cameraOutputNumber:J

.field private final cameraOutputSequence:J

.field private final cameraTimestamp:J

.field private final complete:Lht;

.field private final isOutOfOrder:Z

.field private final outputListener:Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZJJJJLandroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJJJJ",
            "Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->isOutOfOrder:Z

    iput-wide p2, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraFrameNumber:J

    iput-wide p4, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraTimestamp:J

    iput-wide p6, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputSequence:J

    iput-wide p8, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputNumber:J

    iput-object p10, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->outputListener:Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;

    const/4 p1, 0x0

    invoke-static {p1}, Lkt;->a(Z)Lht;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->complete:Lht;

    return-void
.end method

.method public synthetic constructor <init>(ZJJJJLandroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;Ljh2;)V
    .locals 0

    .line 26
    invoke-direct/range {p0 .. p10}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;-><init>(ZJJJJLandroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;)V

    return-void
.end method

.method private final component6()Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->outputListener:Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;

    return-object p0
.end method

.method public static synthetic copy-HscHeSQ$default(Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;ZJJJJLandroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;
    .locals 0

    and-int/lit8 p12, p11, 0x1

    if-eqz p12, :cond_0

    iget-boolean p1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->isOutOfOrder:Z

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    iget-wide p2, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraFrameNumber:J

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    iget-wide p4, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraTimestamp:J

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    iget-wide p6, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputSequence:J

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    iget-wide p8, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputNumber:J

    :cond_4
    and-int/lit8 p11, p11, 0x20

    if-eqz p11, :cond_5

    iget-object p10, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->outputListener:Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;

    :cond_5
    move-object p12, p10

    move-wide p10, p8

    move-wide p8, p6

    move-wide p6, p4

    move-wide p4, p2

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p12}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->copy-HscHeSQ(ZJJJJLandroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;)Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final completeWith-DvZWqE8(JLjava/lang/Object;)V
    .locals 11

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->complete:Lht;

    invoke-virtual {v0}, Lht;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->outputListener:Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;

    iget-wide v2, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraFrameNumber:J

    iget-wide v4, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraTimestamp:J

    iget-wide v6, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputSequence:J

    move-wide v8, p1

    move-object v10, p3

    invoke-interface/range {v1 .. v10}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;->onOutputComplete-3ejhThk(JJJJLjava/lang/Object;)V

    return-void

    :cond_0
    move-wide v8, p1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Output "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide p2, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputSequence:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " at "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraFrameNumber:J

    invoke-static {p2, p3}, Landroidx/camera/camera2/pipe/FrameNumber;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " for "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " was completed multiple times!"

    invoke-static {v8, v9, p0, p1}, Lk2;->b(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lj2;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public final completeWithFailure-tXNfJfc(I)V
    .locals 2

    sget-object v0, Landroidx/camera/camera2/pipe/internal/OutputResult;->Companion:Landroidx/camera/camera2/pipe/internal/OutputResult$Companion;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/OutputStatus;->box-impl(I)Landroidx/camera/camera2/pipe/OutputStatus;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/internal/OutputResult;->access$constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1, p1}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->completeWith-DvZWqE8(JLjava/lang/Object;)V

    return-void
.end method

.method public final component1()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->isOutOfOrder:Z

    return p0
.end method

.method public final component2-Ugla2oM()J
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraFrameNumber:J

    return-wide v0
.end method

.method public final component3-LS1Wq50()J
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraTimestamp:J

    return-wide v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputSequence:J

    return-wide v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputNumber:J

    return-wide v0
.end method

.method public final copy-HscHeSQ(ZJJJJLandroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;)Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJJJJ",
            "Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener<",
            "TT;>;)",
            "Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;

    const/4 v11, 0x0

    move v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;-><init>(ZJJJJLandroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;Ljh2;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->isOutOfOrder:Z

    iget-boolean v3, p1, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->isOutOfOrder:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraFrameNumber:J

    iget-wide v5, p1, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraFrameNumber:J

    invoke-static {v3, v4, v5, v6}, Landroidx/camera/camera2/pipe/FrameNumber;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraTimestamp:J

    iget-wide v5, p1, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraTimestamp:J

    invoke-static {v3, v4, v5, v6}, Landroidx/camera/camera2/pipe/CameraTimestamp;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputSequence:J

    iget-wide v5, p1, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputSequence:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputNumber:J

    iget-wide v5, p1, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputNumber:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->outputListener:Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->outputListener:Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getCameraFrameNumber-Ugla2oM()J
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraFrameNumber:J

    return-wide v0
.end method

.method public final getCameraOutputNumber()J
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputNumber:J

    return-wide v0
.end method

.method public final getCameraOutputSequence()J
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputSequence:J

    return-wide v0
.end method

.method public final getCameraTimestamp-LS1Wq50()J
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraTimestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->isOutOfOrder:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraFrameNumber:J

    invoke-static {v2, v3}, Landroidx/camera/camera2/pipe/FrameNumber;->hashCode-impl(J)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-wide v3, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraTimestamp:J

    invoke-static {v3, v4}, Landroidx/camera/camera2/pipe/CameraTimestamp;->hashCode-impl(J)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputSequence:J

    invoke-static {v0, v1, v2, v3}, Lvg;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputNumber:J

    invoke-static {v0, v1, v2, v3}, Lvg;->b(IIJ)I

    move-result v0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->outputListener:Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isOutOfOrder()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->isOutOfOrder:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StartedOutput(isOutOfOrder="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->isOutOfOrder:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cameraFrameNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraFrameNumber:J

    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/FrameNumber;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraTimestamp:J

    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/CameraTimestamp;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraOutputSequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputSequence:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cameraOutputNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", outputListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->outputListener:Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
