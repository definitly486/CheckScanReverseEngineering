.class public Ll05;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;
.implements Lrxa;


# static fields
.field public static final synthetic b:Ll05;

.field public static final synthetic c:Ll05;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ll05;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ll05;->b:Ll05;

    new-instance v0, Ll05;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ll05;->c:Ll05;

    return-void
.end method

.method public static a(Ljava/util/Map;Lgf0;)Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Le05;

    if-eqz v0, :cond_0

    check-cast p0, Le05;

    invoke-interface {p0}, Le05;->i()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0, p1}, Ll05;->a(Ljava/util/Map;Lgf0;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lf05;

    invoke-direct {v0, p0, p1}, Lf05;-><init>(Ljava/util/Map;Lgf0;)V

    return-object v0
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/location/zzec;

    sget-object p0, Lcom/google/android/gms/internal/location/zzcg;->a:Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-static {}, Lcom/google/android/gms/location/zzab;->zza()Lcom/google/android/gms/location/zzac;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/location/zzec;->zzp(Lcom/google/android/gms/location/zzac;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method public synthetic zza()Ljava/lang/Object;
    .locals 2

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zzB()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
