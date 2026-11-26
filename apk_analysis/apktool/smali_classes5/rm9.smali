.class public final Lrm9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0b;
.implements Lrxa;


# static fields
.field public static final b:[B

.field public static final synthetic c:Lrm9;

.field public static final synthetic d:Lrm9;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lrm9;->b:[B

    new-instance v0, Lrm9;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrm9;->c:Lrm9;

    new-instance v0, Lrm9;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrm9;->d:Lrm9;

    return-void
.end method

.method public static b()Ljd8;
    .locals 2

    new-instance v0, Ljd8;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnb4;-><init>(Lmb4;)V

    return-object v0
.end method

.method public static final c(Lbm3;Le02;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lid8;

    invoke-interface {p1}, Le02;->getContext()Lo22;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Laf7;-><init>(Le02;Lo22;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v0, p0}, Lcn1;->d(Laf7;ZLjava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    return-object p0
.end method


# virtual methods
.method public synthetic a(Lcom/google/android/gms/internal/location/zzec;Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;ZLcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-virtual {p1, p2, p3, p4}, Lcom/google/android/gms/internal/location/zzec;->zzv(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;ZLcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method public synthetic zza()Ljava/lang/Object;
    .locals 2

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zzD()J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
