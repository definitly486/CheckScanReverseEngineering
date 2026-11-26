.class public final Lw37;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw37$a;,
        Lw37$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public final b:Lch8;

.field public final c:Lez4$j;

.field public final d:La98;

.field public e:J

.field public f:Z

.field public g:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lez4$j;Lch8;Ljava/util/concurrent/ScheduledExecutorService;La98;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw37;->c:Lez4$j;

    iput-object p2, p0, Lw37;->b:Lch8;

    iput-object p3, p0, Lw37;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p4, p0, Lw37;->d:La98;

    invoke-virtual {p4}, La98;->b()V

    return-void
.end method
