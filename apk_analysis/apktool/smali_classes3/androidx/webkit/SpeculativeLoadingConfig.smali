.class public Landroidx/webkit/SpeculativeLoadingConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/SpeculativeLoadingConfig$Builder;
    }
.end annotation


# instance fields
.field private final mMaxPrefetches:I

.field private final mMaxPrerenders:I

.field private final mPrefetchTTLSeconds:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/webkit/SpeculativeLoadingConfig;->mPrefetchTTLSeconds:I

    iput p2, p0, Landroidx/webkit/SpeculativeLoadingConfig;->mMaxPrefetches:I

    iput p3, p0, Landroidx/webkit/SpeculativeLoadingConfig;->mMaxPrerenders:I

    return-void
.end method

.method public synthetic constructor <init>(IIILandroidx/webkit/SpeculativeLoadingConfig$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Landroidx/webkit/SpeculativeLoadingConfig;-><init>(III)V

    return-void
.end method


# virtual methods
.method public getMaxPrefetches()I
    .locals 0

    iget p0, p0, Landroidx/webkit/SpeculativeLoadingConfig;->mMaxPrefetches:I

    return p0
.end method

.method public getMaxPrerenders()I
    .locals 0

    iget p0, p0, Landroidx/webkit/SpeculativeLoadingConfig;->mMaxPrerenders:I

    return p0
.end method

.method public getPrefetchTtlSeconds()I
    .locals 0

    iget p0, p0, Landroidx/webkit/SpeculativeLoadingConfig;->mPrefetchTTLSeconds:I

    return p0
.end method
