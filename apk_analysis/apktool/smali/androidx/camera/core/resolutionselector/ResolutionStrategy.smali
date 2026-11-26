.class public final Landroidx/camera/core/resolutionselector/ResolutionStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/resolutionselector/ResolutionStrategy$ResolutionFallbackRule;
    }
.end annotation


# static fields
.field public static final FALLBACK_RULE_CLOSEST_HIGHER:I = 0x2

.field public static final FALLBACK_RULE_CLOSEST_HIGHER_THEN_LOWER:I = 0x1

.field public static final FALLBACK_RULE_CLOSEST_LOWER:I = 0x4

.field public static final FALLBACK_RULE_CLOSEST_LOWER_THEN_HIGHER:I = 0x3

.field public static final FALLBACK_RULE_NONE:I

.field public static final HIGHEST_AVAILABLE_STRATEGY:Landroidx/camera/core/resolutionselector/ResolutionStrategy;


# instance fields
.field private mBoundSize:Landroid/util/Size;

.field private mFallbackRule:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/core/resolutionselector/ResolutionStrategy;

    invoke-direct {v0}, Landroidx/camera/core/resolutionselector/ResolutionStrategy;-><init>()V

    sput-object v0, Landroidx/camera/core/resolutionselector/ResolutionStrategy;->HIGHEST_AVAILABLE_STRATEGY:Landroidx/camera/core/resolutionselector/ResolutionStrategy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/core/resolutionselector/ResolutionStrategy;->mBoundSize:Landroid/util/Size;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/camera/core/resolutionselector/ResolutionStrategy;->mFallbackRule:I

    return-void
.end method

.method public constructor <init>(Landroid/util/Size;I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Landroidx/camera/core/resolutionselector/ResolutionStrategy;->mBoundSize:Landroid/util/Size;

    .line 12
    iput p2, p0, Landroidx/camera/core/resolutionselector/ResolutionStrategy;->mFallbackRule:I

    return-void
.end method


# virtual methods
.method public getBoundSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/resolutionselector/ResolutionStrategy;->mBoundSize:Landroid/util/Size;

    return-object p0
.end method

.method public getFallbackRule()I
    .locals 0

    iget p0, p0, Landroidx/camera/core/resolutionselector/ResolutionStrategy;->mFallbackRule:I

    return p0
.end method
