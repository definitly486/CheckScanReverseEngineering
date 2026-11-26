.class public final Lzbb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsgb;


# static fields
.field public static final a:Lzbb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzbb;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lzbb;->a:Lzbb;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Logb;
    .locals 2

    const-class p0, Lcom/google/android/gms/internal/auth/zzev;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/auth/zzev;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/zzev;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/auth/zzev;->h(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Logb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unable to get message info for "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lmg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unsupported message type: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v1
.end method

.method public final b(Ljava/lang/Class;)Z
    .locals 0

    const-class p0, Lcom/google/android/gms/internal/auth/zzev;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method
