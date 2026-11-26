.class public final Lp72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrxa;
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# static fields
.field public static final c:Lba8;

.field public static final d:Lba8;

.field public static final e:Lba8;

.field public static final f:Lba8;

.field public static final g:Lba8;

.field public static final h:Lba8;

.field public static final i:Lba8;

.field public static final synthetic j:Lp72;

.field public static final synthetic k:Lp72;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lba8;

    const-string v1, "default_ok_http"

    invoke-direct {v0, v1}, Lba8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lp72;->c:Lba8;

    new-instance v0, Lba8;

    const-string v1, "authorized_retrofit"

    invoke-direct {v0, v1}, Lba8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lp72;->d:Lba8;

    new-instance v0, Lba8;

    const-string v1, "bonuses_retrofit"

    invoke-direct {v0, v1}, Lba8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lp72;->e:Lba8;

    new-instance v0, Lba8;

    const-string v1, "plain_retrofit"

    invoke-direct {v0, v1}, Lba8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lp72;->f:Lba8;

    new-instance v0, Lba8;

    const-string v1, "AUTHORISED_DISPOSABLES"

    invoke-direct {v0, v1}, Lba8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lp72;->g:Lba8;

    new-instance v0, Lba8;

    const-string v1, "DISPATCHER_IO"

    invoke-direct {v0, v1}, Lba8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lp72;->h:Lba8;

    new-instance v0, Lba8;

    const-string v1, "extra_interceptors"

    invoke-direct {v0, v1}, Lba8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lp72;->i:Lba8;

    new-instance v0, Lp72;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lp72;-><init>(I)V

    sput-object v0, Lp72;->j:Lp72;

    new-instance v0, Lp72;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lp72;-><init>(I)V

    sput-object v0, Lp72;->k:Lp72;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lp72;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    const-string p0, "OptionalModuleUtils"

    const-string v0, "Failed to check feature availability"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public synthetic zza()Ljava/lang/Object;
    .locals 2

    iget p0, p0, Lp72;->b:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaix;->zza()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zzS()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
