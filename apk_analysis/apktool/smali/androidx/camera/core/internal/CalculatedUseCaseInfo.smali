.class public final Landroidx/camera/core/internal/CalculatedUseCaseInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final appUseCases:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraUseCases:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraUseCasesToAttach:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraUseCasesToDetach:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraUseCasesToKeep:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation
.end field

.field private final placeholderForExtensions:Landroidx/camera/core/UseCase;

.field private final primaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

.field private final secondaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

.field private final streamSharing:Landroidx/camera/core/streamsharing/StreamSharing;

.field private final useCaseConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/core/UseCase;",
            "Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/core/streamsharing/StreamSharing;Landroidx/camera/core/UseCase;Ljava/util/Map;Landroidx/camera/core/internal/StreamSpecQueryResult;Landroidx/camera/core/internal/StreamSpecQueryResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;",
            "Landroidx/camera/core/streamsharing/StreamSharing;",
            "Landroidx/camera/core/UseCase;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/UseCase;",
            "+",
            "Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;",
            ">;",
            "Landroidx/camera/core/internal/StreamSpecQueryResult;",
            "Landroidx/camera/core/internal/StreamSpecQueryResult;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->appUseCases:Ljava/util/Collection;

    iput-object p2, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCases:Ljava/util/Collection;

    iput-object p3, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToAttach:Ljava/util/List;

    iput-object p4, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToKeep:Ljava/util/List;

    iput-object p5, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToDetach:Ljava/util/List;

    iput-object p6, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->streamSharing:Landroidx/camera/core/streamsharing/StreamSharing;

    iput-object p7, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->placeholderForExtensions:Landroidx/camera/core/UseCase;

    iput-object p8, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->useCaseConfigs:Ljava/util/Map;

    iput-object p9, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->primaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

    iput-object p10, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->secondaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/camera/core/internal/CalculatedUseCaseInfo;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/core/streamsharing/StreamSharing;Landroidx/camera/core/UseCase;Ljava/util/Map;Landroidx/camera/core/internal/StreamSpecQueryResult;Landroidx/camera/core/internal/StreamSpecQueryResult;ILjava/lang/Object;)Landroidx/camera/core/internal/CalculatedUseCaseInfo;
    .locals 0

    and-int/lit8 p12, p11, 0x1

    if-eqz p12, :cond_0

    iget-object p1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->appUseCases:Ljava/util/Collection;

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    iget-object p2, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCases:Ljava/util/Collection;

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    iget-object p3, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToAttach:Ljava/util/List;

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    iget-object p4, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToKeep:Ljava/util/List;

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    iget-object p5, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToDetach:Ljava/util/List;

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    iget-object p6, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->streamSharing:Landroidx/camera/core/streamsharing/StreamSharing;

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    iget-object p7, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->placeholderForExtensions:Landroidx/camera/core/UseCase;

    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    iget-object p8, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->useCaseConfigs:Ljava/util/Map;

    :cond_7
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_8

    iget-object p9, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->primaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

    :cond_8
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_9

    iget-object p10, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->secondaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

    :cond_9
    move-object p11, p9

    move-object p12, p10

    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p12}, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->copy(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/core/streamsharing/StreamSharing;Landroidx/camera/core/UseCase;Ljava/util/Map;Landroidx/camera/core/internal/StreamSpecQueryResult;Landroidx/camera/core/internal/StreamSpecQueryResult;)Landroidx/camera/core/internal/CalculatedUseCaseInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->appUseCases:Ljava/util/Collection;

    return-object p0
.end method

.method public final component10()Landroidx/camera/core/internal/StreamSpecQueryResult;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->secondaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

    return-object p0
.end method

.method public final component2()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCases:Ljava/util/Collection;

    return-object p0
.end method

.method public final component3()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToAttach:Ljava/util/List;

    return-object p0
.end method

.method public final component4()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToKeep:Ljava/util/List;

    return-object p0
.end method

.method public final component5()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToDetach:Ljava/util/List;

    return-object p0
.end method

.method public final component6()Landroidx/camera/core/streamsharing/StreamSharing;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->streamSharing:Landroidx/camera/core/streamsharing/StreamSharing;

    return-object p0
.end method

.method public final component7()Landroidx/camera/core/UseCase;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->placeholderForExtensions:Landroidx/camera/core/UseCase;

    return-object p0
.end method

.method public final component8()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/camera/core/UseCase;",
            "Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->useCaseConfigs:Ljava/util/Map;

    return-object p0
.end method

.method public final component9()Landroidx/camera/core/internal/StreamSpecQueryResult;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->primaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

    return-object p0
.end method

