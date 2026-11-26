.class public final Lwc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfo5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lfo5<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lwu1;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lwu1;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwc;->a:Lwu1;

    iput-object p2, p0, Lwc;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Lvi3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lvi3<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lwc;->a:Lwu1;

    invoke-virtual {p0}, Lwu1;->a()Lvi3;

    move-result-object p0

    return-object p0
.end method

.method public final b()La46;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La46<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lu96;->e()Lar4;

    move-result-object v0

    iget-object v1, p0, Lwc;->a:Lwu1;

    invoke-virtual {v1}, Lwu1;->b()La46;

    move-result-object v1

    invoke-virtual {v0, v1}, Lar4;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lwc;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti3;

    invoke-interface {v1}, Lti3;->b()La46;

    move-result-object v1

    invoke-virtual {v0, v1}, Lar4;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lu96;->d(Lar4;)Lar4;

    move-result-object p0

    new-instance v0, La46;

    sget-object v1, Lkx2;->b:Lkx2;

    invoke-direct {v0, v1, p0}, La46;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lwc;

    if-eqz v0, :cond_0

    check-cast p1, Lwc;

    iget-object v0, p1, Lwc;->a:Lwu1;

    iget-object v1, p0, Lwc;->a:Lwu1;

    invoke-virtual {v1, v0}, Lwu1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lwc;->b:Ljava/util/ArrayList;

    iget-object p1, p1, Lwc;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lwc;->a:Lwu1;

    invoke-virtual {v0}, Lwu1;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lwc;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AlternativesParsing("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lwc;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
