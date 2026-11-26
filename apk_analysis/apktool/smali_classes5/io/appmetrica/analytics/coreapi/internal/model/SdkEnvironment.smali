.class public final Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;

.field private final b:Ljava/lang/String;

.field private final c:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

.field private final d:Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/util/List;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;",
            "Ljava/lang/String;",
            "Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;",
            "Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->a:Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;

    iput-object p2, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->c:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    iput-object p4, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->d:Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;

    iput-object p5, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->e:Ljava/lang/String;

    iput-object p6, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->f:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->a:Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->b:Ljava/lang/String;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-object p3, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->c:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget-object p4, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->d:Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget-object p5, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->e:Ljava/lang/String;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget-object p6, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->f:Ljava/util/List;

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->copy(Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;Ljava/lang/String;Ljava/util/List;)Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->a:Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->c:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    return-object p0
.end method

.method public final component4()Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->d:Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->f:Ljava/util/List;

    return-object p0
.end method

.method public final copy(Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;Ljava/lang/String;Ljava/util/List;)Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;",
            "Ljava/lang/String;",
            "Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;",
            "Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;"
        }
    .end annotation

    new-instance p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;

    invoke-direct/range {p0 .. p6}, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;-><init>(Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;

    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->a:Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;

    iget-object v3, p1, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->a:Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->b:Ljava/lang/String;

    iget-object v3, p1, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->c:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    iget-object v3, p1, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->c:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->d:Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;

    iget-object v3, p1, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->d:Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->e:Ljava/lang/String;

    iget-object v3, p1, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->f:Ljava/util/List;

    iget-object p1, p1, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->f:Ljava/util/List;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAppFramework()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getAppVersionInfo()Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->a:Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;

    return-object p0
.end method

.method public final getDeviceType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final getLocales()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->f:Ljava/util/List;

    return-object p0
.end method

.method public final getScreenInfo()Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->c:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    return-object p0
.end method

.method public final getSdkInfo()Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->d:Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->a:Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->c:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    invoke-virtual {v2}, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->d:Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->f:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SdkEnvironment(appVersionInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->a:Lio/appmetrica/analytics/coreapi/internal/model/AppVersionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appFramework="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", screenInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->c:Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sdkInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->d:Lio/appmetrica/analytics/coreapi/internal/model/SdkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", locales="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/coreapi/internal/model/SdkEnvironment;->f:Ljava/util/List;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lqg;->f(Ljava/lang/StringBuilder;Ljava/util/List;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
