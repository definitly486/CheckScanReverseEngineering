.class public final Laq2;
.super Lm;
.source "SourceFile"


# instance fields
.field public final a:Lzp2;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lzp2;

    invoke-direct {v0}, Lpj0;-><init>()V

    iput-object v0, p0, Laq2;->a:Lzp2;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final c(Lpj0;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final d()Lpj0;
    .locals 0

    iget-object p0, p0, Laq2;->a:Lzp2;

    return-object p0
.end method

.method public final e(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public final f(Ldq2;)Lrj0;
    .locals 0

    iget p0, p1, Ldq2;->b:I

    invoke-static {p0}, Lrj0;->a(I)Lrj0;

    move-result-object p0

    return-object p0
.end method
