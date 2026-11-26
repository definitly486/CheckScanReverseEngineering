.class public Landroidx/webkit/internal/NoVarySearchHeaderAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/support_lib_boundary/NoVarySearchDataBoundaryInterface;


# instance fields
.field private final mImpl:Landroidx/webkit/NoVarySearchHeader;


# direct methods
.method public constructor <init>(Landroidx/webkit/NoVarySearchHeader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/webkit/internal/NoVarySearchHeaderAdapter;->mImpl:Landroidx/webkit/NoVarySearchHeader;

    return-void
.end method


# virtual methods
.method public getConsideredQueryParameters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/webkit/internal/NoVarySearchHeaderAdapter;->mImpl:Landroidx/webkit/NoVarySearchHeader;

    iget-object p0, p0, Landroidx/webkit/NoVarySearchHeader;->consideredQueryParameters:Ljava/util/List;

    return-object p0
.end method

.method public getIgnoreDifferencesInParameters()Z
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/NoVarySearchHeaderAdapter;->mImpl:Landroidx/webkit/NoVarySearchHeader;

    iget-boolean p0, p0, Landroidx/webkit/NoVarySearchHeader;->ignoreDifferencesInParameters:Z

    return p0
.end method

.method public getIgnoredQueryParameters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/webkit/internal/NoVarySearchHeaderAdapter;->mImpl:Landroidx/webkit/NoVarySearchHeader;

    iget-object p0, p0, Landroidx/webkit/NoVarySearchHeader;->ignoredQueryParameters:Ljava/util/List;

    return-object p0
.end method

.method public getVaryOnKeyOrder()Z
    .locals 0

    iget-object p0, p0, Landroidx/webkit/internal/NoVarySearchHeaderAdapter;->mImpl:Landroidx/webkit/NoVarySearchHeader;

    iget-boolean p0, p0, Landroidx/webkit/NoVarySearchHeader;->varyOnKeyOrder:Z

    return p0
.end method
