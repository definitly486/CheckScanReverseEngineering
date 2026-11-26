.class public final Ltc9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrxa;


# static fields
.field public static final synthetic b:Ltc9;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ltc9;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltc9;->b:Ltc9;

    return-void
.end method

.method public static a(Ljava/lang/String;ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/google/common/base/VerifyException;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p2}, Lma8;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public synthetic zza()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zzay()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
