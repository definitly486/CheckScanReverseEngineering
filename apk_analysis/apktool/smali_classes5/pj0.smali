.class public abstract Lpj0;
.super Lzn5;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lzn5;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lzn5;
    .locals 0

    iget-object p0, p0, Lzn5;->a:Lzn5;

    check-cast p0, Lpj0;

    return-object p0
.end method

.method public final d(Lzn5;)V
    .locals 1

    instance-of v0, p1, Lpj0;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lzn5;->a:Lzn5;

    return-void

    :cond_0
    const-string p0, "Parent of block must also be block (can not be inline)"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method
