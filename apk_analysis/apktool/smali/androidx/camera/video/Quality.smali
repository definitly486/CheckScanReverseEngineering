.class public Landroidx/camera/video/Quality;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/Quality$ConstantQuality;,
        Landroidx/camera/video/Quality$QualitySource;
    }
.end annotation


# static fields
.field public static final FHD:Landroidx/camera/video/Quality;

.field public static final HD:Landroidx/camera/video/Quality;

.field public static final HIGHEST:Landroidx/camera/video/Quality;

.field public static final LOWEST:Landroidx/camera/video/Quality;

.field static final NONE:Landroidx/camera/video/Quality;

.field private static final QUALITIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/video/Quality;",
            ">;"
        }
    .end annotation
.end field

.field private static final QUALITIES_ORDER_BY_SIZE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/video/Quality;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUALITY_SOURCE_HIGH_SPEED:I = 0x2

.field public static final QUALITY_SOURCE_REGULAR:I = 0x1

.field public static final SD:Landroidx/camera/video/Quality;

.field public static final UHD:Landroidx/camera/video/Quality;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x2d0

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    new-instance v3, Landroid/util/Size;

    const/16 v4, 0x280

    invoke-direct {v3, v4, v2}, Landroid/util/Size;-><init>(II)V

    filled-new-array {v0, v3}, [Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x4

    const/16 v3, 0x7d2

    const-string v4, "SD"

    invoke-static {v2, v3, v4, v0}, Landroidx/camera/video/Quality$ConstantQuality;->of(IILjava/lang/String;Ljava/util/List;)Landroidx/camera/video/Quality$ConstantQuality;

    move-result-object v0

    sput-object v0, Landroidx/camera/video/Quality;->SD:Landroidx/camera/video/Quality;

    new-instance v3, Landroid/util/Size;

    const/16 v4, 0x500

    invoke-direct {v3, v4, v1}, Landroid/util/Size;-><init>(II)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x5

    const/16 v4, 0x7d3

    const-string v5, "HD"

    invoke-static {v3, v4, v5, v1}, Landroidx/camera/video/Quality$ConstantQuality;->of(IILjava/lang/String;Ljava/util/List;)Landroidx/camera/video/Quality$ConstantQuality;

    move-result-object v1

    sput-object v1, Landroidx/camera/video/Quality;->HD:Landroidx/camera/video/Quality;

    new-instance v4, Landroid/util/Size;

    const/16 v5, 0x780

    const/16 v6, 0x438

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x6

    const/16 v6, 0x7d4

    const-string v7, "FHD"

    invoke-static {v5, v6, v7, v4}, Landroidx/camera/video/Quality$ConstantQuality;->of(IILjava/lang/String;Ljava/util/List;)Landroidx/camera/video/Quality$ConstantQuality;

    move-result-object v4

    sput-object v4, Landroidx/camera/video/Quality;->FHD:Landroidx/camera/video/Quality;

    new-instance v6, Landroid/util/Size;

    const/16 v7, 0xf00

    const/16 v8, 0x870

    invoke-direct {v6, v7, v8}, Landroid/util/Size;-><init>(II)V

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/16 v7, 0x8

    const/16 v8, 0x7d5

    const-string v9, "UHD"

    invoke-static {v7, v8, v9, v6}, Landroidx/camera/video/Quality$ConstantQuality;->of(IILjava/lang/String;Ljava/util/List;)Landroidx/camera/video/Quality$ConstantQuality;

    move-result-object v6

    sput-object v6, Landroidx/camera/video/Quality;->UHD:Landroidx/camera/video/Quality;

    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v8, 0x0

    const/16 v9, 0x7d0

    const-string v10, "LOWEST"

    invoke-static {v8, v9, v10, v7}, Landroidx/camera/video/Quality$ConstantQuality;->of(IILjava/lang/String;Ljava/util/List;)Landroidx/camera/video/Quality$ConstantQuality;

    move-result-object v9

    sput-object v9, Landroidx/camera/video/Quality;->LOWEST:Landroidx/camera/video/Quality;

    const/16 v10, 0x7d1

    const-string v11, "HIGHEST"

    const/4 v12, 0x1

    invoke-static {v12, v10, v11, v7}, Landroidx/camera/video/Quality$ConstantQuality;->of(IILjava/lang/String;Ljava/util/List;)Landroidx/camera/video/Quality$ConstantQuality;

    move-result-object v10

    sput-object v10, Landroidx/camera/video/Quality;->HIGHEST:Landroidx/camera/video/Quality;

    const/4 v11, -0x1

    const-string v13, "NONE"

    invoke-static {v11, v11, v13, v7}, Landroidx/camera/video/Quality$ConstantQuality;->of(IILjava/lang/String;Ljava/util/List;)Landroidx/camera/video/Quality$ConstantQuality;

    move-result-object v7

    sput-object v7, Landroidx/camera/video/Quality;->NONE:Landroidx/camera/video/Quality;

    new-instance v7, Ljava/util/HashSet;

    new-array v5, v5, [Landroidx/camera/video/Quality;

    aput-object v9, v5, v8

    aput-object v10, v5, v12

    const/4 v9, 0x2

    aput-object v0, v5, v9

    const/4 v10, 0x3

    aput-object v1, v5, v10

    aput-object v4, v5, v2

    aput-object v6, v5, v3

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v7, Landroidx/camera/video/Quality;->QUALITIES:Ljava/util/Set;

    new-array v2, v2, [Landroidx/camera/video/Quality;

    aput-object v6, v2, v8

    aput-object v4, v2, v12

    aput-object v1, v2, v9

    aput-object v0, v2, v10

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/video/Quality;->QUALITIES_ORDER_BY_SIZE:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/video/Quality$1;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/video/Quality;-><init>()V

    return-void
.end method

.method public static containsQuality(Landroidx/camera/video/Quality;)Z
    .locals 1

    sget-object v0, Landroidx/camera/video/Quality;->QUALITIES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getSortedQualities()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/video/Quality;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Landroidx/camera/video/Quality;->QUALITIES_ORDER_BY_SIZE:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
