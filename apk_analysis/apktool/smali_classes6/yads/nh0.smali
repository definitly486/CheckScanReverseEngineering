.class public final Lyads/nh0;
.super Lyads/uh0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lyads/mh0;->b:Lyads/mh0;

    invoke-direct {p0}, Lyads/uh0;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lyads/nh0;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    sget-object p0, Lyads/mh0;->b:Lyads/mh0;

    return v0
.end method

.method public final hashCode()I
    .locals 1

    sget-object p0, Lyads/mh0;->b:Lyads/mh0;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const v0, -0x72a1394

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    sget-object p0, Lyads/mh0;->b:Lyads/mh0;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Button(text=Enable Test mode, actionType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
