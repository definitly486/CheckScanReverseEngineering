.class public final Landroidx/camera/video/internal/config/FormatCombo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final audioMime:Ljava/lang/String;

.field private final container:I

.field private final videoMime:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/video/internal/config/FormatCombo;->container:I

    iput-object p2, p0, Landroidx/camera/video/internal/config/FormatCombo;->videoMime:Ljava/lang/String;

    iput-object p3, p0, Landroidx/camera/video/internal/config/FormatCombo;->audioMime:Ljava/lang/String;

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "FormatCombo must have at least one valid track. Both videoMime and audioMime cannot be null."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic copy$default(Landroidx/camera/video/internal/config/FormatCombo;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroidx/camera/video/internal/config/FormatCombo;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Landroidx/camera/video/internal/config/FormatCombo;->container:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Landroidx/camera/video/internal/config/FormatCombo;->videoMime:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Landroidx/camera/video/internal/config/FormatCombo;->audioMime:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/video/internal/config/FormatCombo;->copy(ILjava/lang/String;Ljava/lang/String;)Landroidx/camera/video/internal/config/FormatCombo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getContainer$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Landroidx/camera/video/internal/config/FormatCombo;->container:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/config/FormatCombo;->videoMime:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/config/FormatCombo;->audioMime:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;)Landroidx/camera/video/internal/config/FormatCombo;
    .locals 0

    new-instance p0, Landroidx/camera/video/internal/config/FormatCombo;

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/video/internal/config/FormatCombo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/video/internal/config/FormatCombo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/video/internal/config/FormatCombo;

    iget v1, p0, Landroidx/camera/video/internal/config/FormatCombo;->container:I

    iget v3, p1, Landroidx/camera/video/internal/config/FormatCombo;->container:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/video/internal/config/FormatCombo;->videoMime:Ljava/lang/String;

    iget-object v3, p1, Landroidx/camera/video/internal/config/FormatCombo;->videoMime:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Landroidx/camera/video/internal/config/FormatCombo;->audioMime:Ljava/lang/String;

    iget-object p1, p1, Landroidx/camera/video/internal/config/FormatCombo;->audioMime:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAudioMime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/config/FormatCombo;->audioMime:Ljava/lang/String;

    return-object p0
.end method

.method public final getContainer()I
    .locals 0

    iget p0, p0, Landroidx/camera/video/internal/config/FormatCombo;->container:I

    return p0
.end method

.method public final getVideoMime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/config/FormatCombo;->videoMime:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/camera/video/internal/config/FormatCombo;->container:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/video/internal/config/FormatCombo;->videoMime:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/camera/video/internal/config/FormatCombo;->audioMime:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FormatCombo(container="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/camera/video/internal/config/FormatCombo;->container:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoMime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/internal/config/FormatCombo;->videoMime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", audioMime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/video/internal/config/FormatCombo;->audioMime:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lxp;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
