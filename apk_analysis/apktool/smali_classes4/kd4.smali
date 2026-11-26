.class public final Lkd4;
.super Lpc4;
.source "SourceFile"


# instance fields
.field public final b:Lxq4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxq4<",
            "Ljava/lang/String;",
            "Lpc4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lpc4;-><init>()V

    new-instance v0, Lxq4;

    sget-object v1, Lxq4;->j:Lxq4$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lxq4;-><init>(Z)V

    iput-object v0, p0, Lkd4;->b:Lxq4;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Lkd4;

    if-eqz v0, :cond_0

    check-cast p1, Lkd4;

    iget-object p1, p1, Lkd4;->b:Lxq4;

    iget-object p0, p0, Lkd4;->b:Lxq4;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final h(Ljava/lang/String;)Lpc4;
    .locals 0

    iget-object p0, p0, Lkd4;->b:Lxq4;

    invoke-virtual {p0, p1}, Lxq4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpc4;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lkd4;->b:Lxq4;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
