.class public final Lya9;
.super Ll79;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll79<",
        "Lea9;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Lh16;


# direct methods
.method public constructor <init>(Lh16;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyu5;->a:Lj79;

    sget-object v0, Lyu5;->a:Lj79;

    sget-object v1, Lh16;->ZERO:Lh16;

    const/4 v2, 0x2

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    sget-object v3, Lh16;->SPACE:Lh16;

    if-ne p1, v3, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-direct {p0, v0, v1, v2}, Ll79;-><init>(Lj79;ILjava/lang/Integer;)V

    iput-object p1, p0, Lya9;->e:Lh16;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lya9;

    if-eqz v0, :cond_0

    check-cast p1, Lya9;

    iget-object p1, p1, Lya9;->e:Lh16;

    iget-object p0, p0, Lya9;->e:Lh16;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lya9;->e:Lh16;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
