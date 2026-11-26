.class final Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/impl/State3AControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateSnapshot"
.end annotation


# instance fields
.field private final flashMode:I

.field private final preferredAeMode:Ljava/lang/Integer;

.field private final preferredFocusMode:Ljava/lang/Integer;

.field private final template:I

.field private final tryExternalFlashAeMode:Z


# direct methods
.method public constructor <init>(IIZLjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->flashMode:I

    iput p2, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->template:I

    iput-boolean p3, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->tryExternalFlashAeMode:Z

    iput-object p4, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->preferredAeMode:Ljava/lang/Integer;

    iput-object p5, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->preferredFocusMode:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;IIZLjava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->flashMode:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->template:I

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-boolean p3, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->tryExternalFlashAeMode:Z

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-object p4, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->preferredAeMode:Ljava/lang/Integer;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->preferredFocusMode:Ljava/lang/Integer;

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p7}, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->copy(IIZLjava/lang/Integer;Ljava/lang/Integer;)Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->flashMode:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->template:I

    return p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->tryExternalFlashAeMode:Z

    return p0
.end method

.method public final component4()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->preferredAeMode:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component5()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->preferredFocusMode:Ljava/lang/Integer;

    return-object p0
.end method

.method public final copy(IIZLjava/lang/Integer;Ljava/lang/Integer;)Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;
    .locals 0

    new-instance p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;

    invoke-direct/range {p0 .. p5}, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;-><init>(IIZLjava/lang/Integer;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;

    iget v1, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->flashMode:I

    iget v3, p1, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->flashMode:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->template:I

    iget v3, p1, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->template:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->tryExternalFlashAeMode:Z

    iget-boolean v3, p1, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->tryExternalFlashAeMode:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->preferredAeMode:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->preferredAeMode:Ljava/lang/Integer;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->preferredFocusMode:Ljava/lang/Integer;

    iget-object p1, p1, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->preferredFocusMode:Ljava/lang/Integer;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getFlashMode()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->flashMode:I

    return p0
.end method

.method public final getPreferredAeMode()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->preferredAeMode:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getPreferredFocusMode()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->preferredFocusMode:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getTemplate()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->template:I

    return p0
.end method

.method public final getTryExternalFlashAeMode()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->tryExternalFlashAeMode:Z

    return p0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->flashMode:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->template:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget-boolean v2, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->tryExternalFlashAeMode:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object v2, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->preferredAeMode:Ljava/lang/Integer;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->preferredFocusMode:Ljava/lang/Integer;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StateSnapshot(flashMode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->flashMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", template="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->template:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tryExternalFlashAeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->tryExternalFlashAeMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", preferredAeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->preferredAeMode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", preferredFocusMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->preferredFocusMode:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
