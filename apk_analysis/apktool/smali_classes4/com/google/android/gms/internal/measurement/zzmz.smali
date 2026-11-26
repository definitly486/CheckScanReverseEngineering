.class public final Lcom/google/android/gms/internal/measurement/zzmz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/common/io/BaseEncoding$c;

.field public final b:Lkd8;

.field public final c:Lkd8;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzacr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p3, Lcom/google/common/io/BaseEncoding;->b:Lcom/google/common/io/BaseEncoding$c;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzmz;->a:Lcom/google/common/io/BaseEncoding$c;

    new-instance p3, Lg6c;

    invoke-direct {p3, p0, p1}, Lg6c;-><init>(Lcom/google/android/gms/internal/measurement/zzmz;Lcom/google/android/gms/internal/measurement/zzacr;)V

    invoke-static {p3}, Lld8;->a(Lkd8;)Lkd8;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzmz;->b:Lkd8;

    new-instance p1, Ld6c;

    invoke-direct {p1, p0, p2}, Ld6c;-><init>(Lcom/google/android/gms/internal/measurement/zzmz;Ljava/lang/String;)V

    invoke-static {p1}, Lld8;->a(Lkd8;)Lkd8;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzmz;->c:Lkd8;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/io/File;
    .locals 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzmz;->b:Lkd8;

    invoke-interface {v1}, Lkd8;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzmz;->c:Lkd8;

    invoke-interface {p0}, Lkd8;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "/"

    const-string v4, ".pb"

    invoke-static {v3, v1, v2, p0, v4}, Ldg;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
