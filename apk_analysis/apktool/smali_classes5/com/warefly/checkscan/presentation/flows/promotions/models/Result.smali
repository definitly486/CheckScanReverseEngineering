.class public final enum Lcom/warefly/checkscan/presentation/flows/promotions/models/Result;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/warefly/checkscan/presentation/flows/promotions/models/Result;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/warefly/checkscan/presentation/flows/promotions/models/Result;

.field public static final enum ALREADY_EXIST:Lcom/warefly/checkscan/presentation/flows/promotions/models/Result;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/warefly/checkscan/presentation/flows/promotions/models/Result;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ERROR:Lcom/warefly/checkscan/presentation/flows/promotions/models/Result;

.field public static final enum SUCCESS:Lcom/warefly/checkscan/presentation/flows/promotions/models/Result;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/promotions/models/Result;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/warefly/checkscan/presentation/flows/promotions/models/Result;->SUCCESS:Lcom/warefly/checkscan/presentation/flows/promotions/models/Result;

    new-instance v1, Lcom/warefly/checkscan/presentation/flows/promotions/models/Result;

    const-string v2, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/warefly/checkscan/presentation/flows/promotions/models/Result;->ERROR:Lcom/warefly/checkscan/presentation/flows/promotions/models/Result;

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/promotions/models/Result;

    const-string v3, "ALREADY_EXIST"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/warefly/checkscan/presentation/flows/promotions/models/Result;->ALREADY_EXIST:Lcom/warefly/checkscan/presentation/flows/promotions/models/Result;

    filled-new-array {v0, v1, v2}, [Lcom/warefly/checkscan/presentation/flows/promotions/models/Result;

    move-result-object v0

    sput-object v0, Lcom/warefly/checkscan/presentation/flows/promotions/models/Result;->$VALUES:[Lcom/warefly/checkscan/presentation/flows/promotions/models/Result;

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/promotions/models/Result$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/flows/promotions/models/Result;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/warefly/checkscan/presentation/flows/promotions/models/Result;
    .locals 1

    const-class v0, Lcom/warefly/checkscan/presentation/flows/promotions/models/Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/promotions/models/Result;

    return-object p0
.end method

.method public static values()[Lcom/warefly/checkscan/presentation/flows/promotions/models/Result;
    .locals 1

    sget-object v0, Lcom/warefly/checkscan/presentation/flows/promotions/models/Result;->$VALUES:[Lcom/warefly/checkscan/presentation/flows/promotions/models/Result;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/warefly/checkscan/presentation/flows/promotions/models/Result;

    return-object v0
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

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
