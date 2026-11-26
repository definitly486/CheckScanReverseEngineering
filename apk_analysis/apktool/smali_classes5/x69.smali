.class public final Lx69;
.super Lr22;
.source "SourceFile"


# static fields
.field public static final c:Lx69;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx69;

    invoke-direct {v0}, Lr22;-><init>()V

    sput-object v0, Lx69;->c:Lx69;

    return-void
.end method


# virtual methods
.method public final dispatch(Lo22;Ljava/lang/Runnable;)V
    .locals 1

    sget-object p0, Loi2;->d:Loi2;

    const/4 p1, 0x1

    iget-object p0, p0, Loi2;->c:Lx22;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lx22;->n(Ljava/lang/Runnable;ZZ)V

    return-void
.end method

.method public final dispatchYield(Lo22;Ljava/lang/Runnable;)V
    .locals 0

    sget-object p0, Loi2;->d:Loi2;

    const/4 p1, 0x1

    iget-object p0, p0, Loi2;->c:Lx22;

    invoke-virtual {p0, p2, p1, p1}, Lx22;->n(Ljava/lang/Runnable;ZZ)V

    return-void
.end method

.method public final limitedParallelism(ILjava/lang/String;)Lr22;
    .locals 1

    invoke-static {p1}, Lzd3;->b(I)V

    sget v0, Lxo8;->d:I

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

    const-string p0, "Dispatchers.IO"

    return-object p0
.end method
