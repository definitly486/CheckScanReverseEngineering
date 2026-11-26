.class public abstract Lcom/google/android/gms/internal/fido/zzbf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lnwa;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lrwa;

    const-string v1, "base64()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-direct {v0, v1, v2}, Lrwa;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lrwa;

    const-string v1, "base64Url()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-direct {v0, v1, v2}, Lrwa;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lywa;

    const-string v1, "base32()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-direct {v0, v1, v2}, Lywa;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lywa;

    const-string v1, "base32Hex()"

    const-string v2, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    invoke-direct {v0, v1, v2}, Lywa;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lnwa;

    invoke-direct {v0}, Lnwa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzbf;->a:Lnwa;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzd()Lcom/google/android/gms/internal/fido/zzbf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/fido/zzbf;->a:Lnwa;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/StringBuilder;[BI)V
.end method

.method public abstract b(I)I
.end method

.method public final zze([BII)Ljava/lang/String;
    .locals 1

    const/4 p2, 0x0

    array-length v0, p1

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/fido/zzam;->zze(III)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/fido/zzbf;->b(I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    :try_start_0
    invoke-virtual {p0, p2, p1, p3}, Lcom/google/android/gms/internal/fido/zzbf;->a(Ljava/lang/StringBuilder;[BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lxg;->d(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method
