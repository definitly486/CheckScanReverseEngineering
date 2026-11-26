.class public final Landroidx/paging/PagedList$Config$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/PagedList$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/PagedList$Config$Builder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/paging/PagedList$Config$Builder$Companion;

.field public static final DEFAULT_INITIAL_PAGE_MULTIPLIER:I = 0x3


# instance fields
.field private enablePlaceholders:Z

.field private initialLoadSizeHint:I

.field private maxSize:I

.field private pageSize:I

.field private prefetchDistance:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/paging/PagedList$Config$Builder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/paging/PagedList$Config$Builder$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/paging/PagedList$Config$Builder;->Companion:Landroidx/paging/PagedList$Config$Builder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/paging/PagedList$Config$Builder;->pageSize:I

    iput v0, p0, Landroidx/paging/PagedList$Config$Builder;->prefetchDistance:I

    iput v0, p0, Landroidx/paging/PagedList$Config$Builder;->initialLoadSizeHint:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/paging/PagedList$Config$Builder;->enablePlaceholders:Z

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/paging/PagedList$Config$Builder;->maxSize:I

    return-void
.end method


# virtual methods
.method public final build()Landroidx/paging/PagedList$Config;
    .locals 8

    iget v0, p0, Landroidx/paging/PagedList$Config$Builder;->prefetchDistance:I

    if-gez v0, :cond_0

    iget v0, p0, Landroidx/paging/PagedList$Config$Builder;->pageSize:I

    iput v0, p0, Landroidx/paging/PagedList$Config$Builder;->prefetchDistance:I

    :cond_0
    iget v1, p0, Landroidx/paging/PagedList$Config$Builder;->initialLoadSizeHint:I

    if-gez v1, :cond_1

    iget v1, p0, Landroidx/paging/PagedList$Config$Builder;->pageSize:I

    mul-int/lit8 v1, v1, 0x3

    iput v1, p0, Landroidx/paging/PagedList$Config$Builder;->initialLoadSizeHint:I

    :cond_1
    iget-boolean v1, p0, Landroidx/paging/PagedList$Config$Builder;->enablePlaceholders:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "Placeholders and prefetch are the only ways to trigger loading of more data in the PagedList, so either placeholders must be enabled, or prefetch distance must be > 0."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_3
    :goto_1
    iget v1, p0, Landroidx/paging/PagedList$Config$Builder;->maxSize:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_5

    iget v2, p0, Landroidx/paging/PagedList$Config$Builder;->pageSize:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    if-lt v1, v0, :cond_4

    goto :goto_2

    :cond_4
    iget v3, p0, Landroidx/paging/PagedList$Config$Builder;->pageSize:I

    iget v5, p0, Landroidx/paging/PagedList$Config$Builder;->prefetchDistance:I

    const-string v6, ", maxSize="

    iget v7, p0, Landroidx/paging/PagedList$Config$Builder;->maxSize:I

    const-string v2, "Maximum size must be at least pageSize + 2*prefetchDist, pageSize="

    const-string v4, ", prefetchDist="

    invoke-static/range {v2 .. v7}, Leq;->f(Ljava/lang/String;ILjava/lang/Object;ILjava/lang/Object;I)V

    goto :goto_0

    :cond_5
    :goto_2
    new-instance v0, Landroidx/paging/PagedList$Config;

    iget v1, p0, Landroidx/paging/PagedList$Config$Builder;->pageSize:I

    iget v2, p0, Landroidx/paging/PagedList$Config$Builder;->prefetchDistance:I

    iget-boolean v3, p0, Landroidx/paging/PagedList$Config$Builder;->enablePlaceholders:Z

    iget v4, p0, Landroidx/paging/PagedList$Config$Builder;->initialLoadSizeHint:I

    iget v5, p0, Landroidx/paging/PagedList$Config$Builder;->maxSize:I

    invoke-direct/range {v0 .. v5}, Landroidx/paging/PagedList$Config;-><init>(IIZII)V

    return-object v0
.end method

.method public final setEnablePlaceholders(Z)Landroidx/paging/PagedList$Config$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/paging/PagedList$Config$Builder;->enablePlaceholders:Z

    return-object p0
.end method

.method public final setInitialLoadSizeHint(I)Landroidx/paging/PagedList$Config$Builder;
    .locals 0

    iput p1, p0, Landroidx/paging/PagedList$Config$Builder;->initialLoadSizeHint:I

    return-object p0
.end method

.method public final setMaxSize(I)Landroidx/paging/PagedList$Config$Builder;
    .locals 0

    iput p1, p0, Landroidx/paging/PagedList$Config$Builder;->maxSize:I

    return-object p0
.end method

.method public final setPageSize(I)Landroidx/paging/PagedList$Config$Builder;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iput p1, p0, Landroidx/paging/PagedList$Config$Builder;->pageSize:I

    return-object p0

    :cond_0
    const-string p0, "Page size must be a positive number"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setPrefetchDistance(I)Landroidx/paging/PagedList$Config$Builder;
    .locals 0

    iput p1, p0, Landroidx/paging/PagedList$Config$Builder;->prefetchDistance:I

    return-object p0
.end method
