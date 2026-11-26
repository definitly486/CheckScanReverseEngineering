.class public final Lyads/ne3;
.super Lyads/oe3;
.source "SourceFile"


# instance fields
.field public final transient d:I

.field public final transient e:I

.field public final synthetic f:Lyads/oe3;


# direct methods
.method public constructor <init>(Lyads/oe3;II)V
    .locals 0

    iput-object p1, p0, Lyads/ne3;->f:Lyads/oe3;

    invoke-direct {p0}, Lyads/oe3;-><init>()V

    iput p2, p0, Lyads/ne3;->d:I

    iput p3, p0, Lyads/ne3;->e:I

    return-void
.end method


# virtual methods
.method public final a(II)Lyads/oe3;
    .locals 1

    iget v0, p0, Lyads/ne3;->e:I

    invoke-static {p1, p2, v0}, Lyads/wx4;->a(III)V

    iget-object v0, p0, Lyads/ne3;->f:Lyads/oe3;

    iget p0, p0, Lyads/ne3;->d:I

    add-int/2addr p1, p0

    add-int/2addr p2, p0

    invoke-virtual {v0, p1, p2}, Lyads/oe3;->a(II)Lyads/oe3;

    move-result-object p0

    return-object p0
.end method

.method public final b()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lyads/ne3;->f:Lyads/oe3;

    invoke-virtual {p0}, Lyads/ie3;->b()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, Lyads/ne3;->f:Lyads/oe3;

    invoke-virtual {v0}, Lyads/ie3;->d()I

    move-result v0

    iget v1, p0, Lyads/ne3;->d:I

    add-int/2addr v0, v1

    iget p0, p0, Lyads/ne3;->e:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lyads/ne3;->f:Lyads/oe3;

    invoke-virtual {v0}, Lyads/ie3;->d()I

    move-result v0

    iget p0, p0, Lyads/ne3;->d:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lyads/ne3;->e:I

    invoke-static {p1, v0}, Lyads/wx4;->a(II)V

    iget-object v0, p0, Lyads/ne3;->f:Lyads/oe3;

    iget p0, p0, Lyads/ne3;->d:I

    add-int/2addr p1, p0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lyads/oe3;->a(I)Lyads/le3;

    move-result-object p0

    return-object p0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lyads/oe3;->a(I)Lyads/le3;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lyads/oe3;->a(I)Lyads/le3;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lyads/ne3;->e:I

    return p0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyads/ne3;->a(II)Lyads/oe3;

    move-result-object p0

    return-object p0
.end method
