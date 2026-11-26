.class public final Ljd5;
.super Lxh5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lxh5<",
        "Lk92;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Lkd5;


# direct methods
.method public constructor <init>(Lkd5;)V
    .locals 3

    sget-object v0, Ll92;->b:Lj79;

    iget-object v1, p1, Lkd5;->a:Ljava/util/List;

    const-string v2, "monthName"

    invoke-direct {p0, v0, v1, v2}, Lxh5;-><init>(Lj79;Ljava/util/List;Ljava/lang/String;)V

    iput-object p1, p0, Ljd5;->d:Lkd5;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljd5;

    if-eqz v0, :cond_0

    iget-object p0, p0, Ljd5;->d:Lkd5;

    iget-object p0, p0, Lkd5;->a:Ljava/util/List;

    check-cast p1, Ljd5;

    iget-object p1, p1, Ljd5;->d:Lkd5;

    iget-object p1, p1, Lkd5;->a:Ljava/util/List;

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

    iget-object p0, p0, Ljd5;->d:Lkd5;

    iget-object p0, p0, Lkd5;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
