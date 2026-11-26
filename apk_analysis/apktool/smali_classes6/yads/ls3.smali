.class public final Lyads/ls3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/pn0;


# instance fields
.field public final a:Lyads/d9;


# direct methods
.method public constructor <init>(Lyads/d9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ls3;->a:Lyads/d9;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .locals 0

    sget-object p1, Lyads/tn0;->b:[Lyads/tn0;

    iget-object p0, p0, Lyads/ls3;->a:Lyads/d9;

    iget-object p0, p0, Lyads/d9;->k:Ljava/lang/String;

    const-string p1, "lightBundle"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/ls3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/ls3;

    iget-object p0, p0, Lyads/ls3;->a:Lyads/d9;

    iget-object p1, p1, Lyads/ls3;->a:Lyads/d9;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lyads/ls3;->a:Lyads/d9;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lyads/ls3;->a:Lyads/d9;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LightBundleDesignConstraint(adResponse="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
