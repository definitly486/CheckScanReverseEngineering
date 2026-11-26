.class public abstract Lxh5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxh5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Target:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lx83<",
        "TTarget;>;"
    }
.end annotation


# instance fields
.field public final a:Lj79;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj79<",
            "TTarget;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lj79;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj79<",
            "-TTarget;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxh5;->a:Lj79;

    iput-object p2, p0, Lxh5;->b:Ljava/util/List;

    iput-object p3, p0, Lxh5;->c:Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    iget p3, p1, Lj79;->c:I

    iget p1, p1, Lj79;->b:I

    sub-int/2addr p3, p1

    add-int/lit8 p3, p3, 0x1

    if-ne p0, p3, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "The number of values ("

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") in "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not match the range of the field ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-static {p0, p3, p1}, Lrg;->h(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a()Lvi3;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lvi3<",
            "TTarget;>;"
        }
    .end annotation

    new-instance v0, Lv98;

    new-instance v1, Lxh5$b;

    const-string v6, "getStringValue(Ljava/lang/Object;)Ljava/lang/String;"

    const/4 v7, 0x0

    const/4 v2, 0x1

    const-class v4, Lxh5;

    const-string v5, "getStringValue"

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0
.end method

.method public final b()La46;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La46<",
            "TTarget;>;"
        }
    .end annotation

    new-instance v0, La46;

    new-instance v1, Lda8;

    iget-object v2, p0, Lxh5;->b:Ljava/util/List;

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    new-instance v4, Lxh5$a;

    invoke-direct {v4, p0}, Lxh5$a;-><init>(Lxh5;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "one of "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lxh5;->c:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v3, v4, p0}, Lda8;-><init>(Ljava/util/Collection;Lxh5$a;Ljava/lang/String;)V

    invoke-static {v1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v1, Lkx2;->b:Lkx2;

    invoke-direct {v0, p0, v1}, La46;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final bridge synthetic c()Ld93;
    .locals 0

    iget-object p0, p0, Lxh5;->a:Lj79;

    return-object p0
.end method
