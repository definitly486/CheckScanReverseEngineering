.class public final Luv4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrxa;


# static fields
.field public static final synthetic c:Luv4;

.field public static final synthetic d:Luv4;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Luv4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Luv4;-><init>(I)V

    sput-object v0, Luv4;->c:Luv4;

    new-instance v0, Luv4;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Luv4;-><init>(I)V

    sput-object v0, Luv4;->d:Luv4;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Luv4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ltv4;
    .locals 1

    sget-object v0, Lc17;->e:Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    new-instance v0, Lc17;

    invoke-direct {v0}, Lc17;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lnt;

    invoke-direct {v0}, Lnt;-><init>()V

    return-object v0
.end method


# virtual methods
.method public synthetic zza()Ljava/lang/Object;
    .locals 2

    iget p0, p0, Luv4;->b:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zzau()J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzahe;->zzc()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
