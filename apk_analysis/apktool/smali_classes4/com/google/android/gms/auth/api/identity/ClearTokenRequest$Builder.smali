.class public final Lcom/google/android/gms/auth/api/identity/ClearTokenRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;
    .locals 2

    new-instance v0, Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/ClearTokenRequest$Builder;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/auth/api/identity/ClearTokenRequest$Builder;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/ClearTokenRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/ClearTokenRequest$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final zba(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/ClearTokenRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/ClearTokenRequest$Builder;->b:Ljava/lang/String;

    return-object p0
.end method
