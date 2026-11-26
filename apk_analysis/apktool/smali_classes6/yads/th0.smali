.class public final Lyads/th0;
.super Lyads/uh0;
.source "SourceFile"


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    sget-object v0, Lyads/sh0;->b:Lyads/sh0;

    invoke-direct {p0}, Lyads/uh0;-><init>()V

    iput-boolean p1, p0, Lyads/th0;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lyads/uh0;)Z
    .locals 0

    instance-of p0, p1, Lyads/th0;

    if-eqz p0, :cond_0

    sget-object p0, Lyads/sh0;->b:Lyads/sh0;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/th0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/th0;

    sget-object v1, Lyads/sh0;->b:Lyads/sh0;

    iget-boolean p0, p0, Lyads/th0;->a:Z

    iget-boolean p1, p1, Lyads/th0;->a:Z

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 2

    sget-object v0, Lyads/sh0;->b:Lyads/sh0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x48db848a

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lyads/th0;->a:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Lyads/sh0;->b:Lyads/sh0;

    iget-boolean p0, p0, Lyads/th0;->a:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Switch(text=Debug Error Indicator, switchType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", initialState="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
