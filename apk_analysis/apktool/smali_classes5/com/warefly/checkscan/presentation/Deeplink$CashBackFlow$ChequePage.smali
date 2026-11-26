.class public final Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$ChequePage;
.super Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChequePage"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$ChequePage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$ChequePage$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$ChequePage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const-string v0, "receipts"

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/presentation/Deeplink;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$ChequePage;->c:I

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

    iget p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$ChequePage;->c:I

    const-string v0, "?id="

    invoke-static {p0, v0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$ChequePage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$ChequePage;

    iget p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$ChequePage;->c:I

    iget p1, p1, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$ChequePage;->c:I

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$ChequePage;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ChequePage(chequeId="

    const-string v1, ")"

    iget p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$ChequePage;->c:I

    invoke-static {p0, v0, v1}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$ChequePage;->c:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
