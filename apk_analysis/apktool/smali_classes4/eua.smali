.class public final enum Leua;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zza:Leua;

.field public static final enum zzb:Leua;

.field public static final enum zzc:Leua;

.field public static final enum zzd:Leua;

.field public static final enum zze:Leua;

.field public static final enum zzf:Leua;

.field public static final enum zzg:Leua;

.field public static final enum zzh:Leua;

.field public static final enum zzi:Leua;

.field public static final enum zzj:Leua;

.field private static final synthetic zzl:[Leua;


# instance fields
.field private final zzk:C


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Leua;

    const/4 v1, 0x0

    const/16 v2, 0x30

    const-string v3, "UNSET"

    invoke-direct {v0, v3, v1, v2}, Leua;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Leua;->zza:Leua;

    new-instance v1, Leua;

    const/4 v2, 0x1

    const/16 v3, 0x31

    const-string v4, "REMOTE_DEFAULT"

    invoke-direct {v1, v4, v2, v3}, Leua;-><init>(Ljava/lang/String;IC)V

    sput-object v1, Leua;->zzb:Leua;

    new-instance v2, Leua;

    const/4 v3, 0x2

    const/16 v4, 0x32

    const-string v5, "REMOTE_DELEGATION"

    invoke-direct {v2, v5, v3, v4}, Leua;-><init>(Ljava/lang/String;IC)V

    sput-object v2, Leua;->zzc:Leua;

    new-instance v3, Leua;

    const/4 v4, 0x3

    const/16 v5, 0x33

    const-string v6, "MANIFEST"

    invoke-direct {v3, v6, v4, v5}, Leua;-><init>(Ljava/lang/String;IC)V

    sput-object v3, Leua;->zzd:Leua;

    new-instance v4, Leua;

    const/4 v5, 0x4

    const/16 v6, 0x34

    const-string v7, "INITIALIZATION"

    invoke-direct {v4, v7, v5, v6}, Leua;-><init>(Ljava/lang/String;IC)V

    sput-object v4, Leua;->zze:Leua;

    new-instance v5, Leua;

    const/4 v6, 0x5

    const/16 v7, 0x35

    const-string v8, "API"

    invoke-direct {v5, v8, v6, v7}, Leua;-><init>(Ljava/lang/String;IC)V

    sput-object v5, Leua;->zzf:Leua;

    new-instance v6, Leua;

    const/4 v7, 0x6

    const/16 v8, 0x36

    const-string v9, "CHILD_ACCOUNT"

    invoke-direct {v6, v9, v7, v8}, Leua;-><init>(Ljava/lang/String;IC)V

    sput-object v6, Leua;->zzg:Leua;

    new-instance v7, Leua;

    const/4 v8, 0x7

    const/16 v9, 0x37

    const-string v10, "TCF"

    invoke-direct {v7, v10, v8, v9}, Leua;-><init>(Ljava/lang/String;IC)V

    sput-object v7, Leua;->zzh:Leua;

    new-instance v8, Leua;

    const/16 v9, 0x8

    const/16 v10, 0x38

    const-string v11, "REMOTE_ENFORCED_DEFAULT"

    invoke-direct {v8, v11, v9, v10}, Leua;-><init>(Ljava/lang/String;IC)V

    sput-object v8, Leua;->zzi:Leua;

    new-instance v9, Leua;

    const/16 v10, 0x9

    const/16 v11, 0x39

    const-string v12, "FAILSAFE"

    invoke-direct {v9, v12, v10, v11}, Leua;-><init>(Ljava/lang/String;IC)V

    sput-object v9, Leua;->zzj:Leua;

    filled-new-array/range {v0 .. v9}, [Leua;

    move-result-object v0

    sput-object v0, Leua;->zzl:[Leua;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IC)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-char p3, p0, Leua;->zzk:C

    return-void
.end method

.method public static a(C)Leua;
    .locals 5

    invoke-static {}, Leua;->values()[Leua;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-char v4, v3, Leua;->zzk:C

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Leua;->zza:Leua;

    return-object p0
.end method

.method public static values()[Leua;
    .locals 1

    sget-object v0, Leua;->zzl:[Leua;

    invoke-virtual {v0}, [Leua;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leua;

    return-object v0
.end method


# virtual methods
.method public final synthetic d()C
    .locals 0

    iget-char p0, p0, Leua;->zzk:C

    return p0
.end method
