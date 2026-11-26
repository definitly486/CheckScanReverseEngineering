.class public final Lwn5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhk0;
.implements Lrxa;


# static fields
.field public static final synthetic c:Lwn5;

.field public static final synthetic d:Lwn5;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lwn5;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lwn5;-><init>(I)V

    sput-object v0, Lwn5;->c:Lwn5;

    new-instance v0, Lwn5;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lwn5;-><init>(I)V

    sput-object v0, Lwn5;->d:Lwn5;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lwn5;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lhk0;
    .locals 0

    return-object p0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(Z)Lhk0;
    .locals 0

    return-object p0
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic zza()Ljava/lang/Object;
    .locals 2

    iget p0, p0, Lwn5;->b:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaif;->zzc()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zzG()J

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
