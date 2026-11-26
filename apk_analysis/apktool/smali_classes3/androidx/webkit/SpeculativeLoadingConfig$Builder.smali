.class public final Landroidx/webkit/SpeculativeLoadingConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/SpeculativeLoadingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mMaxPrefetches:I

.field private mMaxPrerenders:I

.field private mPrefetchTTLSeconds:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroidx/webkit/SpeculativeLoadingConfig;
    .locals 4

    new-instance v0, Landroidx/webkit/SpeculativeLoadingConfig;

    iget v1, p0, Landroidx/webkit/SpeculativeLoadingConfig$Builder;->mPrefetchTTLSeconds:I

    iget v2, p0, Landroidx/webkit/SpeculativeLoadingConfig$Builder;->mMaxPrefetches:I

    iget p0, p0, Landroidx/webkit/SpeculativeLoadingConfig$Builder;->mMaxPrerenders:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Landroidx/webkit/SpeculativeLoadingConfig;-><init>(IIILandroidx/webkit/SpeculativeLoadingConfig$1;)V

    return-object v0
.end method

.method public setMaxPrefetches(I)Landroidx/webkit/SpeculativeLoadingConfig$Builder;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iput p1, p0, Landroidx/webkit/SpeculativeLoadingConfig$Builder;->mMaxPrefetches:I

    return-object p0

    :cond_0
    const-string p0, "Max prefetches must be greater than 0"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public setMaxPrerenders(I)Landroidx/webkit/SpeculativeLoadingConfig$Builder;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iput p1, p0, Landroidx/webkit/SpeculativeLoadingConfig$Builder;->mMaxPrerenders:I

    return-object p0

    :cond_0
    const-string p0, "Max prerenders must be greater than 0"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public setPrefetchTtlSeconds(I)Landroidx/webkit/SpeculativeLoadingConfig$Builder;
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Landroidx/webkit/SpeculativeLoadingConfig$Builder;->mPrefetchTTLSeconds:I

    return-object p0

    :cond_0
    const-string p0, "Prefetch TTL must be greater than 0"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
