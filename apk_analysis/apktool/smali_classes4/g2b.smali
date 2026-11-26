.class public final enum Lg2b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# static fields
.field public static final enum zza:Lg2b;

.field private static final synthetic zzb:[Lg2b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg2b;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg2b;->zza:Lg2b;

    filled-new-array {v0}, [Lg2b;

    move-result-object v0

    sput-object v0, Lg2b;->zzb:[Lg2b;

    return-void
.end method

.method public static values()[Lg2b;
    .locals 1

    sget-object v0, Lg2b;->zzb:[Lg2b;

    invoke-virtual {v0}, [Lg2b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg2b;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 1

    const/4 p0, 0x0

    const-string v0, "no calls to next() since the last call to remove()"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaz;->zzf(ZLjava/lang/Object;)V

    return-void
.end method
