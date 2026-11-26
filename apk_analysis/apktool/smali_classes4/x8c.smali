.class public final Lx8c;
.super Lh1c;
.source "SourceFile"


# static fields
.field public static final b:Lx8c;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx8c;

    invoke-direct {v0}, Lx8c;-><init>()V

    sput-object v0, Lx8c;->b:Lx8c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/common/zzp;-><init>()V

    const-string v0, "CharMatcher.none()"

    iput-object v0, p0, Lx8c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lx8c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final zza(C)Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
