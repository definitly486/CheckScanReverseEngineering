.class public final Lsu0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lq91;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq91<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:I

.field public static final c:I

.field public static final d:Lbh8;

.field public static final e:Lbh8;

.field public static final f:Lbh8;

.field public static final g:Lbh8;

.field public static final h:Lbh8;

.field public static final i:Lbh8;

.field public static final j:Lbh8;

.field public static final k:Lbh8;

.field public static final l:Lbh8;

.field public static final m:Lbh8;

.field public static final n:Lbh8;

.field public static final o:Lbh8;

.field public static final p:Lbh8;

.field public static final q:Lbh8;

.field public static final r:Lbh8;

.field public static final s:Lbh8;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lq91;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lq91;-><init>(JLq91;Lmu0;I)V

    sput-object v0, Lsu0;->a:Lq91;

    const/16 v0, 0x20

    const/16 v1, 0xc

    const-string v2, "kotlinx.coroutines.bufferedChannel.segmentSize"

    invoke-static {v0, v1, v2}, Lr96;->e(IILjava/lang/String;)I

    move-result v0

    sput v0, Lsu0;->b:I

    const-string v0, "kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations"

    const/16 v2, 0x2710

    invoke-static {v2, v1, v0}, Lr96;->e(IILjava/lang/String;)I

    move-result v0

    sput v0, Lsu0;->c:I

    new-instance v0, Lbh8;

    const-string v1, "BUFFERED"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsu0;->d:Lbh8;

    new-instance v0, Lbh8;

    const-string v1, "SHOULD_BUFFER"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsu0;->e:Lbh8;

    new-instance v0, Lbh8;

    const-string v1, "S_RESUMING_BY_RCV"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsu0;->f:Lbh8;

    new-instance v0, Lbh8;

    const-string v1, "RESUMING_BY_EB"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsu0;->g:Lbh8;

    new-instance v0, Lbh8;

    const-string v1, "POISONED"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsu0;->h:Lbh8;

    new-instance v0, Lbh8;

    const-string v1, "DONE_RCV"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsu0;->i:Lbh8;

    new-instance v0, Lbh8;

    const-string v1, "INTERRUPTED_SEND"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsu0;->j:Lbh8;

    new-instance v0, Lbh8;

    const-string v1, "INTERRUPTED_RCV"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsu0;->k:Lbh8;

    new-instance v0, Lbh8;

    const-string v1, "CHANNEL_CLOSED"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsu0;->l:Lbh8;

    new-instance v0, Lbh8;

    const-string v1, "SUSPEND"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsu0;->m:Lbh8;

    new-instance v0, Lbh8;

    const-string v1, "SUSPEND_NO_WAITER"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsu0;->n:Lbh8;

    new-instance v0, Lbh8;

    const-string v1, "FAILED"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsu0;->o:Lbh8;

    new-instance v0, Lbh8;

    const-string v1, "NO_RECEIVE_RESULT"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsu0;->p:Lbh8;

    new-instance v0, Lbh8;

    const-string v1, "CLOSE_HANDLER_CLOSED"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsu0;->q:Lbh8;

    new-instance v0, Lbh8;

    const-string v1, "CLOSE_HANDLER_INVOKED"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsu0;->r:Lbh8;

    new-instance v0, Lbh8;

    const-string v1, "NO_CLOSE_CAUSE"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsu0;->s:Lbh8;

    return-void
.end method
