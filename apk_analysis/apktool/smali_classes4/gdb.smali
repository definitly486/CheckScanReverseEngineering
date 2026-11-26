.class public final Lgdb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;


# static fields
.field public static final a:Lgdb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgdb;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lgdb;->a:Lgdb;

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .locals 0

    invoke-static {p1}, Lh03;->b(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
