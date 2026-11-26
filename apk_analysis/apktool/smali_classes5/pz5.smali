.class public final Lpz5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loz5;


# instance fields
.field public final a:Liz5;


# direct methods
.method public constructor <init>(Liz5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpz5;->a:Liz5;

    return-void
.end method


# virtual methods
.method public final a(II)Lmz7;
    .locals 2

    const/4 v0, 0x0

    iget-object p0, p0, Lpz5;->a:Liz5;

    const/16 v1, 0xf

    invoke-interface {p0, p1, p2, v1, v0}, Liz5;->c(IIILjava/lang/Long;)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final b(I)Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmz7<",
            "Ljava/util/List<",
            "Lfz5;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lpz5;->a:Liz5;

    invoke-interface {p0, p1}, Liz5;->b(I)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "Ljava/util/List<",
            "Lpy5;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lpz5;->a:Liz5;

    invoke-interface {p0}, Liz5;->a()Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final d(IJ)Lmz7;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p0, p0, Lpz5;->a:Liz5;

    const/16 p3, 0xf

    invoke-interface {p0, v0, p1, p3, p2}, Liz5;->c(IIILjava/lang/Long;)Lmz7;

    move-result-object p0

    return-object p0
.end method
