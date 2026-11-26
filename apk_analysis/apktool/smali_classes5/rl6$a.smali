.class public final Lrl6$a;
.super Lrl6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrl6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final c:Lcom/warefly/checkscan/profile/domain/entities/PromocodeBlock;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/profile/domain/entities/PromocodeBlock;)V
    .locals 2

    const v0, 0x7f08028d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f1404f1

    invoke-direct {p0, v1, v0}, Lrl6;-><init>(ILjava/lang/Integer;)V

    iput-object p1, p0, Lrl6$a;->c:Lcom/warefly/checkscan/profile/domain/entities/PromocodeBlock;

    return-void
.end method


# virtual methods
.method public final e(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;)V
    .locals 0

    iget-object p0, p0, Lrl6$a;->c:Lcom/warefly/checkscan/profile/domain/entities/PromocodeBlock;

    invoke-interface {p1, p0}, Lsl6;->onActivatePromocodeClick(Lcom/warefly/checkscan/profile/domain/entities/PromocodeBlock;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lrl6$a;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lrl6$a;

    iget-object p0, p0, Lrl6$a;->c:Lcom/warefly/checkscan/profile/domain/entities/PromocodeBlock;

    iget-object p1, p1, Lrl6$a;->c:Lcom/warefly/checkscan/profile/domain/entities/PromocodeBlock;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/profile/domain/entities/PromocodeBlock;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lrl6$a;->c:Lcom/warefly/checkscan/profile/domain/entities/PromocodeBlock;

    invoke-virtual {p0}, Lcom/warefly/checkscan/profile/domain/entities/PromocodeBlock;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActivatePromocode(promocodeBlock="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lrl6$a;->c:Lcom/warefly/checkscan/profile/domain/entities/PromocodeBlock;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
