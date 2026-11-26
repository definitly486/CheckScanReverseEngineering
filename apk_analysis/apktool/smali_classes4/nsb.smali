.class public final Lnsb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzadz;


# static fields
.field public static final a:Lnsb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnsb;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnsb;->a:Lnsb;

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzip;->zza(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
