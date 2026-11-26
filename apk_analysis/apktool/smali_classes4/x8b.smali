.class public final Lx8b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lx8b;

.field public static final c:Lx8b;


# instance fields
.field public final a:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/google/android/gms/internal/play_billing/zzo;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Lx8b;->c:Lx8b;

    sput-object v1, Lx8b;->b:Lx8b;

    return-void

    :cond_0
    new-instance v0, Lx8b;

    invoke-direct {v0, v1}, Lx8b;-><init>(Ljava/util/concurrent/CancellationException;)V

    sput-object v0, Lx8b;->c:Lx8b;

    new-instance v0, Lx8b;

    invoke-direct {v0, v1}, Lx8b;-><init>(Ljava/util/concurrent/CancellationException;)V

    sput-object v0, Lx8b;->b:Lx8b;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx8b;->a:Ljava/lang/Throwable;

    return-void
.end method
