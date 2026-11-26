.class public final Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/RequestFailure;


# instance fields
.field private final frameNumber:J

.field private final reason:I

.field private final requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

.field private final wasImageCaptured:Z


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/pipe/RequestMetadata;ZJI)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

    iput-boolean p2, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->wasImageCaptured:Z

    iput-wide p3, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->frameNumber:J

    iput p5, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->reason:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/RequestMetadata;ZJILjh2;)V
    .locals 0

    .line 15
    invoke-direct/range {p0 .. p5}, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;-><init>(Landroidx/camera/camera2/pipe/RequestMetadata;ZJI)V

    return-void
.end method

.method public static synthetic copy-FsN21Hw$default(Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;Landroidx/camera/camera2/pipe/RequestMetadata;ZJIILjava/lang/Object;)Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-boolean p2, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->wasImageCaptured:Z

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-wide p3, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->frameNumber:J

    :cond_2
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_3

    iget p5, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->reason:I

    :cond_3
    move p7, p5

    move-wide p5, p3

    move-object p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p7}, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->copy-FsN21Hw(Landroidx/camera/camera2/pipe/RequestMetadata;ZJI)Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroidx/camera/camera2/pipe/RequestMetadata;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

    return-object p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->wasImageCaptured:Z

    return p0
.end method

.method public final component3-Ugla2oM()J
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->frameNumber:J

    return-wide v0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->reason:I

    return p0
.end method

.method public final copy-FsN21Hw(Landroidx/camera/camera2/pipe/RequestMetadata;ZJI)Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;-><init>(Landroidx/camera/camera2/pipe/RequestMetadata;ZJILjh2;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->wasImageCaptured:Z

    iget-boolean v3, p1, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->wasImageCaptured:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->frameNumber:J

    iget-wide v5, p1, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->frameNumber:J

    invoke-static {v3, v4, v5, v6}, Landroidx/camera/camera2/pipe/FrameNumber;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget p0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->reason:I

    iget p1, p1, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->reason:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getFrameNumber-Ugla2oM()J
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->frameNumber:J

    return-wide v0
.end method

.method public getReason()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->reason:I

    return p0
.end method

.method public getRequestMetadata()Landroidx/camera/camera2/pipe/RequestMetadata;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

    return-object p0
.end method

.method public getWasImageCaptured()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->wasImageCaptured:Z

    return p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->wasImageCaptured:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-wide v2, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->frameNumber:J

    invoke-static {v2, v3}, Landroidx/camera/camera2/pipe/FrameNumber;->hashCode-impl(J)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget p0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->reason:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExtensionRequestFailure(requestMetadata="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wasImageCaptured="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->wasImageCaptured:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", frameNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->frameNumber:J

    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/FrameNumber;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;->reason:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lrg;->h(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unwrapAs(Lne4;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method
