.class public final synthetic Lb5c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lks;


# static fields
.field public static final synthetic a:Lb5c;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lb5c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lb5c;->a:Lb5c;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    check-cast p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmk;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzmk;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method
