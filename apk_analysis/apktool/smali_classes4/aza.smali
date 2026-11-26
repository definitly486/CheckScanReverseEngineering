.class public final Laza;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfn;


# static fields
.field private static final zzb:Laza;


# instance fields
.field private zzA:B

.field private zzd:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

.field private zzg:Ljava/lang/String;

.field private zzh:Lsqa;

.field private zzi:I

.field private zzj:Lhbc;

.field private zzk:Lqfc;

.field private zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;

.field private zzm:Llta;

.field private zzn:Lmua;

.field private zzo:Lzta;

.field private zzp:Loic;

.field private zzq:Lm6c;

.field private zzr:Lxcc;

.field private zzs:Ljub;

.field private zzt:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

.field private zzu:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

.field private zzv:Ljava/lang/String;

.field private zzw:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

.field private zzx:Z

.field private zzy:D

.field private zzz:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Laza;

    invoke-direct {v0}, Laza;-><init>()V

    sput-object v0, Laza;->zzb:Laza;

    const-class v1, Laza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->f(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Laza;->zzA:B

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    iput-object v0, p0, Laza;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    const-string v1, ""

    iput-object v1, p0, Laza;->zzg:Ljava/lang/String;

    sget-object v2, Lqgb;->e:Lqgb;

    iput-object v2, p0, Laza;->zzt:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    sget-object v3, Lhab;->e:Lhab;

    iput-object v3, p0, Laza;->zzu:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

    iput-object v1, p0, Laza;->zzv:Ljava/lang/String;

    iput-object v2, p0, Laza;->zzw:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    const/4 v1, 0x1

    iput-boolean v1, p0, Laza;->zzx:Z

    iput-object v0, p0, Laza;->zzz:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    return-void
.end method

.method public static x(Laza;ILfsa;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Laza;->zzt:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzc()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v1, v1

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    iput-object v0, p0, Laza;->zzt:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    :cond_1
    iget-object p0, p0, Laza;->zzt:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 0

    iget p0, p0, Laza;->zzd:I

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final B()Z
    .locals 0

    iget p0, p0, Laza;->zzd:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final C()Z
    .locals 0

    iget p0, p0, Laza;->zzd:I

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final D()Z
    .locals 0

    iget p0, p0, Laza;->zzd:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final E()Z
    .locals 0

    iget p0, p0, Laza;->zzd:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final F()Z
    .locals 0

    iget p0, p0, Laza;->zzd:I

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final G()Z
    .locals 0

    iget p0, p0, Laza;->zzd:I

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final H()I
    .locals 0

    iget p0, p0, Laza;->zze:I

    invoke-static {p0}, Liw9;->a(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public final j(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, -0x1

    if-eqz v1, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-byte v1, v0, Laza;->zzA:B

    const/4 v0, 0x0

    return-object v0

    :cond_1
    sget-object v0, Laza;->zzb:Laza;

    return-object v0

    :cond_2
    new-instance v0, Lawa;

    sget-object v1, Laza;->zzb:Laza;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)V

    return-object v0

    :cond_3
    new-instance v0, Laza;

    invoke-direct {v0}, Laza;-><init>()V

    return-object v0

    :cond_4
    const-string v26, "zzy"

    const-string v27, "zzh"

    const-string v1, "zzd"

    const-string v2, "zze"

    sget-object v3, Lv2b;->a:Lv2b;

    const-string v4, "zzf"

    const-string v5, "zzg"

    const-string v6, "zzi"

    sget-object v7, Lgdb;->a:Lgdb;

    const-string v8, "zzj"

    const-string v9, "zzk"

    const-string v10, "zzl"

    const-string v11, "zzm"

    const-string v12, "zzn"

    const-string v13, "zzo"

    const-string v14, "zzt"

    const-class v15, Lfsa;

    const-string v16, "zzv"

    const-string v17, "zzw"

    const-string v19, "zzz"

    const-string v20, "zzp"

    const-string v21, "zzq"

    const-string v22, "zzr"

    const-string v23, "zzu"

    const-string v24, "zzs"

    const-string v25, "zzx"

    move-object/from16 v18, v15

    filled-new-array/range {v1 .. v27}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Laza;->zzb:Laza;

    new-instance v2, Ltgb;

    const-string v3, "\u0004\u0016\u0000\u0001\u0001\u0017\u0016\u0000\u0003\u000b\u0001\u1d0c\u0000\u0002\u150a\u0001\u0003\u1508\u0002\u0004\u1d0c\u0004\u0005\u1409\u0005\u0006\u1009\u0006\u0007\u1009\u0007\u0008\u1409\u0008\t\u1409\t\n\u1409\n\u000b\u041b\u000c\u1008\u000f\r\u041b\u000e\u100a\u0012\u000f\u1409\u000b\u0010\u1009\u000c\u0011\u1009\r\u0012\u0016\u0013\u1009\u000e\u0014\u1007\u0010\u0015\u1000\u0011\u0017\u1009\u0003"

    invoke-direct {v2, v1, v3, v0}, Ltgb;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_5
    iget-byte v0, v0, Laza;->zzA:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public final k()I
    .locals 0

    iget p0, p0, Laza;->zzi:I

    invoke-static {p0}, Lh03;->b(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public final l()I
    .locals 0

    iget-object p0, p0, Laza;->zzt:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final m()Lm6c;
    .locals 0

    iget-object p0, p0, Laza;->zzq:Lm6c;

    if-nez p0, :cond_0

    invoke-static {}, Lm6c;->m()Lm6c;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final n()Lhbc;
    .locals 0

    iget-object p0, p0, Laza;->zzj:Lhbc;

    if-nez p0, :cond_0

    invoke-static {}, Lhbc;->l()Lhbc;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final o()Lxcc;
    .locals 0

    iget-object p0, p0, Laza;->zzr:Lxcc;

    if-nez p0, :cond_0

    invoke-static {}, Lxcc;->k()Lxcc;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final p()Lqfc;
    .locals 0

    iget-object p0, p0, Laza;->zzk:Lqfc;

    if-nez p0, :cond_0

    invoke-static {}, Lqfc;->k()Lqfc;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final q()Loic;
    .locals 0

    iget-object p0, p0, Laza;->zzp:Loic;

    if-nez p0, :cond_0

    invoke-static {}, Loic;->m()Loic;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final r()Llta;
    .locals 0

    iget-object p0, p0, Laza;->zzm:Llta;

    if-nez p0, :cond_0

    invoke-static {}, Llta;->k()Llta;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final s()Lzta;
    .locals 0

    iget-object p0, p0, Laza;->zzo:Lzta;

    if-nez p0, :cond_0

    invoke-static {}, Lzta;->k()Lzta;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final t()Lmua;
    .locals 0

    iget-object p0, p0, Laza;->zzn:Lmua;

    if-nez p0, :cond_0

    invoke-static {}, Lmua;->k()Lmua;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final u()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;
    .locals 0

    iget-object p0, p0, Laza;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    return-object p0
.end method

.method public final v()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Laza;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public final w()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;
    .locals 0

    iget-object p0, p0, Laza;->zzt:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    return-object p0
.end method

.method public final y()Z
    .locals 0

    iget p0, p0, Laza;->zzd:I

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final z()Z
    .locals 0

    iget p0, p0, Laza;->zzd:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;
    .locals 0

    iget-object p0, p0, Laza;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;

    move-result-object p0

    :cond_0
    return-object p0
.end method
