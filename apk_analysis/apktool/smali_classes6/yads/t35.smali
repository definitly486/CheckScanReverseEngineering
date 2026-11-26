.class public final Lyads/t35;
.super Lyads/u35;
.source "SourceFile"


# instance fields
.field public final a:Lyads/s35;


# direct methods
.method public constructor <init>(Lyads/s35;)V
    .locals 0

    invoke-direct {p0}, Lyads/u35;-><init>()V

    iput-object p1, p0, Lyads/t35;->a:Lyads/s35;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/t35;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/t35;

    iget-object p0, p0, Lyads/t35;->a:Lyads/s35;

    iget-object p1, p1, Lyads/t35;->a:Lyads/s35;

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lyads/t35;->a:Lyads/s35;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lyads/t35;->a:Lyads/s35;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Relative(type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
