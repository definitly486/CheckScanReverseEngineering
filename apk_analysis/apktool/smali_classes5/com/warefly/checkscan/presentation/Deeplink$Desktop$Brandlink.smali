.class public final Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;
.super Lcom/warefly/checkscan/presentation/Deeplink$Desktop;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/Deeplink$Desktop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Brandlink"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "brandlink"

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/presentation/Deeplink;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->c:I

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->f:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->g:Z

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->h:Ljava/lang/String;

    iput-object p6, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->i:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->j:Z

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->c:I

    const-string v0, "?id="

    invoke-static {p0, v0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;

    iget v1, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->c:I

    iget v3, p1, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->c:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->g:Z

    iget-boolean v3, p1, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->g:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->j:Z

    iget-boolean p1, p1, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->j:Z

    if-eq p0, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->d:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->e:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->f:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->g:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->j:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", tab="

    const-string v1, ", target="

    iget v2, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->c:I

    const-string v3, "Brandlink(webviewId="

    iget-object v4, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->d:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lng;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", campaignCode="

    const-string v2, ", fromShowCase="

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->f:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", offerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", categoryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->j:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->g:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->j:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
