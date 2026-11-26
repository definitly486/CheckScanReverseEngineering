.class public abstract Lej3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo22;


# instance fields
.field public final b:Lo22;


# direct methods
.method public constructor <init>(Lo22;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lej3;->b:Lo22;

    return-void
.end method


# virtual methods
.method public abstract b(Lej3;Lo22;)Lok2;
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lej3;->b:Lo22;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lbm3<",
            "-TR;-",
            "Lo22$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    iget-object p0, p0, Lej3;->b:Lo22;

    invoke-interface {p0, p1, p2}, Lo22;->fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(Lo22$b;)Lo22$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lo22$a;",
            ">(",
            "Lo22$b<",
            "TE;>;)TE;"
        }
    .end annotation

    iget-object p0, p0, Lej3;->b:Lo22;

    invoke-interface {p0, p1}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lej3;->b:Lo22;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final minusKey(Lo22$b;)Lo22;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo22$b<",
            "*>;)",
            "Lo22;"
        }
    .end annotation

    iget-object v0, p0, Lej3;->b:Lo22;

    invoke-interface {v0, p1}, Lo22;->minusKey(Lo22$b;)Lo22;

    move-result-object p1

    invoke-virtual {p0, p0, p1}, Lej3;->b(Lej3;Lo22;)Lok2;

    move-result-object p0

    return-object p0
.end method

.method public final plus(Lo22;)Lo22;
    .locals 1

    iget-object v0, p0, Lej3;->b:Lo22;

    invoke-interface {v0, p1}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p1

    invoke-virtual {p0, p0, p1}, Lej3;->b(Lej3;Lo22;)Lok2;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ForwardingCoroutineContext(delegate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lej3;->b:Lo22;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
