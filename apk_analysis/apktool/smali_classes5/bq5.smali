.class public final Lbq5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldf4<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ldf4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf4<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lnp7;


# direct methods
.method public constructor <init>(Ldf4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldf4<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbq5;->a:Ldf4;

    new-instance v0, Lnp7;

    invoke-interface {p1}, Lxp7;->getDescriptor()Lmp7;

    move-result-object p1

    invoke-direct {v0, p1}, Lnp7;-><init>(Lmp7;)V

    iput-object v0, p0, Lbq5;->b:Lnp7;

    return-void
.end method


# virtual methods
.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lud2;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lud2;->decodeNotNullMark()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lbq5;->a:Ldf4;

    check-cast p0, Lxl2;

    invoke-interface {p1, p0}, Lud2;->decodeSerializableValue(Lxl2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lud2;->decodeNull()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lbq5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lbq5;

    iget-object p0, p0, Lbq5;->a:Ldf4;

    iget-object p1, p1, Lbq5;->a:Ldf4;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    iget-object p0, p0, Lbq5;->b:Lnp7;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lbq5;->a:Ldf4;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lux2;",
            "TT;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lux2;->encodeNotNullMark()V

    iget-object p0, p0, Lbq5;->a:Ldf4;

    check-cast p0, Lxp7;

    invoke-interface {p1, p0, p2}, Lux2;->encodeSerializableValue(Lxp7;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lux2;->encodeNull()V

    return-void
.end method
