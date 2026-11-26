.class public final Lcom/google/android/gms/internal/measurement/l;
.super Lcom/google/android/gms/internal/measurement/zzyq;
.source "SourceFile"


# static fields
.field public static final b:Lhic;

.field public static final c:Liic;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lhic;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzyf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/l;->b:Lhic;

    new-instance v0, Liic;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/l;->c:Liic;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyq;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/l;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/l;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method
