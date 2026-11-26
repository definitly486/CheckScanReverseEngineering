.class public final Lcom/google/android/gms/internal/measurement/j;
.super Lcom/google/android/gms/internal/measurement/zzyq;
.source "SourceFile"


# static fields
.field public static final b:Llhc;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llhc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzyf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/j;->b:Llhc;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyq;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v1, 0x7fffffff

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/j;->a:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/j;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method
