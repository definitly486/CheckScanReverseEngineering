.class public final Lyads/o66;
.super Lyads/u66;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lyads/u66;-><init>()V

    iput-object p1, p0, Lyads/o66;->b:Ljava/lang/String;

    iput p2, p0, Lyads/o66;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lyads/o66;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final a(I)V
    .locals 2

    sget-object v0, Lyads/bt4;->a:Lnl3;

    invoke-static {p1}, Lyads/l20;->a(I)Lyads/l20;

    move-result-object v1

    invoke-interface {v0, v1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lyads/l20;->b(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lyads/o66;->b(I)V

    return-void

    :cond_0
    new-instance p0, Lyads/k76;

    invoke-static {p1}, Lyads/l20;->d(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Wrong value format for color variable: \'"

    const-string v1, "\'"

    invoke-static {v0, p1, v1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lyads/k76;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p0
.end method

.method public final b(I)V
    .locals 1

    iget v0, p0, Lyads/o66;->c:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lyads/o66;->c:I

    invoke-virtual {p0, p0}, Lyads/u66;->a(Lyads/u66;)V

    return-void
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lyads/o66;->c:I

    return p0
.end method
