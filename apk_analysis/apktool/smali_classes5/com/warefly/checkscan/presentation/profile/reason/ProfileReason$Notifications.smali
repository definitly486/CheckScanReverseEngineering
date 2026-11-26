.class public final Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$Notifications;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Notifications"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$Notifications;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$Notifications;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$Notifications;

    invoke-direct {v0}, Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$Notifications;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$Notifications;->b:Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$Notifications;

    new-instance v0, Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$Notifications$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$Notifications;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
