.class public final Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverResponse;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "IncomingCallRetrieverResponseCreator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverResponse$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverResponse$Companion;


# instance fields
.field public final b:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getPhoneNumber"
        id = 0x1
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getIncomingCallVerificationStatusCode"
        id = 0x2
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getErrorDetails"
        id = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverResponse$Companion;-><init>(Ljh2;)V

    sput-object v0, Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverResponse;->Companion:Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverResponse$Companion;

    new-instance v0, Lcom/google/android/gms/auth/api/phone/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/phone/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .annotation runtime Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverResponse;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverResponse;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverResponse;->d:Ljava/lang/String;

    const/4 p0, 0x0

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    sget-object v0, Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverStatusCodes;->INSTANCE:Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverStatusCodes;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverStatusCodes;->getVerificationStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "incomingCallVerificationStatusCode should be SUCCESS when phone number is set."

    invoke-static {p1}, Lfg;->c(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    sget-object p1, Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverStatusCodes;->INSTANCE:Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverStatusCodes;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverStatusCodes;->getVerificationStatusCodeString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "Phone number must not be null when verificationStatus is SUCCESS."

    invoke-static {p1}, Lfg;->c(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final getErrorDetails()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverResponse;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getIncomingCallVerificationStatusCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverResponse;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverResponse;->b:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverResponse;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverResponse;->getIncomingCallVerificationStatusCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/phone/IncomingCallRetrieverResponse;->getErrorDetails()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
