.class public final Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$CashbackProfile;
.super Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CashbackProfile"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$CashbackProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$CashbackProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$CashbackProfile;

    invoke-direct {v0}, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$CashbackProfile;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$CashbackProfile;->c:Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$CashbackProfile;

    new-instance v0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$CashbackProfile$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$CashbackProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "cashback"

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/presentation/Deeplink;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
