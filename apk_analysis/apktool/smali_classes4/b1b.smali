.class public final Lb1b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;


# static fields
.field public static final a:Lb1b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb1b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lb1b;->a:Lb1b;

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcn;->zza(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
