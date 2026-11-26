.class public final Lgr3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrxa;


# static fields
.field public static final synthetic c:Lgr3;

.field public static final synthetic d:Lgr3;

.field public static final synthetic e:Lgr3;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lgr3;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgr3;-><init>(I)V

    sput-object v0, Lgr3;->c:Lgr3;

    new-instance v0, Lgr3;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lgr3;-><init>(I)V

    sput-object v0, Lgr3;->d:Lgr3;

    new-instance v0, Lgr3;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lgr3;-><init>(I)V

    sput-object v0, Lgr3;->e:Lgr3;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lgr3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lze7;)Landroid/app/Application;
    .locals 2

    :try_start_0
    const-class v0, Landroid/app/Application;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Application;
    :try_end_0
    .catch Lorg/koin/core/error/NoDefinitionFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lib5;

    const-string v0, "Can\'t resolve Application instance. Please use androidContext() function in your KoinApplication configuration."

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Lze7;)Landroid/content/Context;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;
    :try_end_0
    .catch Lorg/koin/core/error/NoDefinitionFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lib5;

    const-string v0, "Can\'t resolve Context instance. Please use androidContext() function in your KoinApplication configuration."

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public synthetic zza()Ljava/lang/Object;
    .locals 2

    iget p0, p0, Lgr3;->b:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zzat()J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zzh()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzahe;->zzb()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
