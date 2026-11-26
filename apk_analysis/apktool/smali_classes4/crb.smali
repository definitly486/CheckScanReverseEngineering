.class public final Lcrb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzadz;


# static fields
.field public static final a:Lcrb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcrb;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcrb;->a:Lcrb;

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method
