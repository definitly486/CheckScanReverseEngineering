.class public final Llcc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lmcc;

.field public final synthetic c:Lxr4;

.field public final synthetic d:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzqi;Lmcc;Lxr4;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Llcc;->b:Lmcc;

    iput-object p3, p0, Llcc;->c:Lxr4;

    iput-wide p4, p0, Llcc;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Llcc;->b:Lmcc;

    invoke-virtual {v0}, Lmcc;->run()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Llcc;->c:Lxr4;

    iget-wide v2, p0, Llcc;->d:J

    invoke-interface {v1, p0, v2, v3, v0}, Lxr4;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lnd5$b$a;

    move-result-object p0

    new-instance v0, Lsxb;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lsxb;-><init>(Ljava/lang/Object;I)V

    sget-object v1, Ljn2;->INSTANCE:Ljn2;

    invoke-virtual {p0, v0, v1}, Lij3;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
