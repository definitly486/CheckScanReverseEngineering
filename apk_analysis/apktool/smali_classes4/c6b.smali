.class public final Lc6b;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;
.source "SourceFile"


# instance fields
.field public final transient d:[Ljava/lang/Object;

.field public final transient e:I

.field public final transient f:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;-><init>()V

    iput-object p1, p0, Lc6b;->d:[Ljava/lang/Object;

    iput p2, p0, Lc6b;->e:I

    const/4 p1, 0x1

    iput p1, p0, Lc6b;->f:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lc6b;->f:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaz;->zza(IILjava/lang/String;)I

    add-int/2addr p1, p1

    iget v0, p0, Lc6b;->e:I

    add-int/2addr p1, v0

    iget-object p0, p0, Lc6b;->d:[Ljava/lang/Object;

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lc6b;->f:I

    return p0
.end method
