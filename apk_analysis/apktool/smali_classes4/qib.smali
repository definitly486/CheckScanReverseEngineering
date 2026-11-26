.class public final Lqib;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lqib;


# instance fields
.field public final a:Lyfb;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqib;

    invoke-direct {v0}, Lqib;-><init>()V

    sput-object v0, Lqib;->c:Lqib;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lqib;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lyfb;

    invoke-direct {v0}, Lyfb;-><init>()V

    iput-object v0, p0, Lqib;->a:Lyfb;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcjb;
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    iget-object v1, p0, Lqib;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcjb;

    if-nez v2, :cond_a

    sget-object v2, Lljb;->a:Ljava/lang/Class;

    const-class v2, Lcom/google/android/gms/internal/auth/zzev;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lljb;->a:Ljava/lang/Class;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lqib;->a:Lyfb;

    iget-object p0, p0, Lyfb;->b:Ljava/lang/Object;

    check-cast p0, Lufb;

    invoke-virtual {p0, p1}, Lufb;->a(Ljava/lang/Class;)Logb;

    move-result-object p0

    invoke-interface {p0}, Logb;->zzb()Z

    move-result v3

    const-string v4, "Protobuf runtime is not correctly loaded."

    if-eqz v3, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lljb;->c:Lcom/google/android/gms/internal/auth/e;

    sget-object v2, Lgbb;->a:Lcom/google/android/gms/internal/auth/a;

    invoke-interface {p0}, Logb;->zza()Lcom/google/android/gms/internal/auth/zzfx;

    move-result-object p0

    new-instance v3, Lcom/google/android/gms/internal/auth/d;

    invoke-direct {v3, v0, v2, p0}, Lcom/google/android/gms/internal/auth/d;-><init>(Ltlb;Lyab;Lcom/google/android/gms/internal/auth/zzfx;)V

    goto :goto_1

    :cond_2
    sget-object v2, Lljb;->b:Ltlb;

    sget-object v3, Lgbb;->b:Lyab;

    if-eqz v3, :cond_3

    invoke-interface {p0}, Logb;->zza()Lcom/google/android/gms/internal/auth/zzfx;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/auth/d;

    invoke-direct {v0, v2, v3, p0}, Lcom/google/android/gms/internal/auth/d;-><init>(Ltlb;Lyab;Lcom/google/android/gms/internal/auth/zzfx;)V

    move-object v3, v0

    goto :goto_1

    :cond_3
    invoke-static {v4}, Lah;->f(Ljava/lang/String;)V

    return-object v0

    :cond_4
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    invoke-interface {p0}, Logb;->zzc()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v0, v3, :cond_5

    sget v0, Lhib;->a:I

    sget-object v0, Ljfb;->b:Lcfb;

    sget-object v2, Lljb;->c:Lcom/google/android/gms/internal/auth/e;

    sget-object v3, Lgbb;->a:Lcom/google/android/gms/internal/auth/a;

    sget v3, Ljgb;->a:I

    invoke-static {p0, v0, v2}, Lcom/google/android/gms/internal/auth/c;->k(Logb;Ljfb;Ltlb;)Lcom/google/android/gms/internal/auth/c;

    move-result-object v3

    goto :goto_1

    :cond_5
    sget v0, Lhib;->a:I

    sget-object v0, Ljfb;->b:Lcfb;

    sget-object v2, Lljb;->c:Lcom/google/android/gms/internal/auth/e;

    sget v3, Ljgb;->a:I

    invoke-static {p0, v0, v2}, Lcom/google/android/gms/internal/auth/c;->k(Logb;Ljfb;Ltlb;)Lcom/google/android/gms/internal/auth/c;

    move-result-object v3

    goto :goto_1

    :cond_6
    invoke-interface {p0}, Logb;->zzc()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v2, v3, :cond_8

    sget v2, Lhib;->a:I

    sget-object v2, Ljfb;->a:Lteb;

    sget-object v3, Lljb;->b:Ltlb;

    sget-object v5, Lgbb;->b:Lyab;

    if-eqz v5, :cond_7

    sget v0, Ljgb;->a:I

    invoke-static {p0, v2, v3}, Lcom/google/android/gms/internal/auth/c;->k(Logb;Ljfb;Ltlb;)Lcom/google/android/gms/internal/auth/c;

    move-result-object v3

    goto :goto_1

    :cond_7
    invoke-static {v4}, Lah;->f(Ljava/lang/String;)V

    return-object v0

    :cond_8
    sget v0, Lhib;->a:I

    sget-object v0, Ljfb;->a:Lteb;

    sget-object v2, Lljb;->b:Ltlb;

    sget v3, Ljgb;->a:I

    invoke-static {p0, v0, v2}, Lcom/google/android/gms/internal/auth/c;->k(Logb;Ljfb;Ltlb;)Lcom/google/android/gms/internal/auth/c;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcjb;

    if-nez p0, :cond_9

    return-object v3

    :cond_9
    return-object p0

    :cond_a
    return-object v2

    :cond_b
    const-string p0, "messageType"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    return-object v0
.end method
