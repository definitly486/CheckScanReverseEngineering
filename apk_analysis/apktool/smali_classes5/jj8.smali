.class public final Ljj8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljj8;->e:I

    iput-object p1, p0, Ljj8;->c:Ljava/lang/String;

    iput-object p2, p0, Ljj8;->d:Ljava/lang/String;

    iput-object p3, p0, Ljj8;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljj8;->e()Ljj8;

    move-result-object p0

    return-object p0
.end method

.method public final e()Ljj8;
    .locals 0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljj8;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lti0;->f(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljj8;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ljj8;

    iget-object v1, p0, Ljj8;->c:Ljava/lang/String;

    iget-object v3, p1, Ljj8;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljj8;->b:Ljava/lang/String;

    iget-object v3, p1, Ljj8;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljj8;->d:Ljava/lang/String;

    iget-object v3, p1, Ljj8;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p0, p0, Ljj8;->e:I

    iget p1, p1, Ljj8;->e:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final f(I)Z
    .locals 0

    iget p0, p0, Ljj8;->e:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final h()Z
    .locals 0

    iget p0, p0, Ljj8;->e:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Ljj8;->c:Ljava/lang/String;

    iget-object p0, p0, Ljj8;->b:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final i()Z
    .locals 1

    iget p0, p0, Ljj8;->e:I

    and-int/lit8 v0, p0, 0x10

    if-nez v0, :cond_1

    and-int/lit8 p0, p0, 0x2

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

.method public final j(I)V
    .locals 1

    iget v0, p0, Ljj8;->e:I

    or-int/2addr p1, v0

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljj8;->e:I

    return-void
.end method

.method public final k()Lkx8;
    .locals 1

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Ljj8;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lkx8;->Rcdata:Lkx8;

    return-object p0

    :cond_0
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Ljj8;->f(I)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lkx8;->Rawtext:Lkx8;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljj8;->c:Ljava/lang/String;

    return-object p0
.end method
