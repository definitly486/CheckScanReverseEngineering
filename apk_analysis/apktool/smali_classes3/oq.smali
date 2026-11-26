.class public final Loq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyo4;
.implements Lrxa;


# static fields
.field public static final synthetic c:Loq;

.field public static final synthetic d:Loq;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Loq;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Loq;-><init>(I)V

    sput-object v0, Loq;->c:Loq;

    new-instance v0, Loq;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loq;-><init>(I)V

    sput-object v0, Loq;->d:Loq;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Loq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lup4;)V
    .locals 0

    invoke-interface {p1}, Lup4;->onStart()V

    return-void
.end method

.method public b(Lup4;)V
    .locals 0

    return-void
.end method

.method public synthetic zza()Ljava/lang/Object;
    .locals 1

    iget p0, p0, Loq;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaiu;->zza()Z

    move-result p0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zzF()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
