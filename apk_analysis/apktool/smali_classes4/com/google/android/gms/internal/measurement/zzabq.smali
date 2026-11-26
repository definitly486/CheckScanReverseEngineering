.class public final Lcom/google/android/gms/internal/measurement/zzabq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Lupa;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.google.common.flogger.util.StackWalkerStackGetter"

    const-string v1, "com.google.common.flogger.util.JavaLangAccessStackGetter"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzabq;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzabq;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lupa;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lupa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    :catchall_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Lvpa;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    :goto_1
    sput-object v2, Lcom/google/android/gms/internal/measurement/zzabq;->b:Lupa;

    return-void
.end method

.method public static zza(Ljava/lang/Class;I)Ljava/lang/StackTraceElement;
    .locals 0

    const-string p1, "target"

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzabr;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzabq;->b:Lupa;

    invoke-interface {p1, p0}, Lupa;->a(Ljava/lang/Class;)Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Ljava/lang/Class;II)[Ljava/lang/StackTraceElement;
    .locals 0

    if-gtz p1, :cond_1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "invalid maximum depth: 0"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzabq;->b:Lupa;

    invoke-interface {p2, p0, p1}, Lupa;->b(Ljava/lang/Class;I)[Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0
.end method