.method public final copy(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/core/streamsharing/StreamSharing;Landroidx/camera/core/UseCase;Ljava/util/Map;Landroidx/camera/core/internal/StreamSpecQueryResult;Landroidx/camera/core/internal/StreamSpecQueryResult;)Landroidx/camera/core/internal/CalculatedUseCaseInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;",
            "Landroidx/camera/core/streamsharing/StreamSharing;",
            "Landroidx/camera/core/UseCase;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/UseCase;",
            "+",
            "Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;",
            ">;",
            "Landroidx/camera/core/internal/StreamSpecQueryResult;",
            "Landroidx/camera/core/internal/StreamSpecQueryResult;",
            ")",
            "Landroidx/camera/core/internal/CalculatedUseCaseInfo;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;

    invoke-direct/range {p0 .. p10}, Landroidx/camera/core/internal/CalculatedUseCaseInfo;-><init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/core/streamsharing/StreamSharing;Landroidx/camera/core/UseCase;Ljava/util/Map;Landroidx/camera/core/internal/StreamSpecQueryResult;Landroidx/camera/core/internal/StreamSpecQueryResult;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->appUseCases:Ljava/util/Collection;

    iget-object v3, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->appUseCases:Ljava/util/Collection;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCases:Ljava/util/Collection;

    iget-object v3, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCases:Ljava/util/Collection;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToAttach:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToAttach:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToKeep:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToKeep:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToDetach:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToDetach:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->streamSharing:Landroidx/camera/core/streamsharing/StreamSharing;

    iget-object v3, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->streamSharing:Landroidx/camera/core/streamsharing/StreamSharing;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->placeholderForExtensions:Landroidx/camera/core/UseCase;

    iget-object v3, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->placeholderForExtensions:Landroidx/camera/core/UseCase;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->useCaseConfigs:Ljava/util/Map;

    iget-object v3, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->useCaseConfigs:Ljava/util/Map;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->primaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

    iget-object v3, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->primaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object p0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->secondaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

    iget-object p1, p1, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->secondaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getAppUseCases()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->appUseCases:Ljava/util/Collection;

    return-object p0
.end method

.method public final getCameraUseCases()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCases:Ljava/util/Collection;

    return-object p0
.end method

.method public final getCameraUseCasesToAttach()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToAttach:Ljava/util/List;

    return-object p0
.end method

.method public final getCameraUseCasesToDetach()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToDetach:Ljava/util/List;

    return-object p0
.end method

.method public final getCameraUseCasesToKeep()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToKeep:Ljava/util/List;

    return-object p0
.end method

.method public final getPlaceholderForExtensions()Landroidx/camera/core/UseCase;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->placeholderForExtensions:Landroidx/camera/core/UseCase;

    return-object p0
.end method

.method public final getPrimaryStreamSpecResult()Landroidx/camera/core/internal/StreamSpecQueryResult;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->primaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

    return-object p0
.end method

.method public final getSecondaryStreamSpecResult()Landroidx/camera/core/internal/StreamSpecQueryResult;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->secondaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

    return-object p0
.end method

.method public final getStreamSharing()Landroidx/camera/core/streamsharing/StreamSharing;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->streamSharing:Landroidx/camera/core/streamsharing/StreamSharing;

    return-object p0
.end method

.method public final getUseCaseConfigs()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/camera/core/UseCase;",
            "Landroidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->useCaseConfigs:Ljava/util/Map;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->appUseCases:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCases:Ljava/util/Collection;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToAttach:Ljava/util/List;

    invoke-static {v0, v2, v1}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToKeep:Ljava/util/List;

    invoke-static {v2, v0, v1}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToDetach:Ljava/util/List;

    invoke-static {v2, v0, v1}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->streamSharing:Landroidx/camera/core/streamsharing/StreamSharing;

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

    iget-object v2, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->placeholderForExtensions:Landroidx/camera/core/UseCase;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->useCaseConfigs:Ljava/util/Map;

    invoke-static {v2, v0, v1}, Lk;->c(Ljava/util/Map;II)I

    move-result v0

    iget-object v2, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->primaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

    invoke-virtual {v2}, Landroidx/camera/core/internal/StreamSpecQueryResult;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->secondaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroidx/camera/core/internal/StreamSpecQueryResult;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CalculatedUseCaseInfo(appUseCases="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->appUseCases:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraUseCases="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCases:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraUseCasesToAttach="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToAttach:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraUseCasesToKeep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToKeep:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraUseCasesToDetach="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->cameraUseCasesToDetach:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", streamSharing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->streamSharing:Landroidx/camera/core/streamsharing/StreamSharing;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", placeholderForExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->placeholderForExtensions:Landroidx/camera/core/UseCase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", useCaseConfigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->useCaseConfigs:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", primaryStreamSpecResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->primaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryStreamSpecResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/core/internal/CalculatedUseCaseInfo;->secondaryStreamSpecResult:Landroidx/camera/core/internal/StreamSpecQueryResult;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
