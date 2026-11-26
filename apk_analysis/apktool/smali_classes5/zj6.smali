.class public final Lzj6;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.products.data.repositoryImpl.ProductsRepositoryImpl"
    f = "ProductsRepositoryImpl.kt"
    l = {
        0x3a
    }
    m = "fetchSelectionsByFilter"
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ldk6;

.field public n:I


# direct methods
.method public constructor <init>(Ldk6;Lf02;)V
    .locals 0

    iput-object p1, p0, Lzj6;->m:Ldk6;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lzj6;->l:Ljava/lang/Object;

    iget p1, p0, Lzj6;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lzj6;->n:I

    iget-object p1, p0, Lzj6;->m:Ldk6;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, p0}, Ldk6;->a(IIILf02;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method
