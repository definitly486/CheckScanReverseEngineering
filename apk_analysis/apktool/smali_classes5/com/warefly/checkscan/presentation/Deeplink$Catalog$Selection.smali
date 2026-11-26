.class public final Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Selection;
.super Lcom/warefly/checkscan/presentation/Deeplink$Catalog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/Deeplink$Catalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Selection"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Selection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final d:I

.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Selection$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Selection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "selection"

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/presentation/Deeplink$Catalog;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Selection;->d:I

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Selection;->e:Ljava/lang/String;

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

    iget p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Selection;->d:I

    const-string v0, "?selection_id="

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
    instance-of v1, p1, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Selection;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Selection;

    iget v1, p0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Selection;->d:I

    iget v3, p1, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Selection;->d:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Selection;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Selection;->e:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Selection;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Selection;->e:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, ", title="

    const-string v1, ")"

    iget v2, p0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Selection;->d:I

    const-string v3, "Selection(selectionId="

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Selection;->e:Ljava/lang/String;

    invoke-static {v2, v3, v0, p0, v1}, Lc9;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Selection;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Selection;->e:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
