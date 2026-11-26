.class public final Landroidx/camera/camera2/pipe/CameraPipe$Flags;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraPipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Flags"
.end annotation


# instance fields
.field private final strictModeEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 11
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/camera/camera2/pipe/CameraPipe$Flags;-><init>(ZILjh2;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean p1, p0, Landroidx/camera/camera2/pipe/CameraPipe$Flags;->strictModeEnabled:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILjh2;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/CameraPipe$Flags;-><init>(Z)V

    return-void
.end method

.method public static synthetic copy$default(Landroidx/camera/camera2/pipe/CameraPipe$Flags;ZILjava/lang/Object;)Landroidx/camera/camera2/pipe/CameraPipe$Flags;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-boolean p1, p0, Landroidx/camera/camera2/pipe/CameraPipe$Flags;->strictModeEnabled:Z

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/CameraPipe$Flags;->copy(Z)Landroidx/camera/camera2/pipe/CameraPipe$Flags;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/CameraPipe$Flags;->strictModeEnabled:Z

    return p0
.end method

.method public final copy(Z)Landroidx/camera/camera2/pipe/CameraPipe$Flags;
    .locals 0

    new-instance p0, Landroidx/camera/camera2/pipe/CameraPipe$Flags;

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/CameraPipe$Flags;-><init>(Z)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/CameraPipe$Flags;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/CameraPipe$Flags;

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/CameraPipe$Flags;->strictModeEnabled:Z

    iget-boolean p1, p1, Landroidx/camera/camera2/pipe/CameraPipe$Flags;->strictModeEnabled:Z

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getStrictModeEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/CameraPipe$Flags;->strictModeEnabled:Z

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/CameraPipe$Flags;->strictModeEnabled:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Flags(strictModeEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/CameraPipe$Flags;->strictModeEnabled:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lsg;->d(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
