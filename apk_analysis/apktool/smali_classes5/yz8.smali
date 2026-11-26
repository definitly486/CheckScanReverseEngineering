.class public final Lyz8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyz8$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "status"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "dateTime"
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "valueText"
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "titleValueText"
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "message"
    .end annotation
.end field

.field private final f:Lyz8$a;
    .annotation runtime Lbq7;
        value = "bottomSheet"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lyz8$a;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lm2;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyz8;->a:Ljava/lang/String;

    iput-object p2, p0, Lyz8;->b:Ljava/lang/String;

    iput-object p3, p0, Lyz8;->c:Ljava/lang/String;

    iput-object p4, p0, Lyz8;->d:Ljava/lang/String;

    iput-object p5, p0, Lyz8;->e:Ljava/lang/String;

    iput-object p6, p0, Lyz8;->f:Lyz8$a;

    return-void
.end method


# virtual methods
.method public final a()Lxz8;
    .locals 7

    new-instance v0, Lxz8;

    iget-object v1, p0, Lyz8;->a:Ljava/lang/String;

    const-string v2, "SUCCESS"

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lxz8$b;->Success:Lxz8$b;

    goto :goto_0

    :cond_0
    sget-object v1, Lxz8$b;->Fail:Lxz8$b;

    :goto_0
    iget-object v2, p0, Lyz8;->b:Ljava/lang/String;

    iget-object v3, p0, Lyz8;->c:Ljava/lang/String;

    iget-object v4, p0, Lyz8;->d:Ljava/lang/String;

    iget-object v5, p0, Lyz8;->e:Ljava/lang/String;

    iget-object p0, p0, Lyz8;->f:Lyz8$a;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lyz8$a;->a()Lxz8$a;

    move-result-object p0

    :goto_1
    move-object v6, p0

    goto :goto_2

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :goto_2
    invoke-direct/range {v0 .. v6}, Lxz8;-><init>(Lxz8$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxz8$a;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyz8;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyz8;

    iget-object v1, p0, Lyz8;->a:Ljava/lang/String;

    iget-object v3, p1, Lyz8;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lyz8;->b:Ljava/lang/String;

    iget-object v3, p1, Lyz8;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lyz8;->c:Ljava/lang/String;

    iget-object v3, p1, Lyz8;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lyz8;->d:Ljava/lang/String;

    iget-object v3, p1, Lyz8;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lyz8;->e:Ljava/lang/String;

    iget-object v3, p1, Lyz8;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lyz8;->f:Lyz8$a;

    iget-object p1, p1, Lyz8;->f:Lyz8$a;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lyz8;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lyz8;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lyz8;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lyz8;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lyz8;->e:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lyz8;->f:Lyz8$a;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lyz8$a;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lyz8;->a:Ljava/lang/String;

    iget-object v1, p0, Lyz8;->b:Ljava/lang/String;

    iget-object v2, p0, Lyz8;->c:Ljava/lang/String;

    iget-object v3, p0, Lyz8;->d:Ljava/lang/String;

    iget-object v4, p0, Lyz8;->e:Ljava/lang/String;

    iget-object p0, p0, Lyz8;->f:Lyz8$a;

    const-string v5, ", dateTime="

    const-string v6, ", valueText="

    const-string v7, "TransferPhoneResultResponse(status="

    invoke-static {v7, v0, v5, v1, v6}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", titleValueText="

    const-string v5, ", message="

    invoke-static {v0, v2, v1, v3, v5}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomSheet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
