.class public Landroidx/paging/PositionalDataSource$LoadInitialParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/PositionalDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadInitialParams"
.end annotation


# instance fields
.field public final pageSize:I

.field public final placeholdersEnabled:Z

.field public final requestedLoadSize:I

.field public final requestedStartPosition:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/paging/PositionalDataSource$LoadInitialParams;->requestedStartPosition:I

    iput p2, p0, Landroidx/paging/PositionalDataSource$LoadInitialParams;->requestedLoadSize:I

    iput p3, p0, Landroidx/paging/PositionalDataSource$LoadInitialParams;->pageSize:I

    iput-boolean p4, p0, Landroidx/paging/PositionalDataSource$LoadInitialParams;->placeholdersEnabled:Z

    if-ltz p1, :cond_2

    if-ltz p2, :cond_1

    if-ltz p3, :cond_0

    return-void

    :cond_0
    const-string p0, "invalid page size: "

    invoke-static {p3, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lj2;->d(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    const-string p0, "invalid load size: "

    invoke-static {p2, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lj2;->d(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    const-string p0, "invalid start position: "

    invoke-static {p1, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lj2;->d(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
