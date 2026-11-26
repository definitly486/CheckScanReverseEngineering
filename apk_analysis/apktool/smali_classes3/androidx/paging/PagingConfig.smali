.class public final Landroidx/paging/PagingConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/PagingConfig$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/paging/PagingConfig$Companion;

.field public static final DEFAULT_INITIAL_PAGE_MULTIPLIER:I = 0x3

.field public static final MAX_SIZE_UNBOUNDED:I = 0x7fffffff


# instance fields
.field public final enablePlaceholders:Z

.field public final initialLoadSize:I

.field public final jumpThreshold:I

.field public final maxSize:I

.field public final pageSize:I

.field public final prefetchDistance:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/paging/PagingConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/paging/PagingConfig$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/paging/PagingConfig;->Companion:Landroidx/paging/PagingConfig$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 9

    .line 72
    const/16 v7, 0x3e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v8}, Landroidx/paging/PagingConfig;-><init>(IIZIIIILjh2;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 9

    .line 68
    const/16 v7, 0x3c

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v8}, Landroidx/paging/PagingConfig;-><init>(IIZIIIILjh2;)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 9

    .line 69
    const/16 v7, 0x38

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Landroidx/paging/PagingConfig;-><init>(IIZIIIILjh2;)V

    return-void
.end method

.method public constructor <init>(IIZI)V
    .locals 9

    .line 70
    const/16 v7, 0x30

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v8}, Landroidx/paging/PagingConfig;-><init>(IIZIIIILjh2;)V

    return-void
.end method

.method public constructor <init>(IIZII)V
    .locals 9

    .line 71
    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Landroidx/paging/PagingConfig;-><init>(IIZIIIILjh2;)V

    return-void
.end method

.method public constructor <init>(IIZIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/paging/PagingConfig;->pageSize:I

    iput p2, p0, Landroidx/paging/PagingConfig;->prefetchDistance:I

    iput-boolean p3, p0, Landroidx/paging/PagingConfig;->enablePlaceholders:Z

    iput p4, p0, Landroidx/paging/PagingConfig;->initialLoadSize:I

    iput p5, p0, Landroidx/paging/PagingConfig;->maxSize:I

    iput p6, p0, Landroidx/paging/PagingConfig;->jumpThreshold:I

    if-nez p3, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Placeholders and prefetch are the only ways to trigger loading of more data in PagingData, so either placeholders must be enabled, or prefetch distance must be > 0."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    const p0, 0x7fffffff

    if-eq p5, p0, :cond_3

    mul-int/lit8 p0, p2, 0x2

    add-int/2addr p0, p1

    if-lt p5, p0, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, ", prefetchDist="

    const-string p3, ", maxSize="

    const-string p4, "Maximum size must be at least pageSize + 2*prefetchDist, pageSize="

    invoke-static {p1, p2, p4, p0, p3}, Lbg;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p5, p0}, Lln;->f(ILjava/lang/StringBuilder;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    :goto_1
    const/high16 p0, -0x80000000

    if-eq p6, p0, :cond_5

    if-lez p6, :cond_4

    goto :goto_2

    :cond_4
    const-string p0, "jumpThreshold must be positive to enable jumps or COUNT_UNDEFINED to disable jumping."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_5
    :goto_2
    return-void
.end method

.method public synthetic constructor <init>(IIZIIIILjh2;)V
    .locals 0

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    move p2, p1

    :cond_0
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_1

    const/4 p3, 0x1

    :cond_1
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_2

    mul-int/lit8 p4, p1, 0x3

    :cond_2
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_3

    const p5, 0x7fffffff

    :cond_3
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_4

    const/high16 p6, -0x80000000

    .line 73
    :cond_4
    invoke-direct/range {p0 .. p6}, Landroidx/paging/PagingConfig;-><init>(IIZIII)V

    return-void
.end method
