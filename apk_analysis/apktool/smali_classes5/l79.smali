.class public abstract Ll79;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx83;


# annotations
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

.field public final b:I

.field public final c:Ljava/lang/Integer;

.field public final d:I


# direct methods
.method public constructor <init>(Lj79;ILjava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj79<",
            "-TTarget;>;I",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll79;->a:Lj79;

    iput p2, p0, Ll79;->b:I

    iput-object p3, p0, Ll79;->c:Ljava/lang/Integer;

    iget p1, p1, Lj79;->g:I

    iput p1, p0, Ll79;->d:I

    if-ltz p2, :cond_3

    const/16 p0, 0x29

    if-lt p1, p2, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-le p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "The space padding ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ") should be more than the minimum number of digits ("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void

    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "The maximum number of digits ("

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is less than the minimum number of digits ("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p0, "The minimum number of digits ("

    const-string p1, ") is negative"

    invoke-static {p2, p0, p1}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    new-instance v0, Lm79;

    new-instance v1, Ll79$a;

    iget-object v2, p0, Ll79;->a:Lj79;

    iget-object v3, v2, Lj79;->a:Lwr6;

    const-string v6, "getterNotNull(Ljava/lang/Object;)Ljava/lang/Object;"

    const/4 v7, 0x0

    const/4 v2, 0x1

    const-class v4, Ld3;

    const-string v5, "getterNotNull"

    invoke-direct/range {v1 .. v7}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget v1, p0, Ll79;->b:I

    const-string v2, "The minimum number of digits ("

    if-ltz v1, :cond_2

    const/16 v3, 0x9

    if-gt v1, v3, :cond_1

    iget-object p0, p0, Ll79;->c:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    new-instance p0, Ld58;

    invoke-direct {p0, v0}, Ld58;-><init>(Lvi3;)V

    return-object p0

    :cond_0
    return-object v0

    :cond_1
    const-string p0, ") exceeds the length of an Int"

    invoke-static {v1, v2, p0}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    const-string p0, ") is negative"

    invoke-static {v1, v2, p0}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
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

    iget v0, p0, Ll79;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Ll79;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Ll79;->a:Lj79;

    iget-object v4, v0, Lj79;->a:Lwr6;

    iget-object v5, v0, Lj79;->d:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v3, p0, Ll79;->c:Ljava/lang/Integer;

    invoke-static/range {v1 .. v6}, Lor4;->b(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhs;Ljava/lang/String;Z)La46;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic c()Ld93;
    .locals 0

    iget-object p0, p0, Ll79;->a:Lj79;

    return-object p0
.end method
