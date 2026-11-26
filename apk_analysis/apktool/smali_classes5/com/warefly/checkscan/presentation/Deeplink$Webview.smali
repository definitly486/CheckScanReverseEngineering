.class public final Lcom/warefly/checkscan/presentation/Deeplink$Webview;
.super Lcom/warefly/checkscan/presentation/Deeplink;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/Deeplink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Webview"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/warefly/checkscan/presentation/Deeplink$Webview;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/Deeplink$Webview$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/Deeplink$Webview;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "webview"

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/presentation/Deeplink;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/warefly/checkscan/presentation/Deeplink$Webview;->c:I

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/Deeplink$Webview;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/Deeplink$Webview;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/Deeplink$Webview;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/warefly/checkscan/presentation/Deeplink$Webview;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/warefly/checkscan/presentation/Deeplink$Webview;

    iget v1, p0, Lcom/warefly/checkscan/presentation/Deeplink$Webview;->c:I

    iget v3, p1, Lcom/warefly/checkscan/presentation/Deeplink$Webview;->c:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/warefly/checkscan/presentation/Deeplink$Webview;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/warefly/checkscan/presentation/Deeplink$Webview;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/warefly/checkscan/presentation/Deeplink$Webview;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/warefly/checkscan/presentation/Deeplink$Webview;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$Webview;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/warefly/checkscan/presentation/Deeplink$Webview;->f:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/warefly/checkscan/presentation/Deeplink$Webview;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/Deeplink$Webview;->d:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/Deeplink$Webview;->e:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$Webview;->f:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", tab="

    const-string v1, ", target="

    iget v2, p0, Lcom/warefly/checkscan/presentation/Deeplink$Webview;->c:I

    const-string v3, "Webview(id="

    iget-object v4, p0, Lcom/warefly/checkscan/presentation/Deeplink$Webview;->d:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lng;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", campaignCode="

    const-string v2, ")"

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/Deeplink$Webview;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$Webview;->f:Ljava/lang/String;

    invoke-static {v0, v3, v1, p0, v2}, Ldg;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p0, Lcom/warefly/checkscan/presentation/Deeplink$Webview;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/warefly/checkscan/presentation/Deeplink$Webview;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/warefly/checkscan/presentation/Deeplink$Webview;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$Webview;->f:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
