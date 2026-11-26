.class public final Lpc6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lic6;
.implements Lcom/google/android/gms/tasks/SuccessContinuation;
.implements Lrxa;
.implements Lcom/google/android/gms/internal/common/zzd;


# static fields
.field public static final synthetic b:Lpc6;

.field public static final synthetic c:Lpc6;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lpc6;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lpc6;->b:Lpc6;

    new-instance v0, Lpc6;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lpc6;->c:Lpc6;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    sget p0, Lcom/google/android/gms/cloudmessaging/Rpc;->h:I

    if-eqz p1, :cond_0

    const-string p0, "google.messenger"

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public synthetic zza()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzahh;->zzb()Z

    move-result p0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0
.end method
