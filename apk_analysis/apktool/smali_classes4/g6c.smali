.class public final synthetic Lg6c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkd8;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/measurement/zzmz;

.field public final synthetic c:Lcom/google/android/gms/internal/measurement/zzacr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzmz;Lcom/google/android/gms/internal/measurement/zzacr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg6c;->b:Lcom/google/android/gms/internal/measurement/zzmz;

    iput-object p2, p0, Lg6c;->c:Lcom/google/android/gms/internal/measurement/zzacr;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg6c;->b:Lcom/google/android/gms/internal/measurement/zzmz;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzmz;->a:Lcom/google/common/io/BaseEncoding$c;

    iget-object p0, p0, Lg6c;->c:Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacr;->zzm()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/common/io/BaseEncoding;->c([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
