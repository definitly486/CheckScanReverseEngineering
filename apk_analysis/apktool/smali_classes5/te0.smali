.class public final Lte0;
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
.field public final a:Lx83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx83<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx83;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx83<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lte0;->a:Lx83;

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

    iget-object p0, p0, Lte0;->a:Lx83;

    invoke-interface {p0}, Lx83;->a()Lvi3;

    move-result-object p0

    return-object p0
.end method

.method public final b()La46;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La46<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lte0;->a:Lx83;

    invoke-interface {p0}, Lx83;->b()La46;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lte0;

    if-eqz v0, :cond_0

    check-cast p1, Lte0;

    iget-object p1, p1, Lte0;->a:Lx83;

    iget-object p0, p0, Lte0;->a:Lx83;

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
    .locals 0

    iget-object p0, p0, Lte0;->a:Lx83;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BasicFormatStructure("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lte0;->a:Lx83;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
