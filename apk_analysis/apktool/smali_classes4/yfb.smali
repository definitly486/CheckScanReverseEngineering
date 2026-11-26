.class public final Lyfb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# static fields
.field public static final c:Lrfb;


# instance fields
.field public final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrfb;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyfb;->c:Lrfb;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    new-instance v0, Lufb;

    :try_start_0
    const-string v1, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstance"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsgb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Lyfb;->c:Lrfb;

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Lsgb;

    sget-object v3, Lzbb;->a:Lzbb;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Lufb;-><init>([Lsgb;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lyfb;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/auth-api/zbat;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyfb;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object p0, p0, Lyfb;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/auth-api/zbat;

    check-cast p1, Lcom/google/android/gms/internal/auth-api/zbau;

    new-instance v0, Lyma;

    invoke-direct {v0, p0, p2}, Lyma;-><init>(Lcom/google/android/gms/internal/auth-api/zbat;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/auth-api/zbv;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/auth-api/zbba;->zba(Landroid/content/Context;)Lcom/google/android/gms/common/api/ApiMetadata;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/auth-api/zbat;->a:Ljava/lang/String;

    invoke-virtual {p2, v0, p0, p1}, Lcom/google/android/gms/internal/auth-api/zbv;->zbd(Lcom/google/android/gms/common/api/internal/IStatusCallback;Ljava/lang/String;Lcom/google/android/gms/common/api/ApiMetadata;)V

    return-void
.end method
