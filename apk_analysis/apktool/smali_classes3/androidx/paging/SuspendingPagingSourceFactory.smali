.class public final Landroidx/paging/SuspendingPagingSourceFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lll3<",
        "Landroidx/paging/PagingSource<",
        "TKey;TValue;>;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Landroidx/paging/PagingSource<",
            "TKey;TValue;>;>;"
        }
    .end annotation
.end field

.field private final dispatcher:Lr22;


# direct methods
.method public constructor <init>(Lr22;Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr22;",
            "Lll3<",
            "+",
            "Landroidx/paging/PagingSource<",
            "TKey;TValue;>;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/SuspendingPagingSourceFactory;->dispatcher:Lr22;

    iput-object p2, p0, Landroidx/paging/SuspendingPagingSourceFactory;->delegate:Lll3;

    return-void
.end method

.method public static final synthetic access$getDelegate$p(Landroidx/paging/SuspendingPagingSourceFactory;)Lll3;
    .locals 0

    iget-object p0, p0, Landroidx/paging/SuspendingPagingSourceFactory;->delegate:Lll3;

    return-object p0
.end method


# virtual methods
.method public final create(Le02;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Landroidx/paging/PagingSource<",
            "TKey;TValue;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/paging/SuspendingPagingSourceFactory;->dispatcher:Lr22;

    new-instance v1, Landroidx/paging/SuspendingPagingSourceFactory$create$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/paging/SuspendingPagingSourceFactory$create$2;-><init>(Landroidx/paging/SuspendingPagingSourceFactory;Le02;)V

    invoke-static {v0, v1, p1}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke()Landroidx/paging/PagingSource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/PagingSource<",
            "TKey;TValue;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/SuspendingPagingSourceFactory;->delegate:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/paging/PagingSource;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Landroidx/paging/SuspendingPagingSourceFactory;->invoke()Landroidx/paging/PagingSource;

    move-result-object p0

    return-object p0
.end method
