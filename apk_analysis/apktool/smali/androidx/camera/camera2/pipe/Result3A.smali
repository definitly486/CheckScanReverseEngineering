.class public final Landroidx/camera/camera2/pipe/Result3A;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/Result3A$Status;
    }
.end annotation


# instance fields
.field private final frameMetadata:Landroidx/camera/camera2/pipe/FrameMetadata;

.field private final status:I


# direct methods
.method private constructor <init>(ILandroidx/camera/camera2/pipe/FrameMetadata;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Landroidx/camera/camera2/pipe/Result3A;->status:I

    iput-object p2, p0, Landroidx/camera/camera2/pipe/Result3A;->frameMetadata:Landroidx/camera/camera2/pipe/FrameMetadata;

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/camera/camera2/pipe/FrameMetadata;ILjh2;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    move-object p2, p4

    :cond_0
    invoke-direct {p0, p1, p2, p4}, Landroidx/camera/camera2/pipe/Result3A;-><init>(ILandroidx/camera/camera2/pipe/FrameMetadata;Ljh2;)V

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/camera/camera2/pipe/FrameMetadata;Ljh2;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/Result3A;-><init>(ILandroidx/camera/camera2/pipe/FrameMetadata;)V

    return-void
.end method

.method public static synthetic copy-XT8YZL4$default(Landroidx/camera/camera2/pipe/Result3A;ILandroidx/camera/camera2/pipe/FrameMetadata;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/Result3A;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Landroidx/camera/camera2/pipe/Result3A;->status:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Landroidx/camera/camera2/pipe/Result3A;->frameMetadata:Landroidx/camera/camera2/pipe/FrameMetadata;

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/Result3A;->copy-XT8YZL4(ILandroidx/camera/camera2/pipe/FrameMetadata;)Landroidx/camera/camera2/pipe/Result3A;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1-JvTi9ms()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/Result3A;->status:I

    return p0
.end method

.method public final component2()Landroidx/camera/camera2/pipe/FrameMetadata;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/Result3A;->frameMetadata:Landroidx/camera/camera2/pipe/FrameMetadata;

    return-object p0
.end method

.method public final copy-XT8YZL4(ILandroidx/camera/camera2/pipe/FrameMetadata;)Landroidx/camera/camera2/pipe/Result3A;
    .locals 1

    new-instance p0, Landroidx/camera/camera2/pipe/Result3A;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/camera/camera2/pipe/Result3A;-><init>(ILandroidx/camera/camera2/pipe/FrameMetadata;Ljh2;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/Result3A;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/Result3A;

    iget v1, p0, Landroidx/camera/camera2/pipe/Result3A;->status:I

    iget v3, p1, Landroidx/camera/camera2/pipe/Result3A;->status:I

    invoke-static {v1, v3}, Landroidx/camera/camera2/pipe/Result3A$Status;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Landroidx/camera/camera2/pipe/Result3A;->frameMetadata:Landroidx/camera/camera2/pipe/FrameMetadata;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/Result3A;->frameMetadata:Landroidx/camera/camera2/pipe/FrameMetadata;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getFrameMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/Result3A;->frameMetadata:Landroidx/camera/camera2/pipe/FrameMetadata;

    return-object p0
.end method

.method public final getStatus-JvTi9ms()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/Result3A;->status:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/camera/camera2/pipe/Result3A;->status:I

    invoke-static {v0}, Landroidx/camera/camera2/pipe/Result3A$Status;->hashCode-impl(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/camera/camera2/pipe/Result3A;->frameMetadata:Landroidx/camera/camera2/pipe/FrameMetadata;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Result3A(status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/camera/camera2/pipe/Result3A;->status:I

    invoke-static {v1}, Landroidx/camera/camera2/pipe/Result3A$Status;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", frameMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/Result3A;->frameMetadata:Landroidx/camera/camera2/pipe/FrameMetadata;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
