.class public final Loi2;
.super Lu13;
.source "SourceFile"


# static fields
.field public static final d:Loi2;


# instance fields
.field public final c:Lx22;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Loi2;

    invoke-direct {v0}, Loi2;-><init>()V

    sput-object v0, Loi2;->d:Loi2;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    sget v1, Lxo8;->c:I

    sget v2, Lxo8;->d:I

    sget-wide v3, Lxo8;->e:J

    sget-object v5, Lxo8;->a:Ljava/lang/String;

    invoke-direct {p0}, Lu13;-><init>()V

    new-instance v0, Lx22;

    invoke-direct/range {v0 .. v5}, Lx22;-><init>(IIJLjava/lang/String;)V

    iput-object v0, p0, Loi2;->c:Lx22;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Dispatchers.Default cannot be closed"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final dispatch(Lo22;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Loi2;->c:Lx22;

    const/4 p1, 0x6

    invoke-static {p0, p2, p1}, Lx22;->o(Lx22;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public final dispatchYield(Lo22;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Loi2;->c:Lx22;

    const/4 p1, 0x2

    invoke-static {p0, p2, p1}, Lx22;->o(Lx22;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public final k0()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Loi2;->c:Lx22;

    return-object p0
.end method

.method public final limitedParallelism(ILjava/lang/String;)Lr22;
    .locals 1

    invoke-static {p1}, Lzd3;->b(I)V

    sget v0, Lxo8;->c:I

    if-lt p1, v0, :cond_1

    if-eqz p2, :cond_0

    new-instance p1, Lwh5;

    invoke-direct {p1, p0, p2}, Lwh5;-><init>(Lr22;Ljava/lang/String;)V

    return-object p1

    :cond_0
    return-object p0

    :cond_1
    invoke-super {p0, p1, p2}, Lr22;->limitedParallelism(ILjava/lang/String;)Lr22;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.Default"

    return-object p0
.end method
