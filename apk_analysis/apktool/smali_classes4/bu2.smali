.class public Lbu2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzci;
.implements Lrxa;
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzd;


# static fields
.field public static final synthetic b:Lbu2;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbu2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbu2;->b:Lbu2;

    return-void
.end method


# virtual methods
.method public synthetic zza()Ljava/lang/Object;
    .locals 2

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zzs()J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
