.class public final Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;
.super Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransferShowcasePromos"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/Integer;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "transfer-showcase-promo"

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/presentation/Deeplink;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->c:I

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->e:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->g:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->c:I

    const-string v2, "?id="

    invoke-static {v1, v2}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "&onboardingKey="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "&source="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->g:Ljava/lang/Integer;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&source_task_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;

    iget v1, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->c:I

    iget v3, p1, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->c:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->e:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->e:Ljava/lang/Integer;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->g:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->g:Ljava/lang/Integer;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->d:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->e:Ljava/lang/Integer;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->f:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->g:Ljava/lang/Integer;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", onboardingKey="

    const-string v1, ", taskId="

    iget v2, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->c:I

    const-string v3, "TransferShowcasePromos(id="

    iget-object v4, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->d:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lng;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->e:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->g:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->e:Ljava/lang/Integer;

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v1, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;->g:Ljava/lang/Integer;

    if-nez p0, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
