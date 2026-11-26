.class public final Lcom/google/android/gms/internal/measurement/zzzm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lqic;

.field public static final e:Lric;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;

.field public c:Lcom/google/android/gms/internal/measurement/zzzo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqic;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzm;->d:Lqic;

    new-instance v0, Lric;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzm;->e:Lric;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzm;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzm;->b:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzm;->c:Lcom/google/android/gms/internal/measurement/zzzo;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/zzzo;)Lcom/google/android/gms/internal/measurement/zzzm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzm;->c:Lcom/google/android/gms/internal/measurement/zzzo;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/measurement/zzzq;
    .locals 1

    new-instance v0, Lsic;

    invoke-direct {v0, p0}, Lsic;-><init>(Lcom/google/android/gms/internal/measurement/zzzm;)V

    return-object v0
.end method
